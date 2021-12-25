import 'package:cati/model/entities/index.dart';
import 'package:cati/model/params/index.dart';
import 'package:cati/model/response/index.dart';
import 'package:cati/networks/api_client.dart';
import 'package:cati/networks/api_util.dart';
import 'package:get/get.dart';

part 'auth_api.dart';
class ApiService extends GetxService {
  late ApiClient _apiClient;

  Future<ApiService> init() async {
    _apiClient = ApiUtil.getApiClient();
    return this;
  }
}
