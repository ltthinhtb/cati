part of 'api_service.dart';

extension AuthApiService on ApiService {
  Future<TokenEntity?> signIn(String username, String password) async {
    try {
      return await _apiClient.authLogin(username, password);
    } on Exception catch (_) {
      rethrow;
    }
  }

  Future<SignUpResponse?> signUp(SignUpRequest request) async {
    return await _apiClient.signUp(request);
  }
}
