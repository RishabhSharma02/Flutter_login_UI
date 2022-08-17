import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Container( decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/vivid-blurred-colorful-wallpaper-background.jpg',),fit: BoxFit.cover
        )
    ),child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            padding:const EdgeInsets.only(left: 35,top: 135),
            child:  Text(
              'Welcome \nnew user!',
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
                      ,TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: "Confirm Password"
                            ,border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                        ),
                      )
                      ,const SizedBox(
                        height: 40,
                      )
                      ,Row(
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


                    ],
                  )

              )
          ),
        ],
      ),

    ),);
  }
}
