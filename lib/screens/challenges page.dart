import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newidea/Navigator.dart';
import 'package:newidea/screens/jumping_jack_screen.dart';

class Challenges_Screen extends StatefulWidget {
  const Challenges_Screen({super.key});

  @override
  State<Challenges_Screen> createState() => _Challenges_ScreenState();
}

class _Challenges_ScreenState extends State<Challenges_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/jumping_jack_black.png"),
                        fit: BoxFit.fill
                    )
                )
            ),

            Container(
              margin: EdgeInsets.only(top: 60,left: 15,right: 15),
              // color: Colors.black,
              width: double.infinity,
              height: 70,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Navigation_screen())),
                    child: Container(
                      padding: EdgeInsets.only(top: 3),
                      width: 15,
                      height: 15,
                      child: Image.asset("asset/left_arrow.png"),
                    ),
                  ),

                  SizedBox(width: 8,),

                  Text("back" ,style: GoogleFonts.lato(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),),

                  Expanded(
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
            ),

            Center(
              child: Container(
                margin: EdgeInsets.only(top: 300),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Jumping Jacks",style: GoogleFonts.lato(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),),
                    Text("Challenge",style: GoogleFonts.lato(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.w800
                    ),),

                    SizedBox(height: 50,),

                    lower(),

                    SizedBox(height: 30,),

                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Jumping_Jack_Screen()));
                      },
                      child: Container(
                        // color: Colors.blue,
                        width: 300,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),

                        child: Center(
                          child: Text("Start Challenge",style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                          ),),
                        ),
                      ),
                    )


                  ],
                ),
              ),
            )


          ],
        ),);
  }

  lower()
  {
    return Container(
      // color: Colors.black,
      width: 300,
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          lower_lower(first: "3", second: "sets"),
          SizedBox(width: 50,),
          divider(),
          SizedBox(width: 30,),
          lower_lower(first: "Entry", second: "level"),
          SizedBox(width: 30,),
          divider(),
          SizedBox(width: 30,),
          lower_lower(first: "30-35", second: "minutes")
        ],
      ),
    );
  }

  lower_lower({
    required String first,
    required String second
})
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(first , style: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),),
        Text(second , style: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),)
      ],
    );
  }

  divider()
  {
    return Container(
      margin: EdgeInsets.only(top: 5),
      width: 4,
      height: 42,
      color: Colors.white,
    );
  }

}
