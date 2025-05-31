// abstract class ApiResult<T> {
//   const ApiResult();
//   factory ApiResult.success(T data) = ApiSuccess<T>;
//   factory ApiResult.error(String message) = ApiError<T>;
// }
// class ApiSuccess<T> extends ApiResult<T> {
//   final T data;

//   ApiSuccess(this.data);
// }
// class ApiError<T> extends ApiResult<T> {
//   final String message;

//   ApiError(this.message);
// }

import 'package:flutter_fundamentals/store_app/models/failure_model.dart';

abstract class ApiResult<T> {
  const ApiResult._();
  const factory ApiResult.success(T data) = _Success<T>;
  const factory ApiResult.failure(FailureModel failureModel) = _Failure<T>;
  R when<R>({
    required R Function(T data) success,
    required R Function(FailureModel failureModel) failure,
  }) {
    if (this is _Success<T>) {
      return success((this as _Success<T>).data);
    } else {
      return failure((this as _Failure<T>).failureModel);
    }
  }
}

class _Success<T> extends ApiResult<T> {
  final T data;

  const _Success(this.data) : super._();
}

class _Failure<T> extends ApiResult<T> {
  final FailureModel failureModel;

  const _Failure(this.failureModel) : super._();
}
