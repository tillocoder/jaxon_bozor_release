import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginController = ChangeNotifierProvider((ref) => LoginController());

class LoginController extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final TextEditingController loginCtr = TextEditingController();
  final TextEditingController passwordCtr = TextEditingController();

  bool isLoading = false;

  Future<void> login() async {
    isLoading = true;
    notifyListeners();

    // Add your login logic here
    await Future.delayed(const Duration(seconds: 2));

    isLoading = false;
    notifyListeners();
  }
}
