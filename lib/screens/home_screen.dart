import 'package:flutter/material.dart';
import 'package:padmakanya_app/widgets/course_card.dart';
import 'package:padmakanya_app/widgets/faculty_card.dart';
import 'package:padmakanya_app/widgets/heading.dart';

import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/logo.png",
              width: 50,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Padmakanya Multiple Campus",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Text("Bagbazar,Kathmandu"),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 181, 176, 176),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("WELCOME TO THE Padmakanya Multiple Campus",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(height: 20),
                      Text(
                        "Welcome to the padmakanya campus for the e,powerment of your bright future. here you can get varoius number of courses to get for your better educationPadma Kanya Multiple Campus (PKMC) was established in 1951(Aswin 2008 B.S.) as first women's campus of Nepal. Initially, its academic activities were broughtWelcome to the padmakanya campus for the e,powerment of your bright future. here you can get varoius number of courses to get for your better educationPadma Kanya Multiple Campus (PKMC) was established in 1951(Aswin 2008 B.S.) as first women's campus of Nepal. Initially, its academic activities were broughtWelcome to the padmakanya campus for the e,powerment of your bright future.\n \n here you can get varoius number of courses to get for your better educationPadma Kanya Multiple Campus (PKMC) was established in 1951(Aswin 2008 B.S.) as first women's campus of Nepal. Initially, its academic activities were broughtWelcome to the padmakanya campus for the e,powerment of your bright future. here you can get varoius number of courses to get for your better educationPadma Kanya Multiple Campus (PKMC) was established in 1951(Aswin 2008 B.S.) first women's campus of Nepal. Initially, its academic activities were broughtWelcome to the padmakanya campus for the e,powerment of your bright future. here you can ",
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return AboutScreen();
                            }));
                          },
                          child: Text("Read More"))
                    ],
                  ),
                ),
                Heading(text: "Our Faculties"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FacultyCard(
                          text: "Faculty of Humanities and social Science"),
                      SizedBox(width: 50),
                      FacultyCard(text: "Faculty of Management"),
                      SizedBox(width: 50),
                      FacultyCard(text: "Institute of Science and technology"),
                      SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Heading(text: "Our Courses"),
                SizedBox(height: 15),
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.8,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    CourseCard(
                        title: "BCA",
                        subtitle: "Bachelor in Computer Application"),
                    CourseCard(
                        title: "BIT",
                        subtitle: "Bachelor in Information Technology"),
                    CourseCard(
                        title: "BBA",
                        subtitle: "Bachelor in Business Administration"),
                    CourseCard(title: "BA", subtitle: "Bachelor in Arts"),
                    CourseCard(
                        title: "BSc.Microbiology",
                        subtitle: "Bachelor of Science in  Microbiology"),
                    CourseCard(
                        title: "BSc.CSIT",
                        subtitle:
                            "Bachelor of Science in computer science and information technology "),
                  ],
                ),
                Heading(text: "Events and News"),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [],
                  ),
                ),
                SizedBox(height: 20),
              ],
            )),
      ),
    );
  }
}
