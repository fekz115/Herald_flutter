import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_built_redux/flutter_built_redux.dart';

typedef void TextListener(String data);
typedef String Mapper<S>(S state);
typedef Widget Builder(TextEditingController controller, BuildContext context);

class ReduxTextField extends StatefulWidget {
  final TextListener listener;
  final Mapper mapper;
  final Builder builder;

  ReduxTextField({
    @required this.listener,
    @required this.mapper,
    @required this.builder,
  });

  @override
  State<StatefulWidget> createState() {
    return _ReduxTextFieldState();
  }
}

class _ReduxTextFieldState<S> extends State<ReduxTextField> {
  TextEditingController _controller;
  StreamSubscription _streamSubscription;

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
        .substateStream(widget.mapper)
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
