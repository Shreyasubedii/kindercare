import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'teacherprofile_viewmodel.dart';

class TeacherProfileView extends StatelessWidget {
  const TeacherProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TeacherProfileViewModel>.reactive(
      viewModelBuilder: () => TeacherProfileViewModel(),
      onModelReady: (vm) => vm.loadTeacherProfile(),
      builder: (context, vm, child) {
        if (vm.isBusy || vm.teacher == null) {
          return const Center(child: CircularProgressIndicator());
        }

        final t = vm.teacher!;

        return Scaffold(
          backgroundColor: Color.fromARGB(255, 250, 249, 249),
          // appBar: AppBar(
          //   title: const Text("Account Settings"),
          //   centerTitle: true,
          // ),

          body: ListView(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            // padding: const EdgeInsets.all(20),
            children: [
              // 🔷 Top Profile Section
              Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(t.profileImage),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    t.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    t.subject,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Edit Profile"),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // 🔷 Settings Menu (Instagram-style)
              const Text(
                "Your Account",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              _menuTile(Icons.list_alt, "Attendance Records"),
              _menuTile(Icons.class_, "Assigned Classes"),
              _menuTile(Icons.people, "Students"),
              _menuTile(Icons.schedule, "Timetable / Schedule"),
              _menuTile(Icons.assignment, "Your Activities"),
              _menuTile(Icons.notifications, "Notifications"),
              _menuTile(Icons.info, "Help & Support"),

              const SizedBox(height: 25),

              // 🔴 Logout
              _menuTile(Icons.logout, "Logout", isRed: true),
            ],
          ),
        );
      },
    );
  }

  // Menu Component (like Instagram settings)
  Widget _menuTile(IconData icon, String title, {bool isRed = false}) {
    return ListTile(
      leading: Icon(icon, color: isRed ? Colors.red : Colors.black),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: isRed ? Colors.red : Colors.black,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}
