import 'package:stacked/stacked.dart';

class MealTrackViewModel extends BaseViewModel {
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
  List<bool> fullSelected = [];
  List<bool> halfSelected = [];
  List<bool> finishedSelected = [];

  MealTrackViewModel() {
    initializeStudents();
  }

  void initializeStudents() {
    int count = studentNames.length;
    fullSelected = List.generate(count, (_) => false);
    halfSelected = List.generate(count, (_) => false);
    finishedSelected = List.generate(count, (_) => false);
    notifyListeners();
  }

  void toggleFull(int index, bool? value) {
    fullSelected[index] = value ?? false;
    notifyListeners();
  }

  void toggleHalf(int index, bool? value) {
    halfSelected[index] = value ?? false;
    notifyListeners();
  }

  void toggleFinished(int index, bool? value) {
    finishedSelected[index] = value ?? false;
    notifyListeners();
  }
}
