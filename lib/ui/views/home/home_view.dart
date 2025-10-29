import 'package:flutter/material.dart';
import 'package:kindercaremvvm/ui/views/second_page/second_page_view.dart';
import 'package:stacked/stacked.dart';
import 'package:kindercaremvvm/ui/common/app_colors.dart';
import 'package:kindercaremvvm/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/school.png',
                  height: 100,
                  width: 100,
                ),
                Text(
                  'KinderCare',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'See your childs \nactivities',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const Image(
              image: AssetImage('assets/images/school2.png'),
              height: 250,
              width: 250,
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Lets get \nstarted !',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(width: 70),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPageView()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.yellow[700],
                    size: 60,
                    weight: 40,
                  ),
                ),
              ],
            ),

            // SizedBox(height: 10,
            // child: Stack(
            //   alignment: Alignment.center,
            //   children: [
            //     Positioned(
            //       bottom: -80,
            //       child: Container(
            //         height: 100,
            //         width: 100,

            //         decoration: BoxDecoration(
            //           color: Colors.yellow[700],
            //           shape: BoxShape.circle

            //           ),
            //         ),
            //       ),

            //   ],
            // ),

            // ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
