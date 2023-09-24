import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


List tiltes=[

  Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.only(top: 15,left: 10),
    width: 250,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.grey,
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
            SizedBox(
                height: 30,
                width: 25,
                child: Image.asset("asset/mdi_run.png")),

            SizedBox(width: 5,),

            Text("Running",style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),),

            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(top:6,right: 10),
                  width: 10,
                  child: Image.asset("asset/Arrow 1.png"),
                ),
              ),
            )
          ],
        ),

        SizedBox(
          height: 20,
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            small(iconPath: 'asset/distance.png',
                name: 'Distance',
                desc: '3.01 KM'),
            SizedBox(width: 20,),
            small(iconPath: 'asset/tabler_space.png',
                name: 'Avg Pace',
                desc: '7:21/KM')
          ],
        ),

        SizedBox(height: 15,),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            small(iconPath: 'asset/up.png',
                name: 'Moving Time',
                desc: '40 : 12'),
            SizedBox(width: 20,),
            small(iconPath: 'asset/uil_heart-rate.png',
                name: 'Avg Heart Rate',
                desc: '120 Bpm')
          ],
        )
      ],
    ),
    // color: Colors.blue,
  )

  ,

  Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.only(top: 15,left: 10),
    width: 250,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          color: Colors.grey,
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
            SizedBox(
                height: 30,
                width: 25,
                child: Image.asset("asset/health_icon.png")),

            SizedBox(width: 5,),

            Text("Body Workout",style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),),

            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(top:6,right: 10),
                  width: 10,
                  child: Image.asset("asset/Arrow 1.png"),
                ),
              ),
            )
          ],
        ),

        SizedBox(
          height: 20,
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            small(iconPath: 'asset/upper_body.png',
                name: 'Upper Body',
                desc: 'Push-up'),
            SizedBox(width: 20,),
            small(iconPath: 'asset/up.png',
                name: 'Moving Time',
                desc: '40 : 12')
          ],
        ),

        SizedBox(height: 15,),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            small(iconPath: 'asset/body_balance.png',
                name: 'Body Balance',
                desc: 'Lunge'),
            SizedBox(width: 20,),
            small(iconPath: 'asset/uil_heart-rate.png',
                name: 'Avg Heart Rate',
                desc: '120 Bpm')
          ],
        )
      ],
    ),
    // color: Colors.blue,
  )



];




Container small({
  required String iconPath,
  required String name,
  required String desc,

})
{
  return Container(
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
                width: 10,
                child: Image.asset(iconPath)),

            SizedBox(width: 5,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(name , style: GoogleFonts.lato(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54
                ),),
                Text(desc , style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),)
              ],
            )

          ],
        )

      ],
    ),
  );
}