import 'package:stacked/stacked.dart';
import '../../../services/teacherProfileService.dart';
import '../../../models/teacherProfileModel.dart';

class TeacherProfileViewModel extends BaseViewModel {
  final TeacherProfileService _service = TeacherProfileService();

  TeacherProfileModel? teacher;

  Future<void> loadTeacherProfile() async {
    setBusy(true); // show loading
    teacher = await _service.getTeacherProfile();
    setBusy(false); // hide loading
  }
}
