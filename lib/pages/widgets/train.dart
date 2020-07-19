import 'package:Herald_flutter/model/place.dart';
import 'package:Herald_flutter/extensions/theme_extensions.dart';
import 'package:Herald_flutter/model/place_type.dart';
import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/model/train_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Herald_flutter/extensions.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TrainWidget extends StatelessWidget {
  final Train train;

  TrainWidget({Key key, @required this.train}) : super(key: key);

  static const String iconsPath = "assets/images/icons";  

  final Map<bool Function(Train), String> _flagsMap = {
    (Train train) => train.accessible: "accessible.svg",
    (Train train) => train.comfort: "comfort.svg",
    (Train train) => train.reserved: "reserved.svg",
    (Train train) => train.speed: "speed.svg",
  };

  String _getPlaceName(Place place) {
    switch (place.type) {
      case PlaceType.sittingSeat:
        return "Сидячее";
        break;
      case PlaceType.reservedSeat:
        return "Плацкарт";
        break;
      case PlaceType.compartment:
        return "Купе";
        break;
      case PlaceType.sv:
        return "СВ";
        break;
      default:
        return "";
        break;
    }
  }

  String _getPlaceCost(Place place) {
    return '${place.cost} руб.';
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(Theme.of(context).cardPadding()),
        child: Column(
          children: <Widget>[
            _buildCardHeader(context),
            SizedBox(height: Theme.of(context).cardVerticalAlignment()),
            _buildTrainMainSection(context),
            SizedBox(height: Theme.of(context).cardVerticalAlignment()),
            _buildTrainFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildCardHeader(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildTrainType(context),
        SizedBox(width: Theme.of(context).iconMargin()),
        Text(train.trainId, style: Theme.of(context).trainIdTextStyle()),
        SizedBox(width: Theme.of(context).iconMargin()),
        _buildTrainFlags(context),
      ],
    );
  }

  Widget _buildTrainType(BuildContext context) {
    if (train.type != TrainType.none) {
      return  SvgPicture.asset(
          "$iconsPath/${train.type.name}.svg",
      );
    } else {
      return Container();
    }
  }

  Widget _buildTrainFlags(BuildContext context) {
    return Row(
      children: _flagsMap.entries
          .where((element) => element.key.call(train))
          .map((e) => e.value)
          .map((e) => Padding(
            padding: EdgeInsets.only(left: Theme.of(context).iconMargin()),
            child: SvgPicture.asset("$iconsPath/$e"),
          ))
          .toList(),
    );
  }

  Widget _buildTrainMainSection(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildTrainStation(context),
        _buildTrainTime(context),
      ],
    );
  }

  Widget _buildTrainStation(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Text(
            train.departStation,
            style: Theme.of(context).stationTextStyle(),
            textAlign: TextAlign.center,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: Text(
            '⟶',
            style: Theme.of(context).stationArrowTextStyle(),
            textAlign: TextAlign.center,
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Text(
            train.arriveStation,
            style: Theme.of(context).stationTextStyle(),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildTrainTime(BuildContext context) {
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
                style: Theme.of(context).timeTextStyle(),
              ),
              Text(
                train.departTime.toStringRus(),
                style: Theme.of(context).dateTextStyle(),
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
                  style: TextStyle(color: Theme.of(context).gray()),
                ),
              ),
              Text(
                '⟶',
                style: Theme.of(context).timeArrowTextStyle(),
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
                style: Theme.of(context).timeTextStyle(),
              ),
              Text(
                train.arriveTime.toStringRus(),
                style: Theme.of(context).dateTextStyle(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTrainFooter(BuildContext context) {
    return train.places.length == 0
        ? Container()
        : Table(
            border: TableBorder(
              horizontalInside: BorderSide(color: Theme.of(context).gray()),
            ),
            children: train.places.map((place) {
              return TableRow(
                children: <TableCell>[
                  TableCell(
                    child: Text(
                      _getPlaceName(place),
                      style: Theme.of(context).tableItemTextStyle(),
                    ),
                  ),
                  TableCell(
                    child: Text(
                      place.amount > 0 ? place.amount.toString() : '',
                      style: Theme.of(context).tableItemTextStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  TableCell(
                    child: Text(
                      _getPlaceCost(place),
                      style: Theme.of(context).tableItemTextStyle(),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              );
            }).toList(),
          );
  }
}
