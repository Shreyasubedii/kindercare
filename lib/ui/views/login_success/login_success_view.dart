import 'package:flutter/material.dart';
import 'package:kindercaremvvm/ui/views/attendance/attendance_view.dart';
import 'package:kindercaremvvm/ui/views/class_activities/class_activities_view.dart';
import 'package:kindercaremvvm/ui/views/daily_log/daily_log_view.dart';
import 'package:stacked/stacked.dart';

import 'login_success_viewmodel.dart';
import 'package:kindercaremvvm/ui/widgets/activity_card.dart';

class LoginSuccessView extends StackedView<LoginSuccessViewModel> {
  const LoginSuccessView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginSuccessViewModel viewModel,
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: const AssetImage('assets/images/user1.jpg'),
                  // backgroundColor: Colors.white,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Shreya Subedi",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Oct 15, 2025",
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
//Second container
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Home Room Handler",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Room Assigned: 2B",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
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
                                  builder: (context) => DailyLogView()),
                            );
                          },
                          child: ActivityCard(
                            icon: Icons.class_,
                            title: "Daily Log",
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
                                  builder: (context) => ClassActivitiesView()),
                            );
                          },
                          child: ActivityCard(
                            icon: Icons.school,
                            title: "Class Activities",
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
                                  builder: (context) => AttendanceView()),
                            );
                          },
                          child: ActivityCard(
                            icon: Icons.check_circle,
                            title: "Attendance",
                            subtitle: "Class Attendance",
                            color: const Color.fromARGB(255, 2, 7, 2),
                          ),
                        ),
                        SizedBox(height: 10),
                        ActivityCard(
                          icon: Icons.favorite,
                          title: "Outdoor Play",
                          subtitle: "2 Activities • 30 mins",
                          color: Colors.orange,
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
  LoginSuccessViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginSuccessViewModel();
}
