import 'package:Herald_flutter/model/place.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/services/exceptions/parse_exception.dart';
import 'package:Herald_flutter/services/parse_service.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;
import 'package:intl/intl.dart';

class HtmlParserService extends ParseService {

  var df = new DateFormat.Hm();

  @override
  List<Train> parseTrains(String response) {
    var document = parse(response);
    try {
      return _parseTrains(document.getElementsByClassName("sch-table__row-wrap"));
    } catch (e) {
      print(e);
      if(document.getElementsByClassName("edit_list").any((element) => element.innerHtml.contains("Станция не найдена"))) {
        throw StationNotFoundException();
      } else if(document.getElementsByClassName("edit_list").any((element) => element.innerHtml.contains("Наберите не менее трех букв"))) {
        throw TooShortException();
      } else if (document.getElementsByClassName("error_content").length != 0) {
        throw ParseException(document.getElementsByClassName("error_content").first.text);
      } else {
        throw UnknownParseException();
      }
    }
  }

  List<Train> _parseTrains(List<Element> elements) {
    return elements.map((element) {
      var places = _parsePlaces(element);
      var from = _parseDepartStation(element);
      var to = _parseArriveStation(element);
      var trainId = _parseTrainId(element);
      TrainType type = _parseTrainType(element);
      var startTime = _parseDepartTime(element);
      var duration = _parseDuration(element);
      var reserved = _checkIfReserved(element);
      var comfort = _checkIfComfort(element);
      var speed = _checkIfSpeed(element);
      var accessible = _checkIfSpecial(element);
      return Train(
        trainId, type, from, to, startTime, places, reserved, comfort, speed, accessible, duration
      );
    }).toList();
  }

  List<Place> _parsePlaces(Element element) {
    return element.getElementsByClassName("sch-table__t-item").map((placeElement) {
      PlaceType type = _parsePlaceType(placeElement);
      int count = _parsePlaceCount(placeElement);
      double price = _parsePlacePrice(placeElement);
      return Place(type, count, price);
    }).toList();
  }

  Duration _parseDuration(Element element) {
    return Duration(minutes: int.parse(element.getElementsByClassName("sch-table__duration train-duration-time")[0].attributes["data-value"]));
  }

  int _parsePlaceCount(Element element) {
    try {
      return int.parse(element.getElementsByClassName("sch-table__t-quant")[0].text);
    } catch (_) {
      return 0;
    }
  }

  double _parsePlacePrice(Element element) {
    return double.parse(element.getElementsByClassName("js-price")[0].attributes["data-cost-byn"].replaceAll(",", "."));
  }

  PlaceType _parsePlaceType(Element element) {
      switch(element.getElementsByClassName("sch-table__t-name")[0].text) {
        case "Купейный":
          return PlaceType.COMP;
          break;
        case "Сидячий":
          return PlaceType.SEAT;
          break;
        case "Плацкартный":
          return PlaceType.E_CLASS;
          break;
        case "СВ":
          return PlaceType.SV;
          break;
        default:
          return PlaceType.NONE;
      }
  }

  TrainType _parseTrainType(Element element) {
    var trainType = element.getElementsByClassName("sch-table__train-type")[0];
    switch(trainType.getElementsByTagName("i")[0].className) {
      case "svg-bus":
          return TrainType.Bus;
          break;
        case "svg-regional_economy":
          return TrainType.RegionalEconom;
          break;
        case "svg-regional_business":
          return TrainType.RegionalBusiness;
          break;
        case "svg-interregional_economy":
          return TrainType.InterregionalEconom;
          break;
        case "svg-interregional_business":
          return TrainType.InterregionalBusiness;
          break;
        case "svg-international":
          return TrainType.International;
          break;
        case "svg-city":
          return TrainType.CityLines;
          break;
        default:
          return TrainType.CommonType;
          break;
    }
  }

  String _parseTrainId(Element element) {
    return element.getElementsByClassName("train-number")[0].text;
  }

  String _parseDepartStation(Element element) {
    var trainText = element.getElementsByClassName("train-route")[0].text.split("—");
    return trainText[0].trimRight();
  }

  String _parseArriveStation(Element element) {
    var trainText = element.getElementsByClassName("train-route")[0].text.split("—");
    return trainText[1].trimLeft();
  }

  DateTime _parseDepartTime(Element element) {
    return df.parse(element.getElementsByClassName("train-from-time")[0].text.replaceAll("[\n\t]", "").trim());
  }

  bool _checkIfReserved(Element element) {
    return element.getElementsByClassName("svg-tag-er").isNotEmpty;
  }

  bool _checkIfComfort(Element element) {
    return element.getElementsByClassName("svg-tag-fp").isNotEmpty;
  }

  bool _checkIfSpeed(Element element) {
    return element.getElementsByClassName("svg-tag-express").isNotEmpty;
  }

  bool _checkIfSpecial(Element element) {
    return element.getElementsByClassName("svg-tag-special").isNotEmpty;
  }

}