import 'package:Herald_flutter/model/place.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Herald_flutter/extensions.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrainWidget extends StatelessWidget {
  final Train train;

  TrainWidget({Key key, @required this.train}) : super(key: key);

  static Color gray = Colors.black45;

  TextStyle _tableItemTextStyle = TextStyle(
    color: gray,
    fontStyle: FontStyle.italic,
  );

  TextStyle _trainIdTextStyle = TextStyle(
    fontSize: 20,
    color: gray,
  );

  TextStyle _stationTextStyle = TextStyle(
    fontSize: 18,
    color: Colors.blueAccent[900],
  );

  TextStyle _stationArrowTextStyle = TextStyle(
    fontSize: 30,
    color: Colors.blueAccent[900],
  );

  TextStyle _timeTextStyle = TextStyle(
    fontSize: 20,
    color: gray,
  );

  TextStyle _dateTextStyle = TextStyle(
    fontSize: 18,
    color: gray,
  );

  TextStyle _timeArrowTextStyle = TextStyle(
    fontSize: 30,
    color: gray,
  );

  double iconMargin = 5.0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            _buildCardHeader(),
            SizedBox(height: 10.0),
            _buildTrainMainSection(),
            SizedBox(height: 10.0),
            _buildTrainFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildCardHeader() {
    return Row(
      children: <Widget>[
        _buildTrainType(),
        SizedBox(width: iconMargin),
        Text(train.trainId, style: _trainIdTextStyle),
        SizedBox(width: iconMargin),
        _buildTrainFlags(),
      ],
    );
  }

  Widget _buildTrainType() {
    String icon;
    switch (train.type) {
      case TrainType.RegionalEconom:
        icon = "regional_economy.svg";
        break;
      case TrainType.RegionalBusiness:
        icon = "regional_businness.svg";
        break;
      case TrainType.InterregionalEconom:
        icon = "interregional_economy.svg";
        break;
      case TrainType.InterregionalBusiness:
        icon = "interregional_business.svg";
        break;
      case TrainType.International:
        icon = "international.svg";
        break;
      case TrainType.Bus:
        icon = "bus.svg";
        break;
      case TrainType.CityLines:
        icon = "city_lines.svg";
        break;
      case TrainType.Airport:
      case TrainType.Commercial:
      case TrainType.CommonType:
        icon = null;
        break;
    }
    if (icon != null) {
      return SvgPicture.asset(
        "assets/images/icons/$icon",
      );
    } else {
      return Container();
    }
  }

  Widget _buildTrainFlags() {
    List<Widget> flags = [];
    if (train.comfort) {
      flags.add(SvgPicture.asset("assets/images/icons/comfort.svg"));
    }
    if (train.speed) {
      flags.add(SizedBox(width: iconMargin));
      flags.add(SvgPicture.asset("assets/images/icons/speed.svg"));
    }
    if (train.reserved) {
      flags.add(SizedBox(width: iconMargin));
      flags.add(SvgPicture.asset("assets/images/icons/reserved.svg"));
    }
    if (train.accessible) {
      flags.add(SizedBox(width: iconMargin));
      flags.add(SvgPicture.asset("assets/images/icons/accessible.svg"));
    }
    return flags.length == 0
        ? Container()
        : Row(
            children: flags,
          );
  }

  Widget _buildTrainMainSection() {
    return Column(
      children: <Widget>[
        _buildTrainStation(),
        _buildTrainTime(),
      ],
    );
  }

  Widget _buildTrainStation() {
    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Text(
            train.departStation,
            style: _stationTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Text(
            '⟶',
            style: _stationArrowTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Text(
            train.arriveStation,
            style: _stationTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildTrainTime() {
    var duration = train.duration;
    return Row(
      children: [
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Column(
            children: <Widget>[
              Text(
                train.departTime.toStringOnlyTime(),
                style: _timeTextStyle,
              ),
              Text(
                train.departTime.toStringRus(),
                style: _dateTextStyle,
              ),
            ],
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                bottom: 20,
                child: Text(
                  duration.toStringOnlyHM(),
                  style: TextStyle(color: gray),
                ),
              ),
              Text(
                '⟶',
                style: _timeArrowTextStyle,
              ),
            ],
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Column(
            children: <Widget>[
              Text(
                train.arriveTime.toStringOnlyTime(),
                style: _timeTextStyle,
              ),
              Text(
                train.arriveTime.toStringRus(),
                style: _dateTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTrainFooter() {
    return train.places.length == 0
        ? Container()
        : Table(
            border: TableBorder(
              horizontalInside: BorderSide(color: gray),
            ),
            children: train.places.map((place) {
              String typeText;
              switch (place.type) {
                case PlaceType.SEAT:
                  typeText = "Сидячее";
                  break;
                case PlaceType.E_CLASS:
                  typeText = "Плацкарт";
                  break;
                case PlaceType.COMP:
                  typeText = "Купе";
                  break;
                case PlaceType.SV:
                  typeText = "СВ";
                  break;
                case PlaceType.NONE:
                  typeText = "";
                  break;
              }
              return TableRow(
                children: <TableCell>[
                  TableCell(
                    child: Text(
                      typeText,
                      style: _tableItemTextStyle,
                    ),
                  ),
                  TableCell(
                    child: Text(
                      place.amount > 0 ? place.amount.toString() : '',
                      style: _tableItemTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  TableCell(
                    child: Text(
                      place.cost.toString() + ' руб.',
                      style: _tableItemTextStyle,
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              );
            }).toList(),
          );
  }
}
