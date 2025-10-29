// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i15;
import 'package:flutter/material.dart';
import 'package:kindercaremvvm/ui/views/attendance/attendance_view.dart' as _i8;
import 'package:kindercaremvvm/ui/views/class_activities/class_activities_view.dart'
    as _i9;
import 'package:kindercaremvvm/ui/views/daily_log/daily_log_view.dart' as _i10;
import 'package:kindercaremvvm/ui/views/health_track/health_track_view.dart'
    as _i14;
import 'package:kindercaremvvm/ui/views/home/home_view.dart' as _i2;
import 'package:kindercaremvvm/ui/views/login_page/login_page_view.dart' as _i5;
import 'package:kindercaremvvm/ui/views/login_success/login_success_view.dart'
    as _i6;
import 'package:kindercaremvvm/ui/views/meal_track/meal_track_view.dart'
    as _i11;
import 'package:kindercaremvvm/ui/views/mood_track/mood_track_view.dart'
    as _i13;
import 'package:kindercaremvvm/ui/views/naap_track/naap_track_view.dart'
    as _i12;
import 'package:kindercaremvvm/ui/views/password_reset/password_reset_view.dart'
    as _i7;
import 'package:kindercaremvvm/ui/views/second_page/second_page_view.dart'
    as _i4;
import 'package:kindercaremvvm/ui/views/startup/startup_view.dart' as _i3;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i16;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const secondPageView = '/second-page-view';

  static const loginPageView = '/login-page-view';

  static const loginSuccessView = '/login-success-view';

  static const passwordResetView = '/password-reset-view';

  static const attendanceView = '/attendance-view';

  static const classActivitiesView = '/class-activities-view';

  static const dailyLogView = '/daily-log-view';

  static const mealTrackView = '/meal-track-view';

  static const naapTrackView = '/naap-track-view';

  static const moodTrackView = '/mood-track-view';

  static const healthTrackView = '/health-track-view';

  static const all = <String>{
    homeView,
    startupView,
    secondPageView,
    loginPageView,
    loginSuccessView,
    passwordResetView,
    attendanceView,
    classActivitiesView,
    dailyLogView,
    mealTrackView,
    naapTrackView,
    moodTrackView,
    healthTrackView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.secondPageView,
      page: _i4.SecondPageView,
    ),
    _i1.RouteDef(
      Routes.loginPageView,
      page: _i5.LoginPageView,
    ),
    _i1.RouteDef(
      Routes.loginSuccessView,
      page: _i6.LoginSuccessView,
    ),
    _i1.RouteDef(
      Routes.passwordResetView,
      page: _i7.PasswordResetView,
    ),
    _i1.RouteDef(
      Routes.attendanceView,
      page: _i8.AttendanceView,
    ),
    _i1.RouteDef(
      Routes.classActivitiesView,
      page: _i9.ClassActivitiesView,
    ),
    _i1.RouteDef(
      Routes.dailyLogView,
      page: _i10.DailyLogView,
    ),
    _i1.RouteDef(
      Routes.mealTrackView,
      page: _i11.MealTrackView,
    ),
    _i1.RouteDef(
      Routes.naapTrackView,
      page: _i12.NaapTrackView,
    ),
    _i1.RouteDef(
      Routes.moodTrackView,
      page: _i13.MoodTrackView,
    ),
    _i1.RouteDef(
      Routes.healthTrackView,
      page: _i14.HealthTrackView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.SecondPageView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.SecondPageView(),
        settings: data,
      );
    },
    _i5.LoginPageView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.LoginPageView(),
        settings: data,
      );
    },
    _i6.LoginSuccessView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.LoginSuccessView(),
        settings: data,
      );
    },
    _i7.PasswordResetView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.PasswordResetView(),
        settings: data,
      );
    },
    _i8.AttendanceView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.AttendanceView(),
        settings: data,
      );
    },
    _i9.ClassActivitiesView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.ClassActivitiesView(),
        settings: data,
      );
    },
    _i10.DailyLogView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i10.DailyLogView(),
        settings: data,
      );
    },
    _i11.MealTrackView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i11.MealTrackView(),
        settings: data,
      );
    },
    _i12.NaapTrackView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.NaapTrackView(),
        settings: data,
      );
    },
    _i13.MoodTrackView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i13.MoodTrackView(),
        settings: data,
      );
    },
    _i14.HealthTrackView: (data) {
      return _i15.MaterialPageRoute<dynamic>(
        builder: (context) => const _i14.HealthTrackView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i16.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSecondPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.secondPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginSuccessView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPasswordResetView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.passwordResetView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAttendanceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.attendanceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToClassActivitiesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.classActivitiesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDailyLogView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dailyLogView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMealTrackView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.mealTrackView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNaapTrackView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.naapTrackView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMoodTrackView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.moodTrackView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHealthTrackView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.healthTrackView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSecondPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.secondPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginPageView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginPageView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginSuccessView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginSuccessView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPasswordResetView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.passwordResetView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAttendanceView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.attendanceView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithClassActivitiesView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.classActivitiesView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDailyLogView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.dailyLogView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMealTrackView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.mealTrackView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNaapTrackView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.naapTrackView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMoodTrackView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.moodTrackView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHealthTrackView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.healthTrackView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
