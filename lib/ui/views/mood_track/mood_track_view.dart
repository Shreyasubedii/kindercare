import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:kindercaremvvm/ui/widgets/status_checkbox.dart';
import 'mood_track_viewmodel.dart';

class MoodTrackView extends StackedView<MoodTrackViewModel> {
  const MoodTrackView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MoodTrackViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 4,
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.notifications_none,
                            color: Colors.black),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.search, color: Colors.black),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.more_vert, color: Colors.black),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
              leading: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
        ),
      ),
      //body starts here
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SizedBox(height: 6),
                Text(
                  "Oct 15, 2025",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          //main container
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // ✅ replaced the listview with a DataTable
                    SingleChildScrollView(
                      child: DataTable(
                        columnSpacing: 25,
                        headingRowHeight: 45,
                        dataRowMinHeight: 40,
                        columns: const [
                          DataColumn(
                            label: Text(
                              'Name',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          DataColumn(
                            label: Text('😊',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                          DataColumn(
                            label: Text('😐',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                          ),
                          DataColumn(
                            label: Text(
                              '☹️',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                        rows: List<DataRow>.generate(
                          viewModel.studentNames.length,
                          (index) => DataRow(
                            cells: [
                              DataCell(Text(viewModel.studentNames[index])),
                              DataCell(Checkbox(
                                value: viewModel.happySelected[index],
                                activeColor: Colors.green,
                                onChanged: (val) =>
                                    viewModel.toggleFull(index, val),
                              )),
                              DataCell(Checkbox(
                                value: viewModel.neutralSelected[index],
                                activeColor: Colors.orange,
                                onChanged: (val) =>
                                    viewModel.toggleHalf(index, val),
                              )),
                              DataCell(
                                Checkbox(
                                  value: viewModel.sadSelected[index],
                                  activeColor: Colors.blue,
                                  onChanged: (val) =>
                                      viewModel.toggleFinished(index, val),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  MoodTrackViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MoodTrackViewModel();
}
