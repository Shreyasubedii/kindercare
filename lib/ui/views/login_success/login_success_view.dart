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

              // If search is active, showing TextField instead of title
              title: viewModel.isSearching
                  ? TextField(
                      autofocus: true,
                      decoration: const InputDecoration(
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                      onChanged: viewModel.updateSearchQuery,
                    )
                  : const Text(
                      "Home",
                      style: TextStyle(color: Colors.black),
                    ),

              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    children: [
                      if (!viewModel.isSearching)
                        IconButton(
                          //notification icon
                          icon: const Icon(Icons.notifications_none,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                      IconButton(
                        icon: Icon(
                          viewModel.isSearching ? Icons.close : Icons.search,
                          color: Colors.black,
                        ),
                        onPressed: viewModel.toggleSearch,
                      ),
                      if (!viewModel.isSearching)
                        IconButton(
                          //search
                          icon:
                              const Icon(Icons.more_vert, color: Colors.black),
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
      //Body changes if search is active
      body: viewModel.isSearching
          ? _buildSearchSuggestions(context, viewModel)
          : viewModel.selectedIndex == 0
              ? _buildMainContent(context, viewModel)
              : viewModel.screens[viewModel.selectedIndex],
      // : _buildMainContent(context, viewModel),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: viewModel.selectedIndex,
            onTap: viewModel.setIndex,
            selectedItemColor: Colors.blue[800],
            unselectedItemColor: Colors.grey[600],
            showUnselectedLabels: true,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: 'Dashboard',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  //UI when search is not in use
  Widget _buildMainContent(
      BuildContext context, LoginSuccessViewModel viewModel) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/user1.jpg'),
                // backgroundColor: Colors.white,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
        const SizedBox(height: 20),
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
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
//Second container
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
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
                  child: const Column(
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
                const SizedBox(height: 20),

                //Activity cards from view model pages
                ...viewModel.pages.map((page) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: GestureDetector(
                      onTap: () => viewModel.navigateTo(context, page),
                      child: ActivityCard(
                        icon: _getIconForPage(page['title']),
                        title: page['title'],
                        subtitle: page['subtitle'],
                        color: Colors.green.shade900,
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ],
    );
  }

  //ui for search suggestions
  Widget _buildSearchSuggestions(
      BuildContext context, LoginSuccessViewModel viewModel) {
    final results = viewModel.filteredPages;
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          final page = results[index];
          return ListTile(
            leading:
                Icon(_getIconForPage(page['title']), color: Colors.blue[800]),
            title: Text(page['title']),
            subtitle: Text(page['subtitle']),
            onTap: () => viewModel.navigateTo(context, page),
          );
        },
      ),
    );
  }

  //Helper method to choose an icon for each page
  IconData _getIconForPage(String title) {
    switch (title) {
      case 'Daily Log':
        return Icons.class_;
      case 'Class Activities':
        return Icons.school;
      case 'Attendance':
        return Icons.check_circle;
      case 'Outdoor Play':
        return Icons.favorite;
      default:
        return Icons.star;
    }
  }

  @override
  LoginSuccessViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginSuccessViewModel();
}
