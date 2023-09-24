import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newidea/Navigator.dart';

class Jumping_Jack_Screen extends StatefulWidget {
  const Jumping_Jack_Screen({super.key});

  @override
  State<Jumping_Jack_Screen> createState() => _Jumping_Jack_ScreenState();
}

class _Jumping_Jack_ScreenState extends State<Jumping_Jack_Screen> {

  String hoursString = "00", minuteString = "00", secondString = "00";

  bool isOn=false;

  int hours = 0, minutes = 0, seconds = 00;
  bool isTimerRunning = false, isResetButtonVisible = false;
  late Timer _timer;


  void startTimer() {
    setState(() {
      isTimerRunning = true;
    });
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _startSecond();
    });
  }

  void pauseTimer() {
    _timer.cancel();
    setState(() {
      isTimerRunning = false;
    });
    isResetButtonVisible = checkValues();
  }

  void _startSecond() {
    setState(() {
      if (seconds < 59) {
        seconds++;
        secondString = seconds.toString();
        if (secondString.length == 1) {
          secondString = "0" + secondString;
        }
      } else {
        _startMinute();
      }
    });
  }

  void _startMinute() {
    setState(() {
      if (minutes < 59) {
        seconds = 0;
        secondString = "00";
        minutes++;
        minuteString = minutes.toString();
        if (minuteString.length == 1) {
          minuteString = "0" + minuteString;
        }
      } else {
        // _starHour();
      }
    });
  }


  void resetTimer() {
    _timer.cancel();
    setState(() {
      seconds = 0;
      minutes = 0;
      hours = 0;
      secondString = "00";
      minuteString = "00";
      hoursString = "00";
      isResetButtonVisible = false;
    });
  }

  bool checkValues() {
    if (seconds != 0 || minutes != 0 || hours != 0) {
      return true;
    } else {
      return false;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          appbar(),

          SizedBox(height: 25,),

          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("asset/jumping_jack.png"),

                content(),

                SizedBox(height: 10,),

                timer()

              ],
            ),
          )






        ],
      ),
    );
  }

  SizedBox timer()
  {
    return SizedBox(
      // color: Colors.black,
      width: double.infinity,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Text("Start Timer",style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 2
          ),),

          Text("$minuteString : $secondString",style: GoogleFonts.openSans(
            fontSize: 26.5,
            fontWeight: FontWeight.w600
          ),),

          SizedBox(height: 10,),

          InkWell(
            onTap: (){
              if(isOn)
                {
                  isOn=false;
                  pauseTimer();

                }
              else{
                isOn=true;
                startTimer();
              }

            },

            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: isOn ? Center(child: Icon(Icons.pause,color: Colors.white,)) :
                  Center(child: Icon(Icons.play_arrow ,color: Colors.white,),) ,
            ),
          ),

          SizedBox(height: 20,),

          InkWell(
            onTap: (){
              setState(() {
                isOn=false;
                resetTimer();
              });
            },
            child: Container(
              // color: Colors.blue,
              width: 200,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),

              child: Center(
                child: Text("End Challenge",style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),),
              ),
            ),
          )


        ],
      ),
    );
  }

  content()
  {
    return SizedBox(
      width: double.infinity,
      height: 190,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Jumping   jacks   are   quick   and   effective   way  8  to  get    your   heart   rate    up   and    activate        various    ,      muscle      groups.    Perform     3    sets    of   20   jumping   jacks    each     throughout     the     day     to    boost   your  energy ,   improve   circulation ,   and   get    a    burst    of   cardio   in   just   a   few   minutes!",
            style: GoogleFonts.lato(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey
          ),),

          // Text("get   your   heart   rate   up   and   activate  various,",style: GoogleFonts.lato(
          //     fontSize: 16,
          //     fontWeight: FontWeight.w600,
          //     color: Colors.grey
          // ),),
          //
          // Text("muscle   groups .   Perform   3  sets  of  20  jumping",style: GoogleFonts.lato(
          //     fontSize: 16,
          //     fontWeight: FontWeight.w600,
          //     color: Colors.grey
          // ),),
          //
          // Text("jacks   each   throughout   the   day   to  boost  your",style: GoogleFonts.lato(
          //     fontSize: 16,
          //     fontWeight: FontWeight.w600,
          //     color: Colors.grey
          // ),),
          //
          // Text("energy,  improve  circulation,  and  get  a  burst  of",style: GoogleFonts.lato(
          //     fontSize: 16,
          //     fontWeight: FontWeight.w600,
          //     color: Colors.grey
          // ),),
          //
          // Text("cardio  in  just  a  few  minutes!",style: GoogleFonts.lato(
          //     fontSize: 16,
          //     fontWeight: FontWeight.w600,
          //     color: Colors.grey
          // ),)


        ],
      ),

    );
  }

  appbar()
  {
    return Container(
      margin: const EdgeInsets.only(top: 60,left: 20,right: 20),
      // color: Colors.black,
      width: double.infinity,
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Navigation_screen() ) ),
                      child: Container(
                        margin: const EdgeInsets.only(top: 1),
                        padding: const EdgeInsets.only(top: 4),
                        width: 15,
                        height: 15,
                        child: Image.asset("asset/left_arrow_black.png"),
                      ),
                    ),

                    const SizedBox(width: 8,),

                    Text("back" ,style: GoogleFonts.lato(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w400
                    ),),


                  ],
                ),

                SizedBox(height: 10,),

                Text("Instructions" , style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),)



              ],
            ),
          ),

          const Expanded(
            child: Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("asset/avatar.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
