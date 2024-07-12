import 'package:get/get.dart';
import 'package:doctor_dashboard/data/api/api_client.dart';
import 'package:doctor_dashboard/utils/app_constants.dart';

class SpecializationRepo {
  final ApiClient apiClient;
  SpecializationRepo({required this.apiClient});

  Future<Response> addSpecialization(
      {required Map<String, String> body}) async {
    return await apiClient.postData(AppConstants.addSpecializaton, body);
  }
}
