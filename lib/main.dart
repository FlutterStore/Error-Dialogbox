import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ErrorDialogbox()
    );
  }
}

class ErrorDialogbox extends StatefulWidget {
  const ErrorDialogbox({super.key});

  @override
  State<ErrorDialogbox> createState() => _ErrorDialogboxState();
}

class _ErrorDialogboxState extends State<ErrorDialogbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Error Dialog",style: TextStyle(fontSize: 15)),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedButton(
          width: MediaQuery.of(context).size.width/2.5,
          borderRadius: BorderRadius.circular(10),
          buttonTextStyle: const TextStyle(fontSize: 15),
          text: 'Error Dialog',
          color: Colors.red,
          pressEvent: () {
            AwesomeDialog(
              alignment: Alignment.center,
              context: context,
              dialogType: DialogType.error,
              animType: AnimType.rightSlide,
              headerAnimationLoop: false,
              title: 'This is a demo alert dialog.',
              titleTextStyle: const TextStyle(fontSize: 15),
              descTextStyle: const TextStyle(fontSize: 10),
              desc:'Would you like to approve of this message?',
              btnCancelText: "Close",
              btnCancelColor: Colors.red,
              btnCancelIcon: Icons.close_rounded,
              btnCancelOnPress: () {},
              btnOkOnPress: () {},
              btnOkIcon: Icons.check_rounded,
              btnOkColor: Colors.red,
            ).show();
          },
        ),
      ),
    );
  }
}