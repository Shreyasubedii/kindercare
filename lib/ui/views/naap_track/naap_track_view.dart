import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'naap_track_viewmodel.dart';

class NaapTrackView extends StackedView<NaapTrackViewModel> {
  const NaapTrackView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NaapTrackViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("NaapTrackView")),
      ),
    );
  }

  @override
  NaapTrackViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NaapTrackViewModel();
}
