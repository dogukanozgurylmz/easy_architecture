part of 'result.dart';

class SuccessDataResult<T> extends DataResult<T> {
  SuccessDataResult({String? message, required T data})
      : super(true, message!, data);
}
