import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List student = [
    "Classes",
    "Category",
    "coures",
    "Book Store",
    "Live coures",
    "Leader Board"
  ];
  List<Color> dashboardColor = [
    Color(0xFF0FCA33),
    Color(0xFF0F49CA),
    Color(0xFFEFD811),
    Color(0xFFEF5311),
    Color(0xFFEA11EF),
    Color(0xFF44B129)
  ];
  List<Icon> dashboardIcon = [
    Icon(
      Icons.video_library,
      size: 35,
      color: Colors.white,
    ),
    Icon(
      Icons.category,
      size: 35,
      color: Colors.white,
    ),
    Icon(
      Icons.assignment,
      size: 35,
      color: Colors.white,
    ),
    Icon(
      Icons.store,
      size: 35,
      color: Colors.white,
    ),
    Icon(
      Icons.leaderboard_outlined,
      size: 35,
      color: Colors.white,
    ),
    Icon(
      Icons.emoji_events,
      size: 35,
      color: Colors.white,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 52, 10, 123),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.sort,
                              color: Colors.white,
                              size: 40,
                            )),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/p.jpg"),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Dear Ali",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Last Update: 18 Nov 2024",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white54,
                              fontWeight: FontWeight.w500),
                          // LetterSpacing:1
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      height: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here",
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            suffix: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.black,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(top: 40, bottom: 40),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 52, 10, 123),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.5,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 241, 240, 243),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(70))),
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                    child: Column(
                      children: [
                        GridView.builder(
                          itemCount: student.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 1.1),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: dashboardColor[index],
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: dashboardIcon[index],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(student[index])
                              ],
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
