import 'package:Herald_flutter/model/place.dart';
import 'package:Herald_flutter/model/place_type.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/model/train_type.dart';
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
      return _parseTrains(
          document.getElementsByClassName("sch-table__row-wrap"));
    } catch (e) {
      print(e);
      if (document
          .getElementsByClassName("edit_list")
          .any((element) => element.innerHtml.contains("Станция не найдена"))) {
        throw StationNotFoundException();
      } else if (document.getElementsByClassName("edit_list").any((element) =>
          element.innerHtml.contains("Наберите не менее трех букв"))) {
        throw TooShortException();
      } else if (document.getElementsByClassName("error_content").length != 0) {
        throw ParseException(
            document.getElementsByClassName("error_content").first.text);
      } else {
        throw UnknownParseException();
      }
    }
  }

  List<Train> _parseTrains(List<Element> elements) {
    return elements.map((element) {
      return Train((b) => {
            b
              ..places = _parsePlaces(element)
              ..departStation = _parseDepartStation(element)
              ..arriveStation = _parseArriveStation(element)
              ..trainId = _parseTrainId(element)
              ..type = _parseTrainType(element)
              ..departTime = _parseDepartTime(element)
              ..duration = _parseDuration(element)
              ..reserved = _checkIfReserved(element)
              ..comfort = _checkIfComfort(element)
              ..speed = _checkIfSpeed(element)
              ..accessible = _checkIfSpecial(element)
          });
    }).toList();
  }

  List<Place> _parsePlaces(Element element) {
    return element
        .getElementsByClassName("sch-table__t-item")
        .map((placeElement) {
      return Place((b) => {
            b
              ..type = _parsePlaceType(placeElement)
              ..amount = _parsePlaceCount(placeElement)
              ..cost = _parsePlacePrice(placeElement)
          });
    }).toList();
  }

  Duration _parseDuration(Element element) {
    return Duration(
        minutes: int.parse(element
            .getElementsByClassName(
                "sch-table__duration train-duration-time")[0]
            .attributes["data-value"]));
  }

  int _parsePlaceCount(Element element) {
    try {
      return int.parse(
          element.getElementsByClassName("sch-table__t-quant")[0].text);
    } catch (_) {
      return 0;
    }
  }

  double _parsePlacePrice(Element element) {
    return double.parse(element
        .getElementsByClassName("js-price")[0]
        .attributes["data-cost-byn"]
        .replaceAll(",", "."));
  }

  PlaceType _parsePlaceType(Element element) {
    switch (element.getElementsByClassName("sch-table__t-name")[0].text) {
      case "Купейный":
        return PlaceType.compartment;
        break;
      case "Сидячий":
        return PlaceType.sittingSeat;
        break;
      case "Плацкартный":
        return PlaceType.reservedSeat;
        break;
      case "СВ":
        return PlaceType.sv;
        break;
      default:
        return PlaceType.none;
    }
  }

  TrainType _parseTrainType(Element element) {
    var trainType = element.getElementsByClassName("sch-table__train-type")[0];
    switch (trainType.getElementsByTagName("i")[0].className) {
      case "svg-bus":
        return TrainType.bus;
        break;
      case "svg-regional_economy":
        return TrainType.regionalEconomy;
        break;
      case "svg-regional_business":
        return TrainType.regionalBusiness;
        break;
      case "svg-interregional_economy":
        return TrainType.interregionalEconomy;
        break;
      case "svg-interregional_business":
        return TrainType.interregionalBusiness;
        break;
      case "svg-international":
        return TrainType.international;
        break;
      case "svg-city":
        return TrainType.cityLines;
        break;
      default:
        return TrainType.none;
        break;
    }
  }

  String _parseTrainId(Element element) {
    return element.getElementsByClassName("train-number")[0].text;
  }

  String _parseDepartStation(Element element) {
    var trainText =
        element.getElementsByClassName("train-route")[0].text.split("—");
    return trainText[0].trimRight();
  }

  String _parseArriveStation(Element element) {
    var trainText =
        element.getElementsByClassName("train-route")[0].text.split("—");
    return trainText[1].trimLeft();
  }

  DateTime _parseDepartTime(Element element) {
    return df.parse(element
        .getElementsByClassName("train-from-time")[0]
        .text
        .replaceAll("[\n\t]", "")
        .trim());
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
