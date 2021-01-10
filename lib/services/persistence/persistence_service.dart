import 'package:Herald/model/find.dart';
import 'package:Herald/model/train.dart';
import 'package:Herald/redux/app_state.dart';

abstract class PersistenceService {
  Future<Iterable<Train>> findTrains(Find find);
  Future<Iterable<Find>> savedFinds();
  Future<void> save(Find find, Iterable<Train> trains);
  Future<void> clearCache({DateTime dateTime});

  Future<void> saveState(AppState state);
  Future<AppState> loadAppState();

  Future<void> init();
  Future<void> close();
}