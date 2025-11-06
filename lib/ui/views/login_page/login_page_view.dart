import 'package:flutter/material.dart';
import 'package:kindercaremvvm/ui/views/login_success/login_success_view.dart';
import 'package:kindercaremvvm/ui/views/password_reset/password_reset_view.dart';
import 'package:stacked/stacked.dart';
import 'login_page_viewmodel.dart';

class LoginPageView extends StackedView<LoginPageViewModel> {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginPageViewModel viewModel,
    Widget? child,
  ) {
    final _formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            // bottomLeft: Radius.circular(25),
            // bottomRight: Radius.circular(25),
            // topLeft: Radius.circular(25),
            // topRight: Radius.circular(25),
            // ),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 4, // small shadow for depth
              title: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              centerTitle: true,

              // Adding icons to the right
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0), // side padding
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.notifications_none,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          //  notifications
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.search, color: Colors.black),
                        onPressed: () {
                          //  search
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.more_vert, color: Colors.black),
                        onPressed: () {
                          //  menu
                        },
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/school.png',
                        height: 150,
                        width: 150,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          final emailRegex =
                              RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                          if (!emailRegex.hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 40),
//Password field
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          }
                          final passwordRegex =
                              RegExp(r'^(?=.*[0-9])(?=.*[!@#\$&*~]).{8,}$');
                          if (!passwordRegex.hasMatch(value)) {
                            return 'Password must include at least one number and one special character';
                          }
                          return null;
                        },
                      ),

                      const SizedBox(height: 40),

                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Process data.
                            Navigator.push( 
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginSuccessView(),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[800],
                          padding: EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 15,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PasswordResetView(),
                            ),
                          );
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  LoginPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginPageViewModel();
}
