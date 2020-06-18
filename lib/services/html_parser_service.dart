import 'package:Herald_flutter/model/place.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/services/parse_service.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' show parse;
import 'package:intl/intl.dart';

class HtmlParserService extends ParseService {

  var df = new DateFormat.Hm();

  @override
  List<Train> parseTrains(String response) {
    return parse(response).getElementsByClassName("schedule_list")[0].children.map((element) {
      var places = _parsePlaces(element);
      var from = _parseDepartStation(element);
      var to = _parseArriveStation(element);
      var trainId = _parseTrainId(element);
      TrainType type = _parseTrainType(element);
      var startTime = _parseDepartTime(element);
      var endTime = _parseArriveTime(element);
      if(endTime.isBefore(startTime)){
        endTime = endTime.add(Duration(days: 1));
      }
      var days = _parseDays(element);
      var nonstop = _parseTrainHalts(element);
      var reserved = _checkIfReserved(element);
      var comfort = _checkIfComfort(element);
      var speed = _checkIfSpeed(element);
      return Train(
        trainId, type, from, to, startTime, endTime, places, nonstop, days, reserved, comfort, speed
      );
    }).toList();
  }

  List<Place> _parsePlaces(Element element) {
    return element.getElementsByClassName("train_details-group").map((placeElement) {
      PlaceType type = _parsePlaceType(placeElement);
      int count = _parsePlaceCount(placeElement);
      double price = _parsePlacePrice(placeElement);
      return Place(type, count, price);
    }).toList();
  }

  int _parsePlaceCount(Element element) {
    try {
      return int.parse(element.getElementsByClassName("train_seats")[0].text);
    } catch (_) {
      return 0;
    }
  }

  double _parsePlacePrice(Element element) {
    return double.parse(new RegExp(r"[\d.]+").firstMatch(element.getElementsByClassName("train_price")[0].getElementsByTagName("span")[0].text.replaceAll(",", ".")).group(0));
  }

  PlaceType _parsePlaceType(Element element) {
      switch(element.getElementsByClassName("train_note")[0].text) {
        case "Купе":
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
    var trainType = element.getElementsByClassName("train_type")[0];
    switch(trainType.classes.last) {
      case "bus":
          return TrainType.Bus;
          break;
        case "regional_economy":
          return TrainType.RegionalEconom;
          break;
        case "regional_business":
          return TrainType.RegionalBusiness;
          break;
        case "interregional_economy":
          return TrainType.InterregionalEconom;
          break;
        case "interregional_business":
          return TrainType.InterregionalBusiness;
          break;
        case "international":
          return TrainType.International;
          break;
        case "city":
          return TrainType.CityLines;
          break;
        default:
          return TrainType.CommonType;
          break;
    }
  }

  String _parseDays(Element element) {
      var daysElem = element.getElementsByClassName("train_days")[0];
      var days = "";
      daysElem.nodes.forEach((dayElement) {
        if(dayElement.nodeType == Node.TEXT_NODE) {
          days += dayElement.text;
        } else {
          days += ", " + dayElement.text;
        }
      });
      return days.trim().replaceAll("[\n\t]", "");
  }

  String _parseTrainId(Element element) {
    return element.getElementsByClassName("train_id")[0].text;
  }

  String _parseDepartStation(Element element) {
    var trainText = element.getElementsByClassName("train_text")[0].text.split("—");
    return trainText[0].trimRight();
  }

  String _parseArriveStation(Element element) {
    var trainText = element.getElementsByClassName("train_text")[0].text.split("—");
    return trainText[1].trimLeft();
  }

  DateTime _parseDepartTime(Element element) {
    return df.parse(element.getElementsByClassName("train_start-time")[0].text);
  }

  DateTime _parseArriveTime(Element element) {
    return df.parse(element.getElementsByClassName("train_end-time")[0].text);
  }

  String _parseTrainHalts(Element element) {
    return element.getElementsByClassName("train_halts")[0].text.trim();
  }

  bool _checkIfReserved(Element element) {
    return element.getElementsByClassName("spec_reserved").isNotEmpty;
  }

  bool _checkIfComfort(Element element) {
    return element.getElementsByClassName("spec_reserved").isNotEmpty;
  }

  bool _checkIfSpeed(Element element) {
    return element.getElementsByClassName("spec_speed").isNotEmpty;
  }

}