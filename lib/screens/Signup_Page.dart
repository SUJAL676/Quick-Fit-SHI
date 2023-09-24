import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newidea/Auth.dart';
import 'package:newidea/Edit_text_field.dart';
import 'package:newidea/Navigator.dart';

class Signup_page extends StatefulWidget {
  const Signup_page({super.key});

  @override
  State<Signup_page> createState() => _Signup_pageState();
}

class _Signup_pageState extends State<Signup_page> {

  bool isloading=false;

  TextEditingController email =TextEditingController();
  TextEditingController pass =TextEditingController();
  TextEditingController username =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(top: 150,left: 40 , right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text("Sign Up", style: GoogleFonts.lato(
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

               Edit_Text_Field(controller: username,
                 hint_text: 'username',
                 ispass: false,
                 type: TextInputType.text,),

               SizedBox(height: 30,),

               InkWell(
                 onTap: () async {
                   if(email.text.isNotEmpty)
                     {
                       setState(() {
                         isloading=true;
                       });
                       String a = await Auth().signUpUser(email: email.text.toString(),  pass: pass.text.toString(), username: username.text.toString());
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
               )

             ] ,
          ),
        ),
      ),

    );
  }
}
