import 'package:Herald_flutter/model/train.dart';
import 'package:Herald_flutter/services/exceptions/parse_exception.dart';
import 'package:sealed_class/sealed_class.dart';

part 'service_response.g.dart';

@Sealed([TrainsLoadedResponse, ParseExceptionResponse, ExceptionRespose])
abstract class ServiceResponse {}

class TrainsLoadedResponse implements ServiceResponse {
  const TrainsLoadedResponse({
    this.trains,
  });

  final Iterable<Train> trains;
}

class ParseExceptionResponse implements ServiceResponse {
  const ParseExceptionResponse({
    this.exception,
  });

  final ParseException exception;
}

class ExceptionRespose implements ServiceResponse {
  const ExceptionRespose({
    this.exception,
  });

  final Exception exception;
}
