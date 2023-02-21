import 'package:get/get.dart';
import 'package:roshini/model/profile_model.dart';
import 'package:roshini/services/api_provider.dart';

class ProfileController extends GetxController{
  RxBool isLoading = true.obs;
  Profile? ProfileModel;
  void complainListOpenApi() async {
    isLoading(true);
    ProfileModel = await ApiProvider.profileApi();
    if (ProfileModel != null) {
      isLoading(false);
    }
  }
  @override
  void onInit() {
    complainListOpenApi();
    super.onInit();
  }
  @override
  void onClose() {
    super.onClose();
  }
  @override
  void dispose() {

    super.dispose();
  }
}