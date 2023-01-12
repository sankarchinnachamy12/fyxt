import '../layout/alert_dialog.dart';

Future<bool> EmailValidator(String? value, context) async {
  print("Step 1");
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = RegExp(pattern);
  if (value == "") {
    print("Step 2");
    await AlertDialogs.yesCancelDialog(context, "yes", "Enter the email");
  } else if (!regex.hasMatch(value!)) {
    await AlertDialogs.yesCancelDialog(context, "yes", "Enter the valid email");
  }
  return false;
}
