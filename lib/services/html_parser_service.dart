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

    var document = parse(response);
    List<Train> trains = new List<Train>();
    var schedule = document.getElementsByClassName("schedule_list")[0];
    schedule.children.forEach((element) {
      var places = _parsePlaces(element);
      var trainText = element.getElementsByClassName("train_text")[0].text.split("—");
      var from = trainText[0].trimRight();
      var to = trainText[1].trimLeft();
      var trainId = element.getElementsByClassName("train_id")[0].text;
      var trainType = element.getElementsByClassName("train_type")[0].classes.last;
      TrainType type;
      switch(trainType) {
        case "bus":
          type = TrainType.Bus;
          break;
        case "regional_economy":
          type = TrainType.RegionalEconom;
          break;
        case "regional_business":
          type = TrainType.RegionalBusiness;
          break;
        case "interregional_economy":
          type = TrainType.InterregionalEconom;
          break;
        case "interregional_business":
          type = TrainType.InterregionalBusiness;
          break;
        case "international":
          type = TrainType.International;
          break;
        case "city":
          type = TrainType.CityLines;
          break;
        default:
          type = TrainType.CommonType;
          break;
      }
      var startTime = df.parse(element.getElementsByClassName("train_start-time")[0].text);

      var endTime = df.parse(element.getElementsByClassName("train_end-time")[0].text);
      if(endTime.isBefore(startTime)){
        endTime = endTime.add(Duration(days: 1));
      }
      var daysElem = element.getElementsByClassName("train_days")[0];
      var days = "";
      daysElem.nodes.forEach((dayElement) {
        if(dayElement.nodeType == Node.TEXT_NODE) {
          days += dayElement.text;
        } else {
          days += ", " + dayElement.text;
        }
      });
      days = days.trim().replaceAll("[\n\t]", "");
      var nonstop = element.getElementsByClassName("train_halts")[0].text.trim();
      var reserved = element.getElementsByClassName("spec_reserved").isNotEmpty;
      var comfort = element.getElementsByClassName("spec_comfort").isNotEmpty;
      var speed = element.getElementsByClassName("spec_speed").isNotEmpty;
      trains.add(Train(
        trainId, type, from, to, startTime, endTime, places, nonstop, days, reserved, comfort, speed
      ));
    });
    return trains;
  }

  List<Place> _parsePlaces(Element element) {
    var places = new List<Place>();
    element.getElementsByClassName("train_details-group").forEach((placeElement) {
      var trainNote = placeElement.getElementsByClassName("train_note")[0];
      var trainPlace = placeElement.getElementsByClassName("train_seats")[0];
      var trainPrice = placeElement.getElementsByClassName("train_price")[0].getElementsByTagName("span")[0];

      PlaceType type;
      switch(trainNote.text) {
        case "Купе":
          type = PlaceType.COMP;
          break;
        case "Сидячий":
          type = PlaceType.SEAT;
          break;
        case "Плацкартный":
          type = PlaceType.E_CLASS;
          break;
        case "СВ":
          type = PlaceType.SV;
          break;
        default:
          type = PlaceType.NONE;
      }
      int count;
      try {
        count = int.parse(trainPlace.text);
      } catch (_) {
        count = 0;
      }
      double price = double.parse(new RegExp(r"[\d.]+").firstMatch(trainPrice.text.replaceAll(",", ".")).group(0));
      Place place = new Place(type, count, price);
      places.add(place);
    });
    return places;
  }

}