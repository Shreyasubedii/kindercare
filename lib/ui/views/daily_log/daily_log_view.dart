import 'package:flutter/material.dart';
import 'package:kindercaremvvm/ui/views/class_activities/class_activities_view.dart';
import 'package:kindercaremvvm/ui/views/health_track/health_track_view.dart';
import 'package:kindercaremvvm/ui/views/meal_track/meal_track_view.dart';
import 'package:kindercaremvvm/ui/views/mood_track/mood_track_view.dart';
import 'package:stacked/stacked.dart';
import 'package:kindercaremvvm/ui/widgets/activity_card.dart';
import 'daily_log_viewmodel.dart';

class DailyLogView extends StackedView<DailyLogViewModel> {
  const DailyLogView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DailyLogViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MealTrackView()),
                            );
                          },
                          child: ActivityCard(
                            icon: Icons.food_bank,
                            title: "Meals",
                            subtitle: "5 logs",
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MealTrackView()),
                            );
                          },
                          child: ActivityCard(
                            icon: Icons.offline_bolt,
                            title: "Nap",
                            subtitle: "5 Activities ",
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MoodTrackView()),
                            );
                          },
                          child: ActivityCard(
                            icon: Icons.mood,
                            title: "Mood",
                            subtitle: "Class Attendance",
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HealthTrackView()),
                            );
                          },
                          child: ActivityCard(
                            icon: Icons.favorite,
                            title: "Health",
                            subtitle: "2 Activities • 30 mins",
                            color: Colors.pinkAccent,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ClassActivitiesView()),
                            );
                          },
                          child: ActivityCard(
                            icon: Icons.mood,
                            title: "Class Activities",
                            subtitle: "Class activities",
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 10),
                        ActivityCard(
                          icon: Icons.favorite,
                          title: "Others",
                          subtitle: "2 Activities • 30 mins",
                          color: Colors.pinkAccent,
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
  DailyLogViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DailyLogViewModel();
}
