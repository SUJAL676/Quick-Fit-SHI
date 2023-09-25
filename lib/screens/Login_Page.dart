import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newidea/Navigator.dart';
import 'package:newidea/screens/Signup_Page.dart';

import '../Auth.dart';
import '../Edit_text_field.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {

  bool isloading=false;

  TextEditingController email =TextEditingController();
  TextEditingController pass =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150), bottomRight: Radius.circular(150))
              ),),

            Container(
                width: 200,
                margin: EdgeInsets.only(top: 70,left: 20),
                // padding: EdgeInsets.symmetric(horizontal: 100),
                child: Image.asset("asset/QuickFit_white.png")),

            Container(
              margin: EdgeInsets.only(top: 150
              ),
              padding: EdgeInsets.all(40),
              child: Image.asset("asset/login.png"),
            ),

            login()
          ],
        ),
      ),
    );
  }

  login()
  {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(top: 480,left: 40 , right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Welcome back", style: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.deepPurple
          ),),

          SizedBox(height: 20,),

          Edit_Text_Field(controller: email,
            hint_text: 'email',
            ispass: false,
            type: TextInputType.text,),

          SizedBox(height: 30,),

          Edit_Text_Field(controller: pass,
            hint_text: 'pass',
            ispass: false,
            type: TextInputType.text,),

          SizedBox(height: 30,),


          SizedBox(height: 30,),

          InkWell(
            onTap: () async {
              if(email.text.isNotEmpty && pass.text.isNotEmpty)
              {
                setState(() {
                  isloading=true;
                });
                String a = await Auth().login_with_user(email: email.text.toString(),  pass: pass.text.toString());
                print(a);

                if(a!="Sucess")
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(a)));
                }

                else{
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Navigation_screen()));
                }

                setState(() {
                  isloading=false;
                });

              }

            },
            child: Container(
              // color: Colors.blue,
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),

              child: Center(child:isloading ? CircularProgressIndicator() :Text("Submit",style: GoogleFonts.lato(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
              ),),),
            ),
          ),

          SizedBox(height: 20,),

          Expanded(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup_page())),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account?" , style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                  ),),
                  SizedBox(width: 5,),
                  Text("Create Account" , style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    color: Colors.deepPurple
                  ),)
                ],
              ),
            ),
          )

        ] ,
      ),
    );
  }
}
