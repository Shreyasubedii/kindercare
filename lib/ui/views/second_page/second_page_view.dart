import 'package:flutter/material.dart';
import 'package:kindercaremvvm/ui/views/login_page/login_page_view.dart';
import 'package:stacked/stacked.dart';

import 'second_page_viewmodel.dart';

class SecondPageView extends StackedView<SecondPageViewModel> {
  const SecondPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SecondPageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: Colors.yellow[700]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/school2.png'),
                  height: 255,
                  width: 255,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Flexible(
                  child: Text(
                    "Stay close to your child's day. No matter where you are",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPageView()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.0,
                      vertical: 15.0,
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  SecondPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SecondPageViewModel();
}
