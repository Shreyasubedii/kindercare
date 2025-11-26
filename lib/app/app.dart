import 'package:kindercaremvvm/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:kindercaremvvm/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:kindercaremvvm/ui/views/home/home_view.dart';
import 'package:kindercaremvvm/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:kindercaremvvm/ui/views/second_page/second_page_view.dart';
import 'package:kindercaremvvm/ui/views/login_page/login_page_view.dart';
import 'package:kindercaremvvm/ui/views/login_success/login_success_view.dart';
import 'package:kindercaremvvm/ui/views/password_reset/password_reset_view.dart';
import 'package:kindercaremvvm/ui/views/attendance/attendance_view.dart';
import 'package:kindercaremvvm/ui/views/class_activities/class_activities_view.dart';
import 'package:kindercaremvvm/ui/views/daily_log/daily_log_view.dart';
import 'package:kindercaremvvm/ui/views/meal_track/meal_track_view.dart';
import 'package:kindercaremvvm/ui/views/naap_track/naap_track_view.dart';
import 'package:kindercaremvvm/ui/views/mood_track/mood_track_view.dart';
import 'package:kindercaremvvm/ui/views/health_track/health_track_view.dart';
import 'package:kindercaremvvm/ui/views/dashboard/dashboard_view.dart';
import 'package:kindercaremvvm/ui/views/homepage/homepage_view.dart';
import 'package:kindercaremvvm/ui/views/teacherprofile/teacherprofile_view.dart';
import 'package:kindercaremvvm/ui/views/messages/messages_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SecondPageView),
    MaterialRoute(page: LoginPageView),
    MaterialRoute(page: LoginSuccessView),
    MaterialRoute(page: PasswordResetView),
    MaterialRoute(page: AttendanceView),
    MaterialRoute(page: ClassActivitiesView),
    MaterialRoute(page: DailyLogView),
    MaterialRoute(page: MealTrackView),
    MaterialRoute(page: NaapTrackView),
    MaterialRoute(page: MoodTrackView),
    MaterialRoute(page: HealthTrackView),
    MaterialRoute(page: DashboardView),
    MaterialRoute(page: HomepageView),
    MaterialRoute(page: TeacherProfileView),
    MaterialRoute(page: MessagesView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
