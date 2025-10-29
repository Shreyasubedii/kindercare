import 'package:stacked/stacked.dart';

class MoodTrackViewModel extends BaseViewModel {
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
  List<bool> happySelected = [];
  List<bool> neutralSelected = [];
  List<bool> sadSelected = [];

  MoodTrackViewModel() {
    initializeStudents();
  }

  void initializeStudents() {
    int count = studentNames.length;
    happySelected = List.generate(count, (_) => false);
    neutralSelected = List.generate(count, (_) => false);
    sadSelected = List.generate(count, (_) => false);
    notifyListeners();
  }

  void toggleFull(int index, bool? value) {
    happySelected[index] = value ?? false;
    notifyListeners();
  }

  void toggleHalf(int index, bool? value) {
    neutralSelected[index] = value ?? false;
    notifyListeners();
  }

  void toggleFinished(int index, bool? value) {
    sadSelected[index] = value ?? false;
    notifyListeners();
  }
}
