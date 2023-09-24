import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({super.key});

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          appbar(),

          Container(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset("asset/avatar 1.png")),

                const SizedBox(width: 20,),

                Container(
                  margin: EdgeInsets.only(top: 15),
                    height: 80,
                    width: 80,
                    child: Image.asset("asset/avatar 0.png")),

                const SizedBox(width: 20,),

                SizedBox(
                    height: 80,
                    width: 80,
                    child: Image.asset("asset/avatar 2.png"))

              ],
            ),
          ),

          SizedBox(height: 50,),

          Text("You Placed #1 in the Bronze",style: GoogleFonts.lato(
            fontSize: 22,
            fontWeight: FontWeight.w600
          ),),


          Text("League",style: GoogleFonts.lato(
              fontSize: 22,
              fontWeight: FontWeight.w600
          ),),

          SizedBox(height: 5,),

          Text("Only 5% of people claim that title",style: GoogleFonts.lato(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey
          ),),


          Text("each week . Impressive",style: GoogleFonts.lato(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey

          ),),

          SizedBox(
            height: 60,
          ),

          Container(
            // color: Colors.blue,
            width: 300,
            height: 45,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),

            child: Center(
              child: Text("Share",style: GoogleFonts.lato(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
              ),),
            ),
          ),

          SizedBox(height: 10,),

          Text("Continue",style: GoogleFonts.lato(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.blue

          ),),


        ],
      )
    );
  }

  appbar()
  {
    return Container(
      margin: EdgeInsets.only(top: 60,left: 15),
      // color: Colors.black,
      width: double.infinity,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("asset/avatar.png"),
          ),

          SizedBox(width: 50,),

          Text("Leaderboard" ,style: GoogleFonts.lato(
              fontSize: 24,
              fontWeight: FontWeight.w600
          ),),

          SizedBox(width: 50,),

          Container(
            width: 30,
            height: 30,
            child: Image.asset("asset/notification.png"),
          ),


        ],
      ),
    );
  }
}
