import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/home_page/image_view.dart';
import 'package:url_launcher/url_launcher.dart';

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
  final ScrollController _globalScrollController = ScrollController();
  void scrollLeft(){
    _scrollController.animateTo(_scrollController.offset - 200, duration: Duration(milliseconds: 300), curve: Curves.bounceInOut);
  }
  void scrollRight(){
    _scrollController.animateTo(_scrollController.offset + 200, duration: Duration(milliseconds: 300), curve: Curves.bounceInOut);
  }


  final List<IconData> icons = [
    Icons.phone,
  Icons.mail,
    Icons.home
  ];
  final List<String> contactTiles = [
    "+91-7011206396",
    "shricha203@gmail.com",
    "Najafgarh,New Delhi - 110043",
  ];
  final GlobalKey _projectsWebKey = GlobalKey();
  final GlobalKey _contactWebKey = GlobalKey();
  List<Map<String, dynamic>> projects = [
    {
      "name":"Times Jobs",
      "description":     "Times Jobs is a leading job search application that connects users with thousands of job listings across various industries. It features personalized job alerts, easy CV uploads, and resources to help users land their dream job.",
      "image":  "images/tj.png",
      "url":'https://play.google.com/store/search?q=times%20job&c=apps',
      "screenshots": [],
    },
    {
      "name":"Ask Gpt",
      "description":    "Ask Gpt is an innovative chat application powered by OpenAI's API. It allows users to have intelligent and engaging conversations, providing instant answers and insights on a wide range of topics, making information accessible and fun.",
      "image":  "images/ask_ai.png",
      "url": "",
      "screenshots": [
        "screenshots/ask_ai/ask_ai_1.png",
        "screenshots/ask_ai/ask_ai_2.png",
        "screenshots/ask_ai/ask_ai_3.png",
        "screenshots/ask_ai/ask_ai_4.png",
        "screenshots/ask_ai/ask_ai_5.png",
        "screenshots/ask_ai/ask_ai_6.png",
      ],
    },
    {
      "name": "EMI Calculator",
      "description":    "EMI Calculator is a comprehensive tool for users to calculate their Equated Monthly Installments (EMI) effortlessly. It provides visual representations of loan comparisons through pie charts and graphics, helping users make informed financial decisions.",
      "image": "images/emi.png",
      "url": "",
      "screenshots": [
        "screenshots/emi_calculator/emi_calc_1.png",
        "screenshots/emi_calculator/emi_calc_2.png",
        "screenshots/emi_calculator/emi_calc_3.png",
        "screenshots/emi_calculator/emi_calc_4.png",
        "screenshots/emi_calculator/emi_calc_5.png",
        "screenshots/emi_calculator/emi_calc_6.png",
        "screenshots/emi_calculator/emi_calc_7.png",
        "screenshots/emi_calculator/emi_calc_8.png",
        "screenshots/emi_calculator/emi_calc_9.png",
      ],
    },
    {
      "name": "Prank Pulse",
      "description": "Prank Pulse is a hilarious prank application packed with a variety of funny sounds, including honks, police sirens etc. It's perfect for light-hearted fun and can be used to surprise friends with unexpected sound effects.",
      "image": "images/prank_pulse.png",
      "url": "https://play.google.com/store/apps/details?id=prank.funny.sounds.ca&hl=en",
      "screenshots": [
      ],
    },
    {
      "name": "Table Clash",
      "description": "Table Clash is an exciting Flutter game that features a web-based table tennis experience with Google Ads integration. It prioritizes user privacy through the UMP SDK, allowing players to opt out of data collection for ads and notifications. Compete with your friends, improve your skills and climb the leaderboard. Enjoy competitive gameplay while maintaining control over your data preferences!",
      "image": "images/table.png",
      "url": "",
      "screenshots": [
        "screenshots/table_clash/table_clash_1.png",
        "screenshots/table_clash/table_clash_2.png",
        "screenshots/table_clash/table_clash_3.png",
        "screenshots/table_clash/table_clash_4.png",
        "screenshots/table_clash/table_clash_5.png",
        "screenshots/table_clash/table_clash_6.png",
        "screenshots/table_clash/table_clash_7.png",
      ],
    },
    {
      "name":   "Wordly Spelling Challenge",
      "description":"Wordly Spelling Challenge is an exhilarating interactive spelling app that transforms learning into a thrilling adventure! Dive into engaging tests and exciting challenges where every correct answer earns you coins and unlocks new levels. ",
    "image": "images/wordly.png",
      "url": "",
      "screenshots": [
        "screenshots/wordly/wordly_1.png",
        "screenshots/wordly/wordly_2.png",
        "screenshots/wordly/wordly_3.png",
        "screenshots/wordly/wordly_4.png",
      ],
    },

  ];

  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context, duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.8),
              BlendMode.darken,
            ),
            child: Image.asset(
              'images/bg.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: M,
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
                    // Row(
                    //   children: [
                    //     GestureDetector(
                    //       onTap: (){
                    //         _scrollToSection(_projectsKey);
                    //       },
                    //       child: Text(
                    //         "Projects",
                    //         style: GoogleFonts.nunitoSans(
                    //           fontSize: 20.0,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //     const SizedBox(width: 16.0),
                    //     GestureDetector(
                    //       onTap: (){
                    //         _scrollToSection(_contactKey);
                    //       },
                    //       child: Text(
                    //         "Contact",
                    //         style: GoogleFonts.nunitoSans(
                    //           fontSize: 20.0,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              heightSpacer(20.0),
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
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 26.0),
                child: Text("I am a Flutter developer with 3 years of experience, specializing in building high-quality, responsive mobile applications. In addition to my expertise in Flutter, I also have experience designing native XML layouts for Android applications, allowing me to work seamlessly across both native and cross-platform development", style: GoogleFonts.nunitoSans(
                  fontSize: 20.0,
                  color: Colors.white,
                  // letterSpacing: -0.9,
                  fontWeight: FontWeight.w500,
                ),textAlign: TextAlign.center,),
              ),
              heightSpacer(20.0),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 26.0),
                child: Text("Below are a few of the projects I’ve worked on, showcasing my ability to deliver functional and polished solutions.", style: GoogleFonts.nunitoSans(
                  fontSize: 20.0,
                  color: Colors.white,
                  // letterSpacing: -0.9,
                  fontWeight: FontWeight.w500,
                ),textAlign: TextAlign.center,),
              ),
              heightSpacer(20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                GestureDetector(
    onTap: (){
    // _scrollToSection(_projectsWebKey);
      scrollRight();
    },
    child:   buttons("PROJECTS", Colors.amber, Colors.black)),
                  widthSSpacer(26.0),
                 GestureDetector(
                   onTap: (){
                     _scrollToSection(_contactWebKey);
                   },
                   child: buttons("CONTACT", Colors.transparent, Colors.white),),
                ],
              ),
              heightSpacer(40.0),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_left, size: 40, color: Colors.white),
                      onPressed: scrollLeft,
                    ),

                    Expanded(
                      child: SingleChildScrollView(
                        key: _projectsWebKey,
                        scrollDirection: Axis.horizontal,
                        controller: _scrollController,
                        child: Row(
                          children: List.generate(projects.length, (i) {
                            final project = projects[i];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),

                              child: projectWebContainer(
                                context,
                                project["image"],
                                project["name"],
                                project["description"],
                                project["url"],
                                (project["screenshots"] as List<dynamic>? ?? []).cast<String>(),
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
              ),
              heightSpacer(140.0),
              Container(
                key: _contactWebKey,
                alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                  ),
                  padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 28.0,bottom: 0.0),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(icons.length, (i){
                      return contactMe(
                            icons[i],
                            contactTiles[i],
                            );
                    })
                  )
                  ),
                  // child: contactMe(
                  //   icons[i],
                  //   contactTiles[i],
                  // ),
            ],
          ),
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();


  final List<String> contactTiles = [
    "+91-7011206396",
    "shricha203@gmail.com",
    "Najafgarh,New Delhi - 110043",
  ];

  final List<IconData> icons = [
    Icons.phone,
    Icons.mail,
    Icons.home
  ];
  List<Map<String, dynamic>> projects = [
    {
      "name":"Times Jobs",
      "description":     "Times Jobs is a leading job search application that connects users with thousands of job listings across various industries. It features personalized job alerts, easy CV uploads, and resources to help users land their dream job.",
      "image":  "images/tj.png",
      "url":'https://play.google.com/store/search?q=times%20job&c=apps',
      "screenshots":<String> [],
    },
    {
      "name":"Ask Gpt",
      "description":    "Ask Gpt is an innovative chat application powered by OpenAI's API. It allows users to have intelligent and engaging conversations, providing instant answers and insights on a wide range of topics, making information accessible and fun.",
      "image":  "images/ask_ai.png",
      "url": "",
      "screenshots": <String>[
        "screenshots/ask_ai/ask_ai_1.png",
        "screenshots/ask_ai/ask_ai_2.png",
        "screenshots/ask_ai/ask_ai_3.png",
        "screenshots/ask_ai/ask_ai_4.png",
        "screenshots/ask_ai/ask_ai_5.png",
        "screenshots/ask_ai/ask_ai_6.png",
      ],
    },
    {
      "name": "EMI Calculator",
      "description":    "EMI Calculator is a comprehensive tool for users to calculate their Equated Monthly Installments (EMI) effortlessly. It provides visual representations of loan comparisons through pie charts and graphics, helping users make informed financial decisions.",
      "image": "images/emi.png",
      "url": "",
      "screenshots": <String>[
        "screenshots/emi_calculator/emi_calc_1.png",
        "screenshots/emi_calculator/emi_calc_2.png",
        "screenshots/emi_calculator/emi_calc_3.png",
        "screenshots/emi_calculator/emi_calc_4.png",
        "screenshots/emi_calculator/emi_calc_5.png",
        "screenshots/emi_calculator/emi_calc_6.png",
        "screenshots/emi_calculator/emi_calc_7.png",
        "screenshots/emi_calculator/emi_calc_8.png",
        "screenshots/emi_calculator/emi_calc_9.png",
      ],
    },
    {
      "name": "Prank Pulse",
      "description": "Prank Pulse is a hilarious prank application packed with a variety of funny sounds, including honks, police sirens etc. It's perfect for light-hearted fun and can be used to surprise friends with unexpected sound effects.",
      "image": "images/prank_pulse.png",
      "url": "https://play.google.com/store/apps/details?id=prank.funny.sounds.ca&hl=en",
      "screenshots": <String> [
      ],
    },
    {
      "name": "Table Clash",
      "description": "Table Clash is an exciting Flutter game that features a web-based table tennis experience with Google Ads integration. It prioritizes user privacy through the UMP SDK, allowing players to opt out of data collection for ads and notifications. Compete with your friends, improve your skills and climb the leaderboard. Enjoy competitive gameplay while maintaining control over your data preferences!",
      "image": "images/table.png",
      "url": "",
      "screenshots": <String>[
        "screenshots/table_clash/table_clash_1.png",
        "screenshots/table_clash/table_clash_2.png",
        "screenshots/table_clash/table_clash_3.png",
        "screenshots/table_clash/table_clash_4.png",
        "screenshots/table_clash/table_clash_5.png",
        "screenshots/table_clash/table_clash_6.png",
        "screenshots/table_clash/table_clash_7.png",
      ],
    },
    {
      "name":   "Wordly Spelling Challenge",
      "description":"Wordly Spelling Challenge is an exhilarating interactive spelling app that transforms learning into a thrilling adventure! Dive into engaging tests and exciting challenges where every correct answer earns you coins and unlocks new levels. ",
      "image": "images/wordly.png",
      "url": "",
      "screenshots": <String>[
        "screenshots/wordly/wordly_1.png",
        "screenshots/wordly/wordly_2.png",
        "screenshots/wordly/wordly_3.png",
        "screenshots/wordly/wordly_4.png",
      ],
    },

  ];
  void _scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context, duration: Duration(seconds: 1), curve: Curves.easeInOut);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer:  Drawer(
        width: MediaQuery.of(context).size.width*0.8,
        backgroundColor: Colors.black.withOpacity(0.8),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _scaffoldKey.currentState?.closeEndDrawer();
                _scrollToSection(_projectsKey);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Projects",
                  style: GoogleFonts.nunitoSans(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: (){
                _scaffoldKey.currentState?.closeEndDrawer();
                _scrollToSection(_contactKey);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Contact",
                  style: GoogleFonts.nunitoSans(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
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
          SingleChildScrollView(
            child: Column(
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
                      IconButton(onPressed: (){
                        _scaffoldKey.currentState?.openEndDrawer();
                      }, icon: Icon(Icons.menu_outlined,color: Colors.white,size: 32.0,)),

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
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 26.0),
                  child: Text("I am a Flutter developer with 3 years of experience, specializing in building high-quality, responsive mobile applications. In addition to my expertise in Flutter, I also have experience designing native XML layouts for Android applications, allowing me to work seamlessly across both native and cross-platform development", style: GoogleFonts.nunitoSans(
                    fontSize: 20.0,
                    color: Colors.white,
                    letterSpacing: -0.9,
                    fontWeight: FontWeight.w400,
                  ),textAlign: TextAlign.center,),
                ),
                heightSpacer(20.0),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 26.0),
                  child: Text("Below are a few of the projects I’ve worked on, showcasing my ability to deliver functional and polished solutions.", style: GoogleFonts.nunitoSans(
                    fontSize: 20.0,
                    color: Colors.white,
                    letterSpacing: -0.9,
                    fontWeight: FontWeight.w400,
                  ),textAlign: TextAlign.center,),
                ),
                heightSpacer(20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  GestureDetector(
                    onTap: (){
                      _scrollToSection(_projectsKey);
                    },
                    child:   buttons("PROJECTS", Colors.amber, Colors.black),),
                    widthSSpacer(26.0),
                   GestureDetector(    onTap: (){
                     _scrollToSection(_contactKey);
                   },child:  buttons("CONTACT", Colors.transparent, Colors.white),),
                  ],
                ),
                heightSpacer(20.0),

                Padding(
                  padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0,bottom: 20.0),
                  child: Column(
    key: _projectsKey,
                    children: List.generate(projects.length, (i) {
                      final project = projects[i];
                      return projectContainer(
                        context,
                        project["image"],
                        project["name"],
                        project["description"],
                        project["url"],
                        (project["screenshots"] as List<dynamic>? ?? []).cast<String>(),
                      );
                    }),
                  ),
                ),
                heightSpacer(40.0),
                Container(
                  key: _contactKey,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                    ),
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 28.0,bottom: 0.0),
                    child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(icons.length, (i){
                          return contactMe(
                            icons[i],
                            contactTiles[i],
                          );
                        })
                    )
                ),

              ],
            ),
          ),




        ],
      ),
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
projectWebContainer(BuildContext context, String imagePath, String name, String description, String url, List<String> screenshots) {
  return Container(
    // margin: EdgeInsets.only(bottom: 20.0),
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
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.contain,
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
              fontSize: 18.0,
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

          GestureDetector(
            onTap: () async {
              if (url.isNotEmpty) {
                final uri = Uri.parse(url);
                try {
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(
                      uri,
                      mode: LaunchMode.externalApplication,
                    );
                  } else {
                    print('Could not launch $url');
                  }
                } catch (e) {
                  print('Error launching URL: $e');
                }
              } else if (screenshots.isNotEmpty) {
                showDialog(
                  context: context,
                  builder: (context) => ImageGalleryDialog(screenshots: screenshots),
                );
              }
            },
            child: buttons("VIEW", Colors.amber, Colors.black),
          ),
        ],
      ),
    ),
  );
}
projectContainer(BuildContext context, String imagePath, String name, String description, String url, List<String> screenshots) {
  return Container(

    margin: EdgeInsets.only(bottom: 20.0),
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
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.contain,
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
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.start,
          ),
          heightSpacer(8.0),

          Text(
            description,
            // maxLines: 4,
            // overflow: TextOverflow.ellipsis,
            style: GoogleFonts.nunitoSans(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.start,
            softWrap: true,
          ),
          heightSpacer(16.0),

          GestureDetector(
            onTap: () async {
              if (url.isNotEmpty) {
                final uri = Uri.parse(url);
                try {
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(
                      uri,
                      mode: LaunchMode.externalApplication,
                    );
                  } else {
                    print('Could not launch $url');
                  }
                } catch (e) {
                  print('Error launching URL: $e');
                }
              } else if (screenshots.isNotEmpty) {
                showDialog(
                  context: context,
                  builder: (context) => ImageGalleryDialog(screenshots: screenshots),
                );
              }
            },
            child: buttons("VIEW", Colors.amber, Colors.black,),
          ),
        ],
      ),
    ),
  );
}
contactMe(icons,text){
  return Padding(
    padding:  EdgeInsets.only(bottom: 28.0),
    child: Row(
      verticalDirection: VerticalDirection.down,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icons,size: 24.0,color: Colors.white,),
        Padding(
          padding:  EdgeInsets.only(left: 8.0),
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: GoogleFonts.nunitoSans(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),

          ),
        )

      ],
    ),
  );
}

