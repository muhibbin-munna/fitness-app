import 'package:fitness_app/constants.dart';
import 'package:fitness_app/model/workout_list.dart';
import 'package:fitness_app/widgets/round-button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

class CountdownPage extends StatefulWidget {
  Choice choices;
  CountdownPage(this.choices);

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage>
    with TickerProviderStateMixin {

  late AnimationController controller;

  bool isPlaying = false;

  String get countText {
    Duration count = controller.duration! * controller.value;
    return controller.isDismissed
    // ? '${(controller.duration!.inMinutes % 60).toString().padLeft(2, '0')}:${(controller.duration!.inSeconds % 60).toString().padLeft(2, '0')}:${(controller.duration!.inMilliseconds % 100).toString().padLeft(2, '0')}'

    // : '${(count.inMinutes % 60).toString().padLeft(2, '0')}:${(count.inSeconds % 60).toString().padLeft(2, '0')}:${(count.inMilliseconds%1000 ).toString().padLeft(2, '0').characters.take(2)}';
        ? '${(controller.duration!.inMinutes % 60).toString().padLeft(2, '0')}:${(controller.duration!.inSeconds % 60).toString().padLeft(2, '0')}'
        : '${(count.inMinutes % 60).toString().padLeft(2, '0')}:${(count.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  double progress = 1.0;

  void notify() {
    if (countText == '00:00') {
      FlutterRingtonePlayer.playNotification();
    }
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.choices.reps),
    );

    controller.addListener(() {
      notify();
      if (controller.isAnimating) {
        setState(() {
          progress = controller.value;
        });
      } else {
        setState(() {
          progress = 1.0;
          isPlaying = false;
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  int current_index= 0;
  @override
  Widget build(BuildContext context) {

    List<Widget> _mywidgets = [
      Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey.shade300,
                      value: progress,
                      strokeWidth: 6,
                    ),
                  ),
                  AnimatedBuilder(
                    animation: controller,
                    builder: (context, child) => Text(
                      countText,
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: kTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (controller.isAnimating) {
                        controller.stop();
                        setState(() {
                          isPlaying = false;
                        });
                      } else {
                        controller.reverse(
                            from: controller.value == 0 ? 1.0 : controller.value);
                        setState(() {
                          isPlaying = true;
                        });
                      }
                    },
                    child: RoundButton(
                      icon: isPlaying == true ? Icons.pause : Icons.play_arrow,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.reset();
                      setState(() {
                        isPlaying = false;
                      });
                    },
                    child: RoundButton(
                      icon: Icons.stop,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    ];
    return Scaffold(
        backgroundColor: kMainColor,
        appBar: AppBar(
          title: const Text('Workouts'),
          iconTheme: IconThemeData(color: kTextColor),
          backgroundColor: kSecondaryColor,
        ),
        body: _mywidgets.elementAt(widget.choices.type),
        floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.navigate_next),
            backgroundColor: new Color(0xFFE57373),
            onPressed: (){
              setState(() {
                current_index++;
                controller.reset();
                setState(() {
                  isPlaying = false;
                });
                controller = AnimationController(
                  vsync: this,
                  duration: Duration(seconds: widget.choices.reps),
                );
                print(current_index);
              });

            }
        )
      // Column(
      //   children: [
      //     Expanded(
      //       child: Stack(
      //         alignment: Alignment.center,
      //         children: [
      //           SizedBox(
      //             width: 300,
      //             height: 300,
      //             child: CircularProgressIndicator(
      //               backgroundColor: Colors.grey.shade300,
      //               value: progress,
      //               strokeWidth: 6,
      //             ),
      //           ),
      //           AnimatedBuilder(
      //             animation: controller,
      //             builder: (context, child) => Text(
      //               countText,
      //               style: TextStyle(
      //                 fontSize: 60,
      //                 fontWeight: FontWeight.bold,
      //                 color: kTextColor,
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           GestureDetector(
      //             onTap: () {
      //               if (controller.isAnimating) {
      //                 controller.stop();
      //                 setState(() {
      //                   isPlaying = false;
      //                 });
      //               } else {
      //                 controller.reverse(
      //                     from: controller.value == 0 ? 1.0 : controller.value);
      //                 setState(() {
      //                   isPlaying = true;
      //                 });
      //               }
      //             },
      //             child: RoundButton(
      //               icon: isPlaying == true ? Icons.pause : Icons.play_arrow,
      //             ),
      //           ),
      //           GestureDetector(
      //             onTap: () {
      //               controller.reset();
      //               setState(() {
      //                 isPlaying = false;
      //               });
      //             },
      //             child: RoundButton(
      //               icon: Icons.stop,
      //             ),
      //           ),
      //         ],
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
