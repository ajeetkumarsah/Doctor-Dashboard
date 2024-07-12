import 'package:get/get.dart';
import 'package:doctor_dashboard/data/model/response/response_model.dart';
import 'package:doctor_dashboard/data/repository/specialization_repo.dart';

class AddSpecializationController extends GetxController {
  SpecializationRepo specializationRepo;
  AddSpecializationController({required this.specializationRepo});
  RxStatus rxAddSpecializationStatus = RxStatus.empty();

  Future<ResponseModel> addSpecialization(String name) async {
    rxAddSpecializationStatus = RxStatus.loading();
    update();
    ResponseModel responseModel;
    try {
      Response response =
          await specializationRepo.addSpecialization(body: {"name": name});

      if (response.statusCode == 200) {
        responseModel = ResponseModel(true, response.body ?? '');
        rxAddSpecializationStatus = RxStatus.success();
      } else {
        rxAddSpecializationStatus = RxStatus.error();
        responseModel = ResponseModel(false, response.statusText ?? '');
      }
    } catch (e) {
      rxAddSpecializationStatus = RxStatus.error();
      responseModel = ResponseModel(false, 'Error');
    }

    update();
    return responseModel;
  }
}
