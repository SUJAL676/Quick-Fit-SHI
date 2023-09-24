// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:newidea/notification.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//   NotificationService notificationService = NotificationService();
//
//   @override
//   void initState() {
//     super.initState();
//     notificationService.initialiseNotification();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: ElevatedButton(
//               onPressed: (){
//                 notificationService.sendNotification("title", "body");
//               },
//               child: Text("Notification"),
//             ),
//           ),
//
//           SizedBox(height: 10,),
//
//           ElevatedButton(onPressed: (){
//             notificationService.secheduleNotification("title", "body");
//           } ,
//               child: Text("Schedule")),
//
//           SizedBox(height: 10,),
//
//           ElevatedButton(onPressed: (){
//             notificationService.stopNotification();
//           } ,
//               child: Text("Stop"))
//         ],
//       ),
//
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newidea/Summary_Activity_tile.dart';
import 'package:newidea/screens/jumping_jack_screen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
        child: SizedBox(
          child: Container(
            // color: Colors.blue,
            width: double.infinity,
            margin: EdgeInsets.only(top: 60),
            padding: EdgeInsets.only(top: 20,left: 25,right: 20),
            child: Column(
              children: [

                Row(
                  children: [
                    CircleAvatar(child: Image.asset("asset/avatar.png"),radius: 25,),
                    SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning!",style: GoogleFonts.lato(fontSize: 12,color: Colors.black54, fontWeight: FontWeight.w500),),
                        Text("Thomas Smith" , style: GoogleFonts.lato(fontSize: 16 , fontWeight: FontWeight.w600),)
                      ],
                    ),
                    Expanded( 
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset("asset/Vector.png"),
                        ),
                      ),
                    )
                  ],
                ),

                SizedBox(height: 20,),

                Container(
                  padding: EdgeInsets.only(right: 10),
                  width: double.infinity,
                  height: 250,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Image.asset("asset/women.png",height: 200,),
                      ),

                      Align(
                        alignment: Alignment.bottomRight,
                        child: InkWell(
                          onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Jumping_Jack_Screen())),
                          child: Container(
                            width: 150,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),

                            child: Center(child: Text("START CHALLENGE" , style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.w500
                            ),)),
                            // color: Colors.blueAccent,
                          ),
                        )
                      ),


                      Container(
                        margin: EdgeInsets.only(top: 40, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Challenges of the Day",style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                            ),),

                            SizedBox(height: 10,),

                            Text("Jumping Jacks Challenge",style: GoogleFonts.lato(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.blueAccent
                            ),),

                            SizedBox(height: 5,),

                            Text("Jumping jacks are quick and",style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 12
                            ),),

                            Text("effective way to get your heart rate",style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 12
                            ),),

                            Text("up and activate various muscle",style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 12
                            ),),

                            Text("groups",style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 12
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: 40,),

                Container(
                  // color: Colors.blueAccent,
                  width: double.infinity,
                  height: 700,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("SUMMARY ACTIVITY",style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600,
                              fontSize: 20
                          ),),

                          Text("See All",style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue
                          ),)
                        ],
                      ),

                      SizedBox(height: 25,),

                      SizedBox(
                      width: double.infinity,

                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context,index)
                          {
                            return tiltes[index];
                          },
                        ),
                      )
                    ],
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }


}

