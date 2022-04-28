import 'package:fitness_app/constants.dart';
import 'package:fitness_app/model/workout_list.dart';
import 'package:fitness_app/ui/pages/countdown-page-all.dart';
import 'package:fitness_app/ui/pages/countdown-page.dart';
import 'package:fitness_app/ui/pages/timer_page.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

// class SelectCard extends StatelessWidget {
//   const SelectCard({Key? key, required this.choice}) : super(key: key);
//   final Choice choice;
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   // final TextStyle? textStyle = Theme.of(context).textTheme.displayLarge;
//   //   return Card(
//   //       color: Colors.lightGreenAccent,
//   //       child: Center(child: Column(
//   //           mainAxisSize: MainAxisSize.min,
//   //           crossAxisAlignment: CrossAxisAlignment.center,
//   //           children: <Widget>[
//   //
//   //             Text(choice.title),
//   //             Text(choice.reps),
//   //           ]
//   //       ),
//   //       )
//   //   );
//   // }
// }

List<Widget> _mywidgets = [];
class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        title: const Text('Workouts'),
        iconTheme: IconThemeData(color: kTextColor),
        backgroundColor: kSecondaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ListView.builder(
          itemCount: kChoises.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                print(index);
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      CountdownPageAll(kChoises,index),
                ));
              },
              child: kChoises[index].type==0?
              Container(
                margin: EdgeInsets.only(left: 20, right: 10, bottom: 8),
                height: 100,
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30.0,10,10,10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(kChoises[index].icon,height: 100.0,
                        width: 100.0,),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                          '${kChoises[index].title} \n00:${kChoises[index].reps}',
                          // '${kChoises[index].reps}',
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ),
              ) : Container(
                margin: EdgeInsets.only(left: 20, right: 10, bottom: 8),
                height: 100,
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30.0,10,10,10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(kChoises[index].icon,height: 100.0,
                        width: 100.0,),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                          child: Text(
                              '${kChoises[index].title} \nx${kChoises[index].reps}',
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ))),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 200,
          height: 50,
          child: TextButton(
            onPressed: () {
              // Navigator.of(context).push(new MaterialPageRoute(
              //   builder: (BuildContext context) => ReportsView(),
              // ));
              // setState(() => _index = 1);
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) =>
                  CountdownPageAll(kChoises,0),));
            },
            child: Text("GO",style: TextStyle(color: kTextColor, fontSize: 20)),

          ),
          decoration: BoxDecoration(
              color: kButtonColor,

              borderRadius: BorderRadius.all(Radius.circular(50))
          ),
        ),
      ),
    );
  }
}
