import 'package:stacked/stacked.dart';

class HealthTrackViewModel extends BaseViewModel {
  List<String> studentNames = [
    'Shreya Subedi',
    'Diya Maharjan',
    'Charlie Davis',
    'Angel Subedi',
    'Soniya K.C',
    'Bipin Dahal',
    'Ram Bahadur',
    'Shyam Shrestha',
    'Diya Subedi',
    'Alex Dsouza',
    'Diana Evans',
    'Ethan Brown',
  ];
  List<bool> goodSelected = [];
  List<bool> fineSelected = [];
  List<bool> sickSelected = [];

  HealthTrackViewModel() {
    initializeStudents();
  }

  void initializeStudents() {
    int count = studentNames.length;
    goodSelected = List.generate(count, (_) => false);
    fineSelected = List.generate(count, (_) => false);
    sickSelected = List.generate(count, (_) => false);
    notifyListeners();
  }

  void toggleFull(int index, bool? value) {
    goodSelected[index] = value ?? false;
    notifyListeners();
  }

  void toggleHalf(int index, bool? value) {
    fineSelected[index] = value ?? false;
    notifyListeners();
  }

  void toggleFinished(int index, bool? value) {
    sickSelected[index] = value ?? false;
    notifyListeners();
  }
}
