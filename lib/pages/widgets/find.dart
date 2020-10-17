import 'package:Herald_flutter/model/find.dart';
import 'package:flutter/material.dart';
import 'package:Herald_flutter/extensions.dart';

class FindWidget extends StatelessWidget {
  const FindWidget({Key key, this.find}) : super(key: key);

  final Find find;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${find.departStation} - ${find.arriveStation}'),
      trailing: Text(find.date.toStringOnlyDate()),
      onTap: () {
        getAppActions(context).openCached(find);
      },
    );
  }
}
