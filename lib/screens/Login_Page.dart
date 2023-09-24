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
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 150,left: 40 , right: 40,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Login", style: GoogleFonts.lato(
                fontSize: 60,
                fontWeight: FontWeight.w600,
              ),),

              SizedBox(height: 80,),

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

                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),

                  child: Center(child:isloading ? CircularProgressIndicator() :Text("Submit",style: GoogleFonts.lato(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                  ),),),
                ),
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Signup_page())),
                    child: Text("Don't have account? Create Account" , style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                  ),
                ),
              )

            ] ,
          ),
        ),
      ),
    );
  }
}
