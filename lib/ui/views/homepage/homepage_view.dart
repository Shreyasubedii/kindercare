import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'homepage_viewmodel.dart';
import 'package:kindercaremvvm/ui/views/attendance/attendance_view.dart';
import 'package:kindercaremvvm/ui/views/class_activities/class_activities_view.dart';
import 'package:kindercaremvvm/ui/views/daily_log/daily_log_view.dart';
import 'package:kindercaremvvm/ui/views/dashboard/dashboard_view.dart';
import 'package:kindercaremvvm/ui/widgets/activity_card.dart';

class HomepageView extends StackedView<HomepageViewModel> {
  const HomepageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomepageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("HomepageView")),
      ),
    );
  }

  @override
  HomepageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomepageViewModel();
}
