import 'package:Herald/model/find.dart';
import 'package:Herald/model/train.dart';

class SaveFindToPersistanceRequest {
  SaveFindToPersistanceRequest({
    this.find,
    this.trains,
  });

  final Find find;
  final Iterable<Train> trains;
}
