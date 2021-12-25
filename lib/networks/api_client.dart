import 'package:cati/model/params/index.dart';
import 'package:cati/model/response/index.dart';
import 'package:dio/dio.dart';
import 'package:cati/generated/l10n.dart';
import 'package:cati/model/entities/index.dart';
import 'package:cati/utils/logger.dart';
import 'error_exception.dart';

abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;

  Future<TokenEntity> authLogin(String user, String pass);

  Future<SignUpResponse> sign_up(SignUpRequest request);

  Future<dynamic> signOut();
}

class _ApiClient implements ApiClient {
  _ApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://dev-ctvland-application-api.azurewebsites.net';
  }

  final Dio _dio;

  String? baseUrl;

  Future<Response> _requestApi(Future<Response> request) async {
    try {
      return await request;
    } catch (error) {
      logger.e("Exception occured: ${error.toString()}");
      throw _handleError(error);
    }
  }

  ErrorException _handleError(dynamic error) {
    ErrorException exception = ErrorException();
    if (error is DioError) {
      exception.userMsg = error.message;
      switch (error.type) {
        case DioErrorType.sendTimeout:
          return exception..devMsg = error.message;
        case DioErrorType.cancel:
          return exception..devMsg = error.message;
        case DioErrorType.connectTimeout:
          return exception..devMsg = error.message;
        case DioErrorType.other:
          return exception..devMsg = S.current.network_error;
        case DioErrorType.receiveTimeout:
          return exception..devMsg = error.message;
        case DioErrorType.response:
          if (error.response!.data is String) {
            return exception..devMsg = error.message;
          } else if (error.response!.data is Map<String, dynamic>) {
            var response = ErrorException.fromJson(error.response!.data);
            return response;
          }
          break;
        default:
          exception.userMsg = error.response!.data.toString();
          exception.devMsg = error.response!.data.toString();
      }
    } else {
      exception.userMsg = S.current.error;
      exception.devMsg = S.current.error;
    }
    return exception;
  }

  // Map<String, dynamic> _decodeMap(String value) {
  //   Map<String, dynamic> valueMap = json.decode(value);
  //   return valueMap;
  // }

  @override
  Future<TokenEntity> authLogin(String user, String pass) async {
    Response _result = await _requestApi(_dio.post(
        '/api/v1/Authenticate/signIn',
        data: {'username': user, 'password': pass}));
    final value = TokenEntity.fromJson(_result.data!);
    return value;
  }

  @override
  Future signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<SignUpResponse> sign_up(SignUpRequest request) async {
    Response _result = await _requestApi(
        _dio.post('/api/v1/Authenticate/UserRegister', data: request.toJson()));
    final value = SignUpResponse.fromJson(_result.data!);
    return value;
  }
}
