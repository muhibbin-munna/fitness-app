import 'dart:async';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/model/workout_list.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/countdown.dart';
import 'package:flutter_countdown_timer/countdown_controller.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TimerPage extends StatefulWidget {
  int reps;
  TimerPage(this.reps);


  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {

  // CountDownController _controller = CountDownController();
  // bool _isPause = false;
  // Timer? timer;
  // int seconds = 60;

  @override
  Widget build(BuildContext context) {
    // int seconds = widget.reps;
    // CountdownController countdownController = CountdownController(duration: Duration(minutes: widget.reps));
    // void startTimer() {
    //   // print('timer'+seconds.toString());
    //   //
    //   // timer = Timer.periodic(Duration(seconds: widget.reps),(_){
    //   //   setState(() {
    //   //     seconds--;
    //   //     print('timer1'+seconds.toString());
    //   //   });
    //   //
    //   //
    //   // });
    //   if(!countdownController.isRunning) {
    //     ///start
    //     countdownController.start();
    //   } else {
    //     ///pause
    //     countdownController.stop();
    //   }
    // }

    // return Scaffold(
    //   backgroundColor: kMainColor,
    //   appBar: AppBar(
    //     title: Text('Timer'),
    //     centerTitle: true,
    //     iconTheme: IconThemeData(color: kTextColor),
    //     backgroundColor: kSecondaryColor,
    //   ),
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         // Text(seconds.toString(),style: TextStyle(color: kTextColor, fontSize: 25)),
    //         Countdown(countdownController: countdownController),
    //         TextButton(onPressed: (){startTimer();},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kSecondaryColor)),
    //           child: Text('Start',style: TextStyle(color: kTextColor, fontSize: 25)),)
    //       ],
    //     ),
    //   ),
    // );
    // CountdownController countdownController = CountdownController(duration: Duration(minutes: 1));

    final int _duration = widget.reps;
    final CountDownController _controller = CountDownController();
    setState(() {
      _duration;
    });
    print('duration'+_duration.toString());
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: const Text('Workouts'),
        iconTheme: IconThemeData(color: kTextColor),
        backgroundColor: kSecondaryColor,
      ),
      body: Center(
          child: CircularCountDownTimer(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
            duration: _duration,
            fillColor: Colors.amber,
            ringColor: Colors.white,
            controller: _controller,
            backgroundColor: Colors.white54,
            strokeWidth: 10.0,
            strokeCap: StrokeCap.round,
            isTimerTextShown: true,
            isReverse: true,
            onComplete: (){
              Alert(
                  context: context,
                  title: 'Done',
                  style: AlertStyle(
                    isCloseButton: true,
                    isButtonVisible: false,
                    titleStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                    ),
                  ),
                  type: AlertType.success
              ).show();
            },
            textStyle: TextStyle(fontSize: 50.0,color: Colors.black),
            // Countdown duration in Seconds.


            // Countdown initial elapsed Duration in Seconds.
            // initialDuration: 0,

            // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.




            // Ring Color for Countdown Widget.
            // ringColor: Colors.grey[300]!,

            // Ring Gradient for Countdown Widget.
            // ringGradient: null,

            // Filling Color for Countdown Widget.


            // Filling Gradient for Countdown Widget.
            // fillGradient: null,

            // Background Color for Countdown Widget.


            // Background Gradient for Countdown Widget.
            // backgroundGradient: null,

            // Border Thickness of the Countdown Ring.


            // Begin and end contours with a flat edge and no extension.


            // Text Style for Countdown Text.


            // Format for the Countdown Text.
            textFormat: CountdownTextFormat.S,

            // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).


            // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
            isReverseAnimation: true,

            // Handles visibility of the Countdown Text.


            // Handles the timer start.
            autoStart: false,

            // This Callback will execute when the Countdown Starts.
            onStart: () {
              // Here, do whatever you want
              debugPrint('Countdown Started');
            },

            // This Callback will execute when the Countdown Ends.

          )
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30,
          ),
          _button(title: "Start", onPressed: () => _controller.start()),
          const SizedBox(
            width: 10,
          ),
          _button(title: "Pause", onPressed: () => _controller.pause()),
          const SizedBox(
            width: 10,
          ),
          _button(title: "Resume", onPressed: () => _controller.resume()),
          const SizedBox(
            width: 10,
          ),
          _button(
              title: "Restart",
              onPressed: () => _controller.restart(duration: _duration))
        ],
      ),

    );

  }

}

Widget _button({required String title, VoidCallback? onPressed}) {
  return Expanded(
      child: ElevatedButton(
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple),
        ),
        onPressed: onPressed,
      ));
}
