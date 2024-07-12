import 'package:get/get.dart';
import 'package:doctor_dashboard/data/repository/city_repo.dart';
import 'package:doctor_dashboard/data/model/response/brand_model.dart';
import 'package:doctor_dashboard/data/model/response/response_model.dart';
import 'package:doctor_dashboard/data/model/response/specialization_model.dart';

class AddCityController extends GetxController {
  CityRepo cityRepo;
  AddCityController({required this.cityRepo}) {
    getBrandList();
    getSpecializationList();
  }
  RxBool _isBrandLoading = false.obs;
  RxBool get isBrandLoading => _isBrandLoading;
  RxBool _isSpecializationLoading = false.obs;
  RxBool get isSpecializationLoading => _isSpecializationLoading;
  RxBool _isAddCityLoading = false.obs;
  RxBool get isAddCityLoading => _isAddCityLoading;

  //list
  List<BrandModel> _brandsList = [];
  List<BrandModel> get brandsList => _brandsList;

  List<SpecializationModel> _specializationList = [];
  List<SpecializationModel> get specializationList => _specializationList;

  // models

  BrandModel? _selectedBrandModel;
  BrandModel? get selectedBrandModel => _selectedBrandModel;

  //onchanged

  void onChangeBrand(BrandModel value) {
    _selectedBrandModel = value;
  }

  //API Calls

  Future<ResponseModel> addCity() async {
    _isAddCityLoading = true.obs;
    ResponseModel responseModel;
    try {
      Response response = await cityRepo.addCity(body: {"name": ''});

      if (response.statusCode == 200) {
        responseModel = ResponseModel(true, response.body ?? '');
      } else {
        responseModel = ResponseModel(false, response.statusText ?? '');
      }
    } catch (e) {
      responseModel = ResponseModel(false, 'Error');
    }
    _isAddCityLoading = true.obs;
    update();
    return responseModel;
  }

  Future<ResponseModel> getBrandList() async {
    _isBrandLoading = true.obs;
    ResponseModel responseModel;
    try {
      Response response = await cityRepo.getBrandList();

      if (response.statusCode == 200) {
        if (response.body["type"].toString().toLowerCase() == 'success') {
          final data = response.body["data"];
          if (data != null) {
            _brandsList =
                List<BrandModel>.from(data.map((x) => BrandModel.fromJson(x)));
          }
          responseModel = ResponseModel(true, 'Success');
        } else {
          responseModel = ResponseModel(false, 'Something went wrong');
        }
        responseModel = ResponseModel(true, response.body ?? '');
      } else {
        responseModel = ResponseModel(false, response.statusText ?? '');
      }
    } catch (e) {
      responseModel = ResponseModel(false, 'Error');
    }
    _isBrandLoading = false.obs;
    update();
    return responseModel;
  }

  Future<ResponseModel> getSpecializationList() async {
    _isSpecializationLoading = true.obs;
    ResponseModel responseModel;
    try {
      Response response = await cityRepo.getSpecializationList();

      if (response.statusCode == 200) {
        if (response.body["type"].toString().toLowerCase() == 'success') {
          final data = response.body["data"];
          if (data != null) {
            _specializationList = List<SpecializationModel>.from(
                data.map((x) => SpecializationModel.fromJson(x)));
          }
          responseModel = ResponseModel(true, 'Success');
        } else {
          responseModel = ResponseModel(false, 'Something went wrong');
        }
        responseModel = ResponseModel(true, response.body ?? '');
      } else {
        responseModel = ResponseModel(false, response.statusText ?? '');
      }
    } catch (e) {
      responseModel = ResponseModel(false, 'Error');
    }
    _isSpecializationLoading = false.obs;
    update();
    return responseModel;
  }
}
