import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/material.dart' hide Builder;
import 'package:flutter_built_redux/flutter_built_redux.dart';

typedef ItemBuilder<I> = Widget Function(
    BuildContext context, Animation<double> animation, I item);
typedef Mapper<S, I> = BuiltList<I> Function(S state);

class ReduxList<S extends Built<S, SB>, SB extends Builder<S, SB>, I> extends StatefulWidget {
  const ReduxList({
    Key key,
    @required this.builder,
    @required this.mapper,
    @required this.insertDuration,
    @required this.removeDuration,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.controller,
    this.primary,
    this.physics,
    this.shrinkWrap = false,
    this.padding,
  }) : super(key: key);

  final ItemBuilder<I> builder;
  final Mapper<S, I> mapper;
  final Duration insertDuration;
  final Duration removeDuration;

  final Axis scrollDirection;
  final bool reverse;
  final ScrollController controller;
  final bool primary;
  final ScrollPhysics physics;
  final bool shrinkWrap;
  final EdgeInsetsGeometry padding;

  @override
  State<StatefulWidget> createState() {
    return _ReduxList<S, SB, I>();
  }
}

class _ReduxList<S extends Built<S, SB>, SB extends Builder<S, SB>, I> extends State<ReduxList<S, SB, I>> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  List<I> _items;
  StreamSubscription<SubstateChange<Iterable<I>>> _streamSubscription;

  void _fillWithInitialData() {
    _items = widget
        .mapper(context
            .dependOnInheritedWidgetOfExactType<ReduxProvider>()
            .store
            // ignore: avoid_as
            .state as S)
        .toList();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _fillWithInitialData();
    _streamSubscription = context
        .dependOnInheritedWidgetOfExactType<ReduxProvider>()
        .store
        .substateStream((state) => widget.mapper(state))
        .listen((event) {
      final next = event.next;
      final set1 = _items.toSet();
      final set2 = next.toSet();
      final common = set1.where(set2.contains).toSet();
      final deleted = <int>[];
      final added = <int>[];
      int i = 0;
      final it1 = _items.iterator;
      while (it1.moveNext()) {
        if (!common.contains(it1.current)) {
          deleted.add(i);
        }
        i++;
      }
      i = 0;
      final it2 = next.iterator;
      while (it2.moveNext()) {
        if (!common.contains(it2.current)) {
          added.add(i);
        }
        i++;
      }
      int q = 0;
      for (final element in deleted) {
        final t = _items[element];
        _listKey.currentState.removeItem(
          element - q++,
          (context, animation) => widget.builder(context, animation, t),
          duration: widget.removeDuration,
        );
      }
      _items = next.toList();
      for (final element in added) {
        _listKey.currentState.insertItem(
          element,
          duration: widget.insertDuration,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: _listKey,
      itemBuilder: (context, index, animation) =>
          widget.builder(context, animation, _items[index]),
      initialItemCount: _items.length,
      scrollDirection: widget.scrollDirection,
      reverse: widget.reverse,
      controller: widget.controller,
      primary: widget.primary,
      physics: widget.physics,
      shrinkWrap: widget.shrinkWrap,
      padding: widget.padding,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _streamSubscription.cancel();
  }
}
