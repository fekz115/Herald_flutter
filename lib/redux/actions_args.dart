import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';

class SaveFindToPersistanceRequest {
  SaveFindToPersistanceRequest({
    this.find,
    this.trains,
  });

  final Find find;
  final Iterable<Train> trains;
}
