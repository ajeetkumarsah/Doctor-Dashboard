import 'package:get/get.dart';
import 'package:doctor_dashboard/data/api/api_client.dart';
import 'package:doctor_dashboard/data/repository/city_repo.dart';
import 'package:doctor_dashboard/data/repository/specialization_repo.dart';
import 'package:doctor_dashboard/controller/add_specialization_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    //ApiClient
    Get.lazyPut<ApiClient>(() => ApiClient());
    //repo
    Get.lazyPut<SpecializationRepo>(
        () => SpecializationRepo(apiClient: Get.find()));
    Get.lazyPut<CityRepo>(() => CityRepo(apiClient: Get.find()));

    //controller

    Get.lazyPut<AddSpecializationController>(
        () => AddSpecializationController(specializationRepo: Get.find()),
        fenix: true);
  }
}
