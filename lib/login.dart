import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/vivid-blurred-colorful-wallpaper-background.jpg',),fit: BoxFit.cover
          )
      )
      ,child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            padding:const EdgeInsets.only(left: 35,top: 135),
            child:  Text(
              'Welcome \nBack,Nishchal!',
              style: GoogleFonts.nunito(
                color: Colors.white,
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 48,
                fontWeight: FontWeight.w700,

              ),
            ),)
          , SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,left: 35,right: 35),
                child: Column(
                  children: [
                    TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Email",
                            hoverColor: Colors.white
                            ,border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                        )
                    )
                    ,const SizedBox(
                      height: 30,
                    ), TextField(
                      obscureText: true,
                      decoration: InputDecoration(

                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Password"
                          ,border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    )
                    , Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black,
                          child: IconButton(
                            onPressed: (){}
                            ,icon: const Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    )
                    ,const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){Navigator.pushNamed(context, 'register');}, child: const Text("New User ?",style: TextStyle(decoration: TextDecoration.underline,fontSize: 18,color: Colors.white))),
                        TextButton(onPressed: (){}, child: const Text("Forgot password",style: TextStyle(decoration: TextDecoration.underline,fontSize: 18,color: Colors.white))),  ],
                    )
                    ,const SizedBox(
                      height: 20,
                    )
                    , Row(
                      children: const [
                        Text("Made by Rishabh Kumar Sharma",style: TextStyle(color: Colors.white),)
                      ],
                    )

                  ],
                )
            ),
          )
        ],
      ),

    ),
    );
  }
}

