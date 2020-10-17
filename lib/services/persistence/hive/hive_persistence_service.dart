import 'package:Herald_flutter/model/find.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/redux/app_state.dart';
import 'package:Herald_flutter/services/persistence/hive/dto/db_entry.dart';
import 'package:Herald_flutter/services/persistence/hive/dto/place_dto.dart';
import 'package:Herald_flutter/services/persistence/hive/dto/place_type_dto.dart';
import 'package:Herald_flutter/services/persistence/hive/dto/train_dto.dart';
import 'package:Herald_flutter/services/persistence/hive/dto/train_type_dto.dart';
import 'package:Herald_flutter/services/persistence/persistence_service.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HivePersistenceService extends PersistenceService {
  Box<dynamic> _cachedBox;
  //Box<AppState> _stateBox;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(PlaceTypeDtoAdapter())
      ..registerAdapter(PlaceDtoAdapter())
      ..registerAdapter(TrainTypeDtoAdapter())
      ..registerAdapter(TrainDtoAdapter())
      ..registerAdapter(EntryAdapter());
    _cachedBox = await Hive.openBox('cached');
    //_stateBox = await Hive.openBox('state');
  }

  @override
  Future<void> clearCache({DateTime dateTime}) async {
    if (dateTime != null) {
      await _cachedBox.deleteAll(_cachedBox.keys
          .where((element) => element < dateTime.millisecondsSinceEpoch));
    } else {
      await _cachedBox.clear();
    }
  }

  @override
  Future<void> close() async {
    await Hive.close();
  }

  @override
  Future<Iterable<Train>> findTrains(Find find) async {
    final f = _cachedBox.values
        .cast<Entry>()
        .where((element) => element != null && element.find == find)
        .map((e) => e.trains);
    if (f != null && f.isNotEmpty) {
      return f.first.map((e) => e.convertDtoToEntity()).toList();
    } else {
      return null;
    }
  }

  @override
  Future<AppState> loadAppState() async {
    // TODO: implement loadAppState
    throw UnimplementedError();
  }

  @override
  Future<void> save(Find find, Iterable<Train> trains) async {
    final entry = Entry.fromEntities(find, trains);
    await _cachedBox.put(entry.hashCode, entry);
  }

  @override
  Future<void> saveState(AppState state) async {
    // TODO: implement saveState
  }

  @override
  Future<Iterable<Find>> savedFinds() async {
    return _cachedBox.values.cast<Entry>().map((x) => x.find).toList();
  }
}
