import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

typedef Widget ItemBuilder<I>(
    BuildContext context, Animation<double> animation, I item);
typedef BuiltList<I> Mapper<S, I>(S state);

class ReduxList<S, I> extends StatefulWidget {
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

  ReduxList({
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
  });

  @override
  State<StatefulWidget> createState() {
    return _ReduxList<S, I>();
  }
}

class _ReduxList<S, I> extends State<ReduxList<S, I>> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  List<I> _items;
  StreamSubscription _streamSubscription;

  void _fillWithInitialData() {
    _items = widget
        .mapper(context
            .dependOnInheritedWidgetOfExactType<ReduxProvider>()
            .store
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
        .substateStream((state) => widget.mapper(state as S))
        .listen((event) {
      var next = event.next;
      var set1 = _items.toSet();
      var set2 = next.toSet();
      var common = set1.where((x) => set2.contains(x)).toSet();
      var deleted = [];
      var added = [];
      int i = 0;
      var it1 = _items.iterator;
      while (it1.moveNext()) {
        if (!common.contains(it1.current)) {
          deleted.add(i);
        }
        i++;
      }
      i = 0;
      var it2 = next.iterator;
      while (it2.moveNext()) {
        if (!common.contains(it2.current)) {
          added.add(i);
        }
        i++;
      }
      deleted.forEach((element) {
        var t = _items[element];
        _listKey.currentState.removeItem(
          element,
          (context, animation) => widget.builder(context, animation, t),
          duration: widget.removeDuration,
        );
      });
      _items = next.toList();
      added.forEach((element) {
        _listKey.currentState.insertItem(
          element,
          duration: widget.insertDuration,
        );
      });
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
