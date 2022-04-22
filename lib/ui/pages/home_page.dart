import 'package:fitness_app/constants.dart';
import 'package:fitness_app/ui/pages/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kMainColor,
      appBar: AppBar(
        elevation: 0.0,
        bottomOpacity: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu, color: Colors.white,),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip:
                MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
        ),
        iconTheme: IconThemeData(color: kTextColor),
        backgroundColor: kSecondaryColor,
        title: const Text("HOME WORKOUT",style: TextStyle(color: kTextColor)),
      ),
      drawer: SafeArea(
        child: Drawer(
            child: Container(
              color: kSecondaryColor,
              child: ListView(
                children: [
                  Container(
                    height: 150,

                    child: FittedBox(
                      child: Image.asset('assets/img1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 6.0),
                    child: ListTile(
                        leading:SvgPicture.asset(
                          'assets/icons/plans.svg',
                          height: 25.0,
                          width: 25.0,
                          color: kTextColor,
                          allowDrawingOutsideViewBox: true,
                        ),
                        title: const Text("Training Plans",style: TextStyle(color: kTextColor)),
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          Navigator.of(context).pop();
                          // Navigator.of(context).push(new MaterialPageRoute(
                          //   builder: (BuildContext context) => DownloadedBooks(),
                          // ));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 6.0),
                    child: ListTile(
                        leading:SvgPicture.asset(
                          'assets/icons/plans.svg',
                          height: 25.0,
                          width: 25.0,
                          color: kTextColor,
                          allowDrawingOutsideViewBox: true,
                        ),
                        title: const Text("Training Plans",style: TextStyle(color: kTextColor)),
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          Navigator.of(context).pop();
                          // Navigator.of(context).push(new MaterialPageRoute(
                          //   builder: (BuildContext context) => DownloadedBooks(),
                          // ));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 6.0),
                    child: ListTile(
                        leading:SvgPicture.asset(
                          'assets/icons/plans.svg',
                          height: 25.0,
                          width: 25.0,
                          color: kTextColor,
                          allowDrawingOutsideViewBox: true,
                        ),
                        title: const Text("Training Plans",style: TextStyle(color: kTextColor)),
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          Navigator.of(context).pop();
                          // Navigator.of(context).push(new MaterialPageRoute(
                          //   builder: (BuildContext context) => DownloadedBooks(),
                          // ));
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 6.0, 10.0, 6.0),
                    child: ListTile(
                        leading:SvgPicture.asset(
                          'assets/icons/plans.svg',
                          height: 25.0,
                          width: 25.0,
                          color: kTextColor,
                          allowDrawingOutsideViewBox: true,
                        ),
                        title: const Text("Training Plans",style: TextStyle(color: kTextColor)),
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          Navigator.of(context).pop();
                          // Navigator.of(context).push(new MaterialPageRoute(
                          //   builder: (BuildContext context) => DownloadedBooks(),
                          // ));
                        }),
                  ),


                  const Divider(
                    thickness: 2.0,
                  ),
                  const SizedBox(
                    height: 5,
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  //   crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.only(bottom: 10.0),
                  //       child: RawMaterialButton(
                  //         onPressed: () {
                  //           _launchSocial('fb://profile/2335534916564184', 'https://www.facebook.com/WOMSofficial/');
                  //         },
                  //         elevation: 5.0,
                  //         fillColor: Colors.white,
                  //         child: SvgPicture.asset(
                  //           'assets/icons/facebook.svg',
                  //           height: 20.0,
                  //           width: 20.0,
                  //           allowDrawingOutsideViewBox: true,
                  //         ),
                  //         padding: EdgeInsets.all(15.0),
                  //         shape: CircleBorder(),
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.only(bottom: 10.0),
                  //       child: RawMaterialButton(
                  //         onPressed: () {
                  //           _launchSocial('https://instagram.com/woms_official?igshid=5gt7a2ddhtvc', '');
                  //         },
                  //         elevation: 5.0,
                  //         fillColor: Colors.white,
                  //         child: SvgPicture.asset(
                  //           'assets/icons/instagram.svg',
                  //           height: 20.0,
                  //           width: 20.0,
                  //           allowDrawingOutsideViewBox: true,
                  //         ),
                  //         padding: EdgeInsets.all(15.0),
                  //         shape: CircleBorder(),
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.only(bottom: 10.0),
                  //       child: RawMaterialButton(
                  //         onPressed: () {
                  //           _launchSocial('https://youtube.com/channel/UCjb-amyNp-lzokdiCR6ZkKw', '');
                  //         },
                  //         elevation: 5.0,
                  //         fillColor: Colors.white,
                  //         child: SvgPicture.asset(
                  //           'assets/icons/youtube.svg',
                  //           height: 20.0,
                  //           width: 20.0,
                  //           allowDrawingOutsideViewBox: true,
                  //         ),
                  //         padding: EdgeInsets.all(15.0),
                  //         shape: CircleBorder(),
                  //       ),
                  //     ),
                  //   ],
                  // )

                ],
              ),
            )),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              FocusScope.of(context)
                  .requestFocus(new FocusNode());
              // Navigator.of(context)
              //     .push(new MaterialPageRoute(
              //   builder: (BuildContext context) =>
              //       SecondPage(),
              // ));
            },
            child: Container(
              margin: EdgeInsets.only(
                  left: 20, right: 10, bottom: 8),
              width: double.infinity,
              height: 150,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  const Text("WEEK GOAL",style: TextStyle(color: kTextColor, fontSize: 20)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("Set weekly goals for a better body shape",style: TextStyle(color: kTextColor, fontSize: 15)),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        // Navigator.of(context).push(new MaterialPageRoute(
                        //   builder: (BuildContext context) => ReportsView(),
                        // ));
                        // setState(() => _index = 1);
                      },
                      child: Text("SET A GOAL",style: TextStyle(color: kTextColor, fontSize: 20)),

                    ),
                    decoration: BoxDecoration(
                        color: kButtonColor,

                        borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: kSecondaryColor,

                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),

            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {

              Navigator.of(context)
                  .push(new MaterialPageRoute(
                builder: (BuildContext context) =>
                    SecondPage(),
              ));
            },
            child: Container(
              margin: EdgeInsets.only(
                  left: 20, right: 10, bottom: 8),
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img1.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.5), BlendMode.dstATop),
                ),
                  borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  const Text("FULL BODY",style: TextStyle(color: kTextColor, fontSize: 25, fontWeight: FontWeight.w900, )),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("7x4 CHALLENGES",style: TextStyle(color: kTextColor, fontSize: 15)),

                ],

              ),

            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 8, left: 20, right: 10, bottom: 8),
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img1.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.5), BlendMode.dstATop),
              ),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const Text("ABS AND CHEST",style: TextStyle(color: kTextColor, fontSize: 25, fontWeight: FontWeight.w900, )),
                const SizedBox(
                  height: 5,
                ),
                const Text("7x4 CHALLENGES",style: TextStyle(color: kTextColor, fontSize: 15)),

              ],

            ),

          ),
          Container(
            margin: EdgeInsets.only(
                top: 8, left: 20, right: 10, bottom: 8),
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img1.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.5), BlendMode.dstATop),
              ),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const Text("ARM AND BACK",style: TextStyle(color: kTextColor, fontSize: 25, fontWeight: FontWeight.w900, )),
                const SizedBox(
                  height: 5,
                ),
                const Text("7x4 CHALLENGES",style: TextStyle(color: kTextColor, fontSize: 15)),

              ],

            ),

          ),
          Container(
            margin: EdgeInsets.only(
                top: 8, left: 20, right: 10, bottom: 8),
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img1.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.5), BlendMode.dstATop),
              ),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const Text("LEGS",style: TextStyle(color: kTextColor, fontSize: 25, fontWeight: FontWeight.w900, )),
                const SizedBox(
                  height: 5,
                ),
                const Text("7x4 CHALLENGES",style: TextStyle(color: kTextColor, fontSize: 15)),

              ],

            ),

          ),
          Container(
            margin: EdgeInsets.only(
                top: 8, left: 20, right: 10, bottom: 8),
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img1.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.5), BlendMode.dstATop),
              ),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const Text("CREATE YOUR OWN\nTRAINING PLAN",textAlign: TextAlign.center,style: TextStyle(color: kTextColor, fontSize: 25, fontWeight: FontWeight.w900, )),


              ],

            ),

          ),
        ],
      ),
    );
  }
}
