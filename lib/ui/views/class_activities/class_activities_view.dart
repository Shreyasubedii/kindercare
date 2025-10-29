import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:kindercaremvvm/ui/widgets/activity_card.dart';
import 'class_activities_viewmodel.dart';

class ClassActivitiesView extends StackedView<ClassActivitiesViewModel> {
  const ClassActivitiesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ClassActivitiesViewModel viewModel,
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
      body: Column(
        children: [
          SizedBox(height: 20),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),

                  SizedBox(height: 20),
                  //using the activity card widget
                  Flexible(
                    child: ListView(
                      children: [
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => DailyLogView()),
                            // );
                          },
                          child: ActivityCard(
                            icon: Icons.create,
                            title: "Creative",
                            subtitle: "Drawing, Painting",
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => ClassActivitiesView()),
                            // );
                          },
                          child: ActivityCard(
                            icon: Icons.cleaning_services,
                            title: "Practical",
                            subtitle: "Cleaning, Cooking, Pouring ",
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => AttendanceView()),
                            // );
                          },
                          child: ActivityCard(
                            icon: Icons.create,
                            title: "Math/Logic",
                            subtitle: "Logic Building",
                            color: Colors.redAccent,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => AttendanceView()),
                            // );
                          },
                          child: ActivityCard(
                            icon: Icons.games,
                            title: "Sensory play",
                            subtitle: "Testing Senses",
                            color: Colors.orangeAccent,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => AttendanceView()),
                            // );
                          },
                          child: ActivityCard(
                            icon: Icons.music_note,
                            title: "Music and Instruments",
                            subtitle: "Music, Dance",
                            color: Colors.pinkAccent,
                          ),
                        ),
                      ],
                    ),
                  ),

//end of the activity card widget
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  ClassActivitiesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ClassActivitiesViewModel();
}
