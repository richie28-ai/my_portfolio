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

body: LayoutBuilder(
    builder: (context,constraints){
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

class DeskTopView extends StatefulWidget {

  DeskTopView({super.key});

  @override
  State<DeskTopView> createState() => _DeskTopViewState();
}

class _DeskTopViewState extends State<DeskTopView> {
  final ScrollController _scrollController = ScrollController();
  void scrollLeft(){
    _scrollController.animateTo(_scrollController.offset - 200, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
  void scrollRight(){
    _scrollController.animateTo(_scrollController.offset + 200, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
  final List<String> projectNames = [
    "Times Jobs",
    "Ask Gpt",
    "Streamcamp",
    "EMI Calculator",
  ];
  final List<String> projectDescription = [
    "A job search platform that helps users find part-time or full-time work opportunities based on their skills and location.",
    "An AI-powered chatbot that provides instant answers to user questions, leveraging GPT technology for intelligent responses and conversational capabilities.",
    " A social platform where users can post about what they’re watching, share reviews of shows, movies, and series, chat with friends, see what their friends are watching, and add new friends.",
    "A tool that helps users calculate their monthly EMI (Equated Monthly Installment) for loans based on principal amount, interest rate, and loan tenure.",
  ];
  final List<IconData> icons = [
    Icons.home,
    Icons.phone,
  Icons.mail
  ];
  final List<String> contactTiles = [
    "Najafgarh,New Delhi - 110043",
    "+91 7011206396",
    "shricha203@gmail.com",
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.darken),
            child: Image.asset(
              'images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "DevTech",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 32.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Projects",
                        style: GoogleFonts.nunitoSans(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Text(
                        "Contact",
                        style: GoogleFonts.nunitoSans(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            heightSpacer(20.0),
            // Intro Section
            Text(
              "Hi, I'M A",
              style: GoogleFonts.nunitoSans(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            Text(
              "FLUTTER DEVELOPER.",
              style: GoogleFonts.nunitoSans(
                fontSize: 40.0,
                color: Colors.white,
                letterSpacing: -0.9,
                fontWeight: FontWeight.bold,
              ),
            ),
            heightSpacer(20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttons("PROJECTS", Colors.amber, Colors.black),
                widthSSpacer(26.0),
                buttons("CONTACT", Colors.transparent, Colors.white),
              ],
            ),
            heightSpacer(40.0),
            Expanded(
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_left, size: 40, color: Colors.white),
                    onPressed: scrollLeft,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController,
                      child: Row(
                        children: List.generate(projectNames.length, (i) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height:MediaQuery.of(context).size.height *0.5,
                              child: projectContainer(context,
                              "images/bg.png",
                              projectNames[i],
                              projectDescription[i],
                            ),
                          ));
                        }),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_right, size: 40, color: Colors.white),
                    onPressed: scrollRight,
                  ),
                ],
              ),
            ),


            // Expanded(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisSize: MainAxisSize.min,
            //     children: List.generate(icons.length, (i) {
            //       return Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: contactMe(
            //             icons[i],
            //             contactTiles[i]
            //
            //           ));
            //     }),
            //   ),
            // ),


          ],
        ),
      ],
    );
  }
}




class MobileView extends StatefulWidget {

  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  final ScrollController _scrollController = ScrollController();
  void scrollLeft(){
    _scrollController.animateTo(_scrollController.offset - 200, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
  void scrollRight(){
    _scrollController.animateTo(_scrollController.offset + 200, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
  final List<String> projectNames = [
    "Times Jobs",
    "Ask Gpt",
    "Streamcamp",
    "EMI Calculator",
  ];
  final List<String> projectDescription = [
    "A job search platform that helps users find part-time or full-time work opportunities based on their skills and location.",
    "An AI-powered chatbot that provides instant answers to user questions, leveraging GPT technology for intelligent responses and conversational capabilities.",
    " A social platform where users can post about what they’re watching, share reviews of shows, movies, and series, chat with friends, see what their friends are watching, and add new friends.",
    "A tool that helps users calculate their monthly EMI (Equated Monthly Installment) for loans based on principal amount, interest rate, and loan tenure.",
  ];
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
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "DevTech",
                    style: GoogleFonts.nunitoSans(
                      fontSize: 32.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.menu_outlined,color: Colors.white,size: 32.0,),

                ],
              ),
            ),
            heightSpacer(20.0),
            // Intro Section
            Text(
              "Hi, I'M A",
              style: GoogleFonts.nunitoSans(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            Text(
              "FLUTTER DEVELOPER.",
              style: GoogleFonts.nunitoSans(
                fontSize: 40.0,
                color: Colors.white,
                letterSpacing: -0.9,
                fontWeight: FontWeight.bold,
              ),
            ),
            heightSpacer(20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttons("PROJECTS", Colors.amber, Colors.black),
                widthSSpacer(26.0),
                buttons("CONTACT", Colors.transparent, Colors.white),
              ],
            ),
            heightSpacer(40.0),
            Expanded(
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_left, size: 40, color: Colors.white),
                    onPressed: scrollLeft,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController,
                      child: Row(
                        children: List.generate(projectNames.length, (i) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: projectContainer(
                              context,
                              "images/bg.png",
                              projectNames[i],
                              projectDescription[i],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_right, size: 40, color: Colors.white),
                    onPressed: scrollRight,
                  ),
                ],
              ),
            )

          ],
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
projectContainer(context, imagePath, name, description) {
  return Container(
    padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 16.0),
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      border: Border.all(
        color: Colors.white,
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          heightSpacer(8.0),

          Text(
            name,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.nunitoSans(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.start,
          ),
          heightSpacer(8.0),

          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.3,
            ),
            child: Text(
              description,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.nunitoSans(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.start,
              softWrap: true,
            ),
          ),
          heightSpacer(8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: buttons("VIEW", Colors.amber, Colors.black),
              ),
              widthSSpacer(16.0),
              Flexible(
                child: buttons("SOURCE", Colors.amber, Colors.black),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
contactMe(icons,text){
  return Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(icons,size: 24.0,color: Colors.white,),
      Text(
        text,
        textAlign: TextAlign.start,
        style: GoogleFonts.nunitoSans(
          color: Colors.white,
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),

      )

    ],
  );
}

