import 'package:get/get.dart';
import 'package:untitled2/utils/app_constants.dart';

class api extends GetConnect implements GetxService {
  final String appBaseUrl;
  late String token;

  late Map<String, String> _mainHeaders;

  api({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = appConstants.TOKEN;
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token'
    };
  }
  Future<Response> getData(
    String uri,
  ) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
