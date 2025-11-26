import 'package:flutter/material.dart';
import 'package:kindercaremvvm/models/teacherProfileModel.dart';
import 'package:kindercaremvvm/ui/views/messages/messages_view.dart';
import 'package:kindercaremvvm/ui/views/teacherprofile/teacherprofile_view.dart';
import 'package:stacked/stacked.dart';
import 'package:kindercaremvvm/ui/views/attendance/attendance_view.dart';
import 'package:kindercaremvvm/ui/views/class_activities/class_activities_view.dart';
import 'package:kindercaremvvm/ui/views/daily_log/daily_log_view.dart';
import 'package:kindercaremvvm/ui/views/login_success/login_success_view.dart';
import 'package:kindercaremvvm/ui/views/dashboard/dashboard_view.dart';

class LoginSuccessViewModel extends BaseViewModel {
//Tracking the selected tab
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  //chaninging tab index
  void setIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  //Example pages (replace with real view later)
  final List<Widget> _screens = [
    const LoginSuccessView(),
    const DashboardView(),
    const MessagesView(),
    const TeacherProfileView(),
  ];

  List<Widget> get screens => _screens;

//selectedIndex-> keeps track of which bottom item is selected
//setIndex()-> updates it and rebuilds the view
// screens-> stores your pages (replace Center() with real views later
//Search Functionality
  // --- Reactive Variables ---
  bool _isSearching = false;
  String _searchQuery = '';

  final List<Map<String, dynamic>> _pages = [
    {
      'title': 'Daily Log',
      'subtitle': '5 logs',
      'widget': const DailyLogView(),
    },
    {
      'title': 'Class Activities',
      'subtitle': '5 Activities',
      'widget': const ClassActivitiesView(),
    },
    {
      'title': 'Attendance',
      'subtitle': 'Class Attendance',
      'widget': const AttendanceView(),
    },
    {
      'title': 'Outdoor Play',
      'subtitle': '2 Activities • 30 mins',
      'widget': null,
    },
  ];

  bool get isSearching => _isSearching;
  String get searchQuery => _searchQuery;
  List<Map<String, dynamic>> get pages => _pages;

  // --- Methods ---

  /// Toggles between normal appbar and search mode
  void toggleSearch() {
    _isSearching = !_isSearching;
    if (!_isSearching) _searchQuery = '';
    notifyListeners();
  }

  /// Updates the text being typed into the search bar
  void updateSearchQuery(String value) {
    _searchQuery = value;
    notifyListeners();
  }

  /// Filters the pages based on the search input
  List<Map<String, dynamic>> get filteredPages {
    if (_searchQuery.isEmpty) return _pages;
    return _pages
        .where((page) =>
            page['title'].toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();
  }

  /// Handles navigation when a search suggestion is clicked
  void navigateTo(BuildContext context, Map<String, dynamic> page) {
    if (page['widget'] != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page['widget']),
      );
    }
  }
}
