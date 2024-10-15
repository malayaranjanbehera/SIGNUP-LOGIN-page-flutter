import 'package:flutter/material.dart';
import 'package:signup_login_page/HomePage.dart';
import 'package:signup_login_page/signUp.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
 Color backgraoundColor=Color(0xFFF84567);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgraoundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 50),
            child: Row(
              children: [
                Text('ImmoDr',style: TextStyle(
                  fontSize: 50,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                ),
                Icon(
                  size: 45,
                    color: Colors.white,
                    Icons.water_drop_outlined),
                Text('ps',style: TextStyle(
                    fontSize: 50, fontWeight: FontWeight.w500,color: Colors.white),
                )
              ],
            ),
          ),

          //Container page:::::::::::::::::::::::::::::::::::
          Container(
            //one By One ::::::::::::::::::::::::::::::::::
            child: Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30,),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.black
                    ),),
                  SizedBox(height: 30,),
                  //Email:::::::::::::::::::::::::::>>>>>>>>>
                  Text(
                    'Email',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 23,
                        color: Colors.black
                    ),),
                TextFormField(
                  validator: (value){
                    return null;
                  

                  },
                  decoration: InputDecoration(
                      hintText: 'Enter Email',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.4)
                      )
                    )
                  ),
                ),
                // PassWord::::::::::::::::>>>>>>>>>>>>>
                  SizedBox(height: 20,),
                  Text(
                    'PassWord',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.black
                    ),),
                  TextFormField(
                    //passWord in dotter format like .............
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.4)
                            )
                        )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Forget PassWord ?',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black
                    ),),
                  SizedBox(height: 40,),

               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage(),));
                 },
                 child: Container(
                        child: Center(
                          child: Text('Sign in',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.white),),
                        ),
                        height: 60,
                        width: 370,
                       decoration: BoxDecoration(
                         color: backgraoundColor,
                         borderRadius: BorderRadius.circular(15)
                       ),
                      ),
               ),
                  //Dont have account::::::::::::::::::::>>>>>>>
                  SizedBox(height: 20,),
                  Row(
                   //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black),),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignupPage(),));
                        },
                        child:
                      Text('  Sign up',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: backgraoundColor),),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: 155,
                        color:Colors.grey.withOpacity(0.6) ,),
                      Text(' OR ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.grey.withOpacity(0.6)),),
                      Container(
                        height: 1,
                        width: 155,
                        color:Colors.grey.withOpacity(0.6) ,
                      ),
                    ],
                  ),
                  //Google, Facebook, Twitter account ::::::::::>>>>
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //FaceBook:::::::::::>>>>>>>
                     Container(
                       child: Icon(
                           Icons.facebook_outlined,
                         color: Colors.white,
                         size:35,
                       ),
                       height: 45,
                       width: 45,
                       decoration: BoxDecoration(
                         color: Colors.black,
                         borderRadius: BorderRadius.circular(5)
                       ),
                     ),

                      SizedBox(width: 15,),

                      //Google ::::::::::::::::::>>>>>>>

                      Container(
                        child: Icon(
                          Icons.mail_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      //Twitter:::::::::::::>>>>>>>>>>>>>>>>>
                      SizedBox(width: 15,),

                      Container(
                        child: Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 35,
                        ),
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),


                    ],
                  )
                  
                ],
              ),
            ),
            height: 718,
            width: double.maxFinite,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -15),
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.3)
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)

              )
            ),
          )
        ],
      ),

    );
  }
}
