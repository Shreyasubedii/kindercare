import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:kindercaremvvm/ui/widgets/activity_card.dart';
import 'attendance_viewmodel.dart';
import 'package:kindercaremvvm/ui/widgets/attendance_inoutcheck.dart';

class AttendanceView extends StackedView<AttendanceViewModel> {
  const AttendanceView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AttendanceViewModel viewModel,
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
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                SizedBox(height: 6),
                Text(
                  "Oct 15, 2025",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
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
              padding: EdgeInsets.all(16.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Status',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //for scroll
                  Expanded(
                    child: ListView(
                      // child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Shreya Subedi',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            Spacer(),
                            inButton,
                            SizedBox(
                              width: 10,
                            ),
                            outButton
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text('Deeya Maharjan',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            Spacer(),
                            inButton,
                            SizedBox(
                              width: 10,
                            ),
                            outButton
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text('Sonu KC',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            Spacer(),
                            inButton,
                            SizedBox(
                              width: 10,
                            ),
                            outButton
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text('Angel Subedi',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            Spacer(),
                            inButton,
                            SizedBox(
                              width: 10,
                            ),
                            outButton
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text('Shreya Subedi',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            Spacer(),
                            inButton,
                            SizedBox(
                              width: 10,
                            ),
                            outButton
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text('Shreya Subedi',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            Spacer(),
                            inButton,
                            SizedBox(
                              width: 10,
                            ),
                            outButton
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text('Shreya Subedi',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            Spacer(),
                            inButton,
                            SizedBox(
                              width: 10,
                            ),
                            outButton
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text('Shreya Subedi',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                            Spacer(),
                            inButton,
                            SizedBox(
                              width: 10,
                            ),
                            outButton
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  // ),
                  //for scroll
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  AttendanceViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AttendanceViewModel();
}
