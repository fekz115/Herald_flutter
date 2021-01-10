import 'package:Herald/model/place.dart';
import 'package:Herald/model/place_type.dart';
import 'package:Herald/model/train.dart';
import 'package:Herald/model/train_type.dart';
import 'package:Herald/services/exceptions/parse_exception.dart';
import 'package:Herald/services/parse_service.dart';
import 'package:built_collection/built_collection.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;

class HtmlParserService extends ParseService {
  @override
  Future<List<Train>> parseTrains(String response) async {
    final document = parse(response);
    try {
      final list =
          _parseTrains(document.getElementsByClassName('sch-table__row-wrap'));
      if (list.isEmpty) {
        throw Exception();
      }
      return list;
    } catch (e) {
      if (document
          .getElementsByClassName('edit_list')
          .any((element) => element.innerHtml.contains('Станция не найдена'))) {
        throw StationNotFoundException();
      } else if (document.getElementsByClassName('edit_list').any((element) =>
          element.innerHtml.contains('Наберите не менее трех букв'))) {
        throw TooShortException();
      } else if (document.getElementsByClassName('error_content').isNotEmpty) {
        throw UnknownParseException(
            content:
                document.getElementsByClassName('error_content').first.text);
      } else {
        throw UnknownParseException();
      }
    }
  }

  List<Train> _parseTrains(List<Element> elements) {
    return elements.map((element) {
      return Train((b) => b
        ..places = BuiltList.of(_parsePlaces(element)).toBuilder()
        ..departStation = _parseDepartStation(element)
        ..arriveStation = _parseArriveStation(element)
        ..trainId = _parseTrainId(element)
        ..type = _parseTrainType(element)
        ..departTime = _parseDepartTime(element)
        ..duration = _parseDuration(element)
        ..reserved = _checkIfReserved(element)
        ..comfort = _checkIfComfort(element)
        ..speed = _checkIfSpeed(element)
        ..accessible = _checkIfSpecial(element));
    }).toList();
  }

  List<Place> _parsePlaces(Element element) {
    return element
        .getElementsByClassName('sch-table__t-item')
        .map((placeElement) {
      return Place((b) => b
        ..type = _parsePlaceType(placeElement)
        ..amount = _parsePlaceCount(placeElement)
        ..costBYN = _parsePlacePriceBYN(placeElement)
        ..costEUR = _parsePlacePriceEUR(placeElement)
        ..costRUB = _parsePlacePriceRUB(placeElement)
        ..costUSD = _parsePlacePriceUSD(placeElement));
    }).toList();
  }

  Duration _parseDuration(Element element) {
    return Duration(
        minutes: int.parse(element
            .getElementsByClassName(
                'sch-table__duration train-duration-time')[0]
            .attributes['data-value']));
  }

  int _parsePlaceCount(Element element) {
    try {
      return int.parse(
          element.getElementsByClassName('sch-table__t-quant')[0].text);
    } catch (_) {
      return 0;
    }
  }

  double _parsePlacePriceBYN(Element element) {
    return _parsePlacePrice(element, 'data-cost-byn');
  }

  double _parsePlacePriceRUB(Element element) {
    return _parsePlacePrice(element, 'data-cost-rub');
  }

  double _parsePlacePriceUSD(Element element) {
    return _parsePlacePrice(element, 'data-cost-usd');
  }

  double _parsePlacePriceEUR(Element element) {
    return _parsePlacePrice(element, 'data-cost-eur');
  }

  double _parsePlacePrice(Element element, String attr) {
    return double.parse(element
        .getElementsByClassName('js-price')[0]
        .attributes[attr]
        .replaceAll(',', '.'));
  }

  PlaceType _parsePlaceType(Element element) {
    switch (element.getElementsByClassName('sch-table__t-name')[0].text) {
      case 'Купейный':
        return PlaceType.compartment;
        break;
      case 'Сидячий':
        return PlaceType.sittingSeat;
        break;
      case 'Плацкартный':
        return PlaceType.reservedSeat;
        break;
      case 'СВ':
        return PlaceType.sv;
        break;
      default:
        return PlaceType.none;
    }
  }

  TrainType _parseTrainType(Element element) {
    final trainType =
        element.getElementsByClassName('sch-table__train-type')[0];
    switch (trainType.getElementsByTagName('i')[0].className) {
      case 'svg-bus':
        return TrainType.bus;
        break;
      case 'svg-regional_economy':
        return TrainType.regionalEconomy;
        break;
      case 'svg-regional_business':
        return TrainType.regionalBusiness;
        break;
      case 'svg-interregional_economy':
        return TrainType.interregionalEconomy;
        break;
      case 'svg-interregional_business':
        return TrainType.interregionalBusiness;
        break;
      case 'svg-international':
        return TrainType.international;
        break;
      case 'svg-city':
        return TrainType.cityLines;
        break;
      default:
        return TrainType.none;
        break;
    }
  }

  String _parseTrainId(Element element) {
    return element.getElementsByClassName('train-number')[0].text;
  }

  String _parseDepartStation(Element element) {
    final trainText =
        element.getElementsByClassName('train-route')[0].text.split('—');
    return trainText[0].trimRight();
  }

  String _parseArriveStation(Element element) {
    final trainText =
        element.getElementsByClassName('train-route')[0].text.split('—');
    return trainText[1].trimLeft();
  }

  DateTime _parseDepartTime(Element element) {
    final timeData = element
        .getElementsByClassName('train-from-time')[0]
        .text
        .replaceAll('[\n\t]', '')
        .trim()
        .split(':')
        .map(int.parse)
        .toList();
    return DateTime(0, 1, 1, timeData[0], timeData[1]);
  }

  bool _checkIfReserved(Element element) {
    return element.getElementsByClassName('svg-tag-er').isNotEmpty;
  }

  bool _checkIfComfort(Element element) {
    return element.getElementsByClassName('svg-tag-fp').isNotEmpty;
  }

  bool _checkIfSpeed(Element element) {
    return element.getElementsByClassName('svg-tag-express').isNotEmpty;
  }

  bool _checkIfSpecial(Element element) {
    return element.getElementsByClassName('svg-tag-special').isNotEmpty;
  }
}
