import 'package:get/get.dart';
import 'package:doctor_dashboard/data/api/api_client.dart';
import 'package:doctor_dashboard/utils/app_constants.dart';

class CityRepo {
  final ApiClient apiClient;
  CityRepo({required this.apiClient});

  Future<Response> addCity({required Map<String, String> body}) async {
    return await apiClient.postData(AppConstants.addSpecializaton, body);
  }

  Future<Response> getBrandList() async {
    return await apiClient.getData(AppConstants.brandList);
  }

  Future<Response> getSpecializationList() async {
    return await apiClient.getData(AppConstants.specializationList);
  }
}
