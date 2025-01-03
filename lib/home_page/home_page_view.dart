import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SafeArea(child: Scaffold(

body: LayoutBuilder(builder: (context,constraints){
       if(width > 600){
         return DeskTopView();
       }

  else{
    return MobileView();
  }

}),
    ));
  }
}

class DeskTopView extends StatelessWidget {
  const DeskTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.darken),
            child: Image.asset(
              'images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 16.0,
          left: 16.0,
          right: 16.0,
          child:  Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  verticalDirection: VerticalDirection.down,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("DevTech",style: GoogleFonts.nunitoSans(fontSize: 32.0,color: Colors.white,fontWeight: FontWeight.bold),),
              Row(
                verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [    Text("Projects",style: GoogleFonts.nunitoSans(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.normal),),
              const    SizedBox(width: 16.0,),
                  Text("Contact",style: GoogleFonts.nunitoSans(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.normal),),
                ],
              )
                  ],
                ),
              ),
              heightSpacer(20.0),
              Text("Hi, I'M A",style: GoogleFonts.nunitoSans(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.normal),),
              Text("FLUTTER DEVELOPER.",style: GoogleFonts.nunitoSans(fontSize: 40.0,color: Colors.white,letterSpacing: -0.9,fontWeight: FontWeight.bold),overflow: TextOverflow.visible,),
              heightSpacer(20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  buttons("PROJECTS", Colors.amber, Colors.black),
                  widthSSpacer(26.0),
                  buttons("CONTACT", Colors.transparent, Colors.white),
                ],
              )

            ],
          ),
        ),




      ],
    );
  }
}


class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.darken),
            child: Image.asset(
              'images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 16.0,
          left: 16.0,
          right: 16.0,
          child:  Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  verticalDirection: VerticalDirection.down,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("DevTech",style: GoogleFonts.nunitoSans(fontSize: 32.0,color: Colors.white,fontWeight: FontWeight.bold),),
                    Icon(Icons.menu_outlined,color: Colors.white,size: 32.0,),

                    // Row(
                    //   verticalDirection: VerticalDirection.down,
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //
                    //   children: [    Text("Projects",style: GoogleFonts.nunitoSans(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.normal),),
                    //     const    SizedBox(width: 16.0,),
                    //     Text("Contact",style: GoogleFonts.nunitoSans(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.normal),),
                    //   ],
                    // )
                  ],
                ),
              ),
              heightSpacer(20.0),
              Text("Hi, I'M A",style: GoogleFonts.nunitoSans(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.normal),),
              Text("FLUTTER DEVELOPER.",style: GoogleFonts.nunitoSans(fontSize: 40.0,color: Colors.white,letterSpacing: -0.9,fontWeight: FontWeight.bold),overflow: TextOverflow.visible,),
              heightSpacer(20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  buttons("PROJECTS", Colors.amber, Colors.black),
                  widthSSpacer(26.0),
                  buttons("CONTACT", Colors.transparent, Colors.white),
                ],
              )





            ],
          ),
        ),




      ],
    );
  }
}
heightSpacer(h){
  return SizedBox(
    height: h,
  );
}
widthSSpacer(w){
  return SizedBox(
    width: w,
  );
}
buttons(label,containerColor,textColor){
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: containerColor,
      borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(10, 20),top: Radius.elliptical(10, 20) ),
      border: Border.all(width: 1.0,color: Colors.white)
    ),
    padding: EdgeInsets.symmetric(horizontal: 26.0,vertical: 16.0),
    child: Text(label,style: GoogleFonts.nunitoSans(
      fontWeight: FontWeight.bold,
      color: textColor,
      fontSize: 16.0,
    ),textAlign: TextAlign.center,),
  );
}
projectContainer(){
  

}