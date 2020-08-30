import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';

class SaveFindToPersistanceRequest {
  final Find find;
  final Iterable<Train> trains;

  SaveFindToPersistanceRequest(this.find, this.trains);
}