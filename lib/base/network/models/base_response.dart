abstract class BaseResponse {}

class SuccessResponse extends BaseResponse {
  final dynamic status;
  final dynamic statusCode;
  final dynamic data;
  SuccessResponse({
    required this.statusCode,
    required this.data,
    this.status,
  });
}

class FailedResponse extends BaseResponse {
  final dynamic status;
  final dynamic statusCode;
  FailedResponse({
    required this.statusCode,
    this.status,
  });
}
