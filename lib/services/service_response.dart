import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/services/exceptions/parse_exception.dart';
import 'package:sealed_class/sealed_class.dart';

part 'service_response.g.dart';

@Sealed([TrainsLoadedResponse, ParseExceptionResponse, ExceptionRespose])
abstract class ServiceResponse {}

class TrainsLoadedResponse implements ServiceResponse {
  final Iterable<Train> trains;

  TrainsLoadedResponse(this.trains);
}

class ParseExceptionResponse implements ServiceResponse {
  final ParseException exception;

  ParseExceptionResponse(this.exception);
}

class ExceptionRespose implements ServiceResponse {
  final Exception exception;

  ExceptionRespose(this.exception);
}