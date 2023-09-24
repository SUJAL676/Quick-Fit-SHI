import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dasboard_screen extends StatefulWidget {
  const Dasboard_screen({super.key});

  @override
  State<Dasboard_screen> createState() => _Dasboard_screenState();
}

class _Dasboard_screenState extends State<Dasboard_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          appbar(),
          Center(
            child: Text("Track your Progress" , style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 3
            ),),
          ),

          SizedBox(height: 30,),

          Container(
            padding: EdgeInsets.only(left: 15,right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Text("Statistics",style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),),

                SizedBox(height: 20,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    contain(iconPath: "asset/mdi_fire.png", name: "27", desc: "Day streak", small: false),
                    SizedBox(width: 30,),
                    contain(iconPath: "asset/ion_time.png", name: "65 hrs", desc: "Time Spent", small: false)
                  ],

                ),

                SizedBox(height: 20,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    contain(iconPath: "asset/bronze.png", name: "Bronze", desc: "Current League", small: false),
                    SizedBox(width: 30,),
                    contain(iconPath: "asset/thun.png", name: "14325 hrs", desc: "Total XP", small: true)
                  ],

                ),



                SizedBox(height: 40,),

                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("This week",style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),),
                ),

                SizedBox(height: 20,),

                Container(
                  child: Stack(
                    children: [
                      Positioned(
                        left : 109,
                        child: SizedBox(
                          height : 30,
                            child: Image.asset("asset/indicator.png")),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                          child: Image.asset("asset/week.png",))
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.only(left:5,right: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      week(first: "MON", second: "12"),
                      SizedBox(width: 18,),
                      week(first: "TUE", second: "13"),
                      SizedBox(width: 18,),
                      week(first: "WED", second: "14"),
                      SizedBox(width: 18,),
                      week(first: "THU", second: "15"),
                      SizedBox(width: 18,),
                      week(first: "FRI", second: "16"),
                      SizedBox(width: 18,),
                      week(first: "SAT", second: "17"),
                      SizedBox(width: 18,),
                      week(first: "SUN", second: "18"),
                    ],
                  ),
                )

              ],
            ),
          )




        ],
      ),

    );
  }

  appbar()
  {
    return Container(
      margin: const EdgeInsets.only(top: 60,left: 15,right: 10),
      // color: Colors.black,
      width: double.infinity,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("asset/avatar.png"),
          ),

          SizedBox(width: 80,),

          Text("Dashboard" ,style: GoogleFonts.lato(
              fontSize: 24,
              fontWeight: FontWeight.w600
          ),),

              SizedBox(width: 60,),

              Container(
                width: 30,
                height: 30,
                child: Image.asset("asset/notification.png"),
        ),


        ],
      ),
    );
  }

  Container contain({
    required String iconPath,
    required String name,
    required String desc,
    required bool small,

  })
  {
    return Container(
      height: 60,
      width: 150,
      padding: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(
          color: Colors.grey
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 8),
                  padding: EdgeInsets.only(top: 2),
                  width: small? 20 :35,
                  child: Image.asset(iconPath)),

              SizedBox(width: 5,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(name , style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,

                  ),),
                  Text(desc , style: GoogleFonts.lato(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54
                  ),)
                ],
              )

            ],
          )

        ],
      ),
    );
  }

  week({
    required String first,
    required String second
  })
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(first , style: GoogleFonts.lato(
            fontSize: 14,
            fontWeight: FontWeight.w700,

        ),),
        Text(second , style: GoogleFonts.lato(
            fontSize: 12,
            fontWeight: FontWeight.w500,

        ),)
      ],
    );
  }

}
