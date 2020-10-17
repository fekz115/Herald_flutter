import 'dart:async';

import 'package:built_redux/built_redux.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/material.dart' hide Builder;
import 'package:flutter_built_redux/flutter_built_redux.dart';

typedef TextListener = void Function(String data);
typedef Mapper<S extends Built<S, SB>, SB extends Builder<S, SB>> = String Function(S state);
typedef WidgetBuilder = Widget Function(
    TextEditingController controller, BuildContext context);

class ReduxTextField<S extends Built<S, SB>, SB extends Builder<S, SB>> extends StatefulWidget {
  const ReduxTextField({
    Key key,
    @required this.listener,
    @required this.mapper,
    @required this.builder,
  }) : super(key: key);

  final TextListener listener;
  final Mapper<S, SB> mapper;
  final WidgetBuilder builder;

  @override
  State<StatefulWidget> createState() {
    return _ReduxTextFieldState<S, SB>();
  }
}

class _ReduxTextFieldState<S extends Built<S, SB>, SB extends Builder<S, SB>> extends State<ReduxTextField<S, SB>> {
  TextEditingController _controller;
  StreamSubscription<SubstateChange<String>> _streamSubscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = TextEditingController(
        text: widget.mapper(context
            .dependOnInheritedWidgetOfExactType<ReduxProvider>()
            .store
            .state));
    _controller.addListener(() {
      widget.listener(_controller.text);
    });
    _streamSubscription = context
        .dependOnInheritedWidgetOfExactType<ReduxProvider>()
        .store
        .substateStream<String>((state) => widget.mapper(state))
        .listen((event) {
      if (_controller.text != event.next) {
        _controller.text = event.next;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(_controller, context);
  }

  @override
  void dispose() {
    _streamSubscription.cancel();
    _controller.dispose();
    super.dispose();
  }
}
