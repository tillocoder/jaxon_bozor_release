// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:jaxon/core/global_widgets/custom_container.dart';
import 'package:jaxon/core/router/name_routes.dart';
import 'package:jaxon/features/login_screen/widgets/text_fild_widget.dart';

import '../controller/login_controller.dart';

// Define a provider for LoginController
final loginController = ChangeNotifierProvider((ref) => LoginController());

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(loginController);
    var ctr = ref.read(loginController);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: KContainer(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Jahon Bozori",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Boshqaruv oynasiga o'tish uchun\nlogin va parolni kiriting!",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 100),
                  TextFildWidget(
                    hintText: "Login",
                    icon: const Icon(Icons.short_text_sharp),
                    controller: ctr.loginCtr,
                    obscureText: false,
                  ),
                  const SizedBox(height: 15),
                  TextFildWidget(
                    hintText: "Parol",
                    icon: const Icon(Icons.lock),
                    controller: ctr.passwordCtr,
                    obscureText: true,
                  ),
                  const SizedBox(height: 10),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: ctr.isLoading
                        ? null
                        : () async {
                            await ctr.login();
                            // ignore: use_build_context_synchronously
                            context.goNamed(Routes.home);
                          },
                    child: ctr.isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            "Yuborish",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      minimumSize: const Size(double.infinity, 50),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      textStyle:
                          const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(97, 122, 55, 238),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
