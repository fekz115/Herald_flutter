// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_response.dart';

// **************************************************************************
// SealedGenerator
// **************************************************************************

extension ServiceResponseExt on ServiceResponse {
  void continued(
    Function(TrainsLoadedResponse) continuationTrainsLoadedResponse,
    Function(ParseExceptionResponse) continuationParseExceptionResponse,
    Function(ExceptionRespose) continuationExceptionRespose,
  ) {
    if (this is TrainsLoadedResponse) {
      continuationTrainsLoadedResponse(this);
    }
    if (this is ParseExceptionResponse) {
      continuationParseExceptionResponse(this);
    }
    if (this is ExceptionRespose) {
      continuationExceptionRespose(this);
    }
  }

  R join<R>(
    R Function(TrainsLoadedResponse) joinTrainsLoadedResponse,
    R Function(ParseExceptionResponse) joinParseExceptionResponse,
    R Function(ExceptionRespose) joinExceptionRespose,
  ) {
    R r;
    if (this is TrainsLoadedResponse) {
      r = joinTrainsLoadedResponse(this);
    }
    if (this is ParseExceptionResponse) {
      r = joinParseExceptionResponse(this);
    }
    if (this is ExceptionRespose) {
      r = joinExceptionRespose(this);
    }

    return r;
  }
}
