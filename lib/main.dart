import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Practice18BottomNavBar(),
    );
  }
}

class Practice18BottomNavBar extends StatefulWidget {
  const Practice18BottomNavBar({super.key});

  @override
  State<Practice18BottomNavBar> createState() => _Practice18BottomNavBarState();
}

class _Practice18BottomNavBarState extends State<Practice18BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffE5E5E5),
        centerTitle: false,
        title: const Text(
          "Сотрудники",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xff2C2C2C),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            SizedBox(
              height: 42,
              width: width * 0.874,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xffE8E8E8),
                  prefixIcon: const Icon(Icons.search),
                  labelText: "Поиск",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "У кого сегодня день рождения",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff3B81EA),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomPictures(
                    width: width,
                    picture: "assets/images/Ellipse28.png",
                  ),
                  CustomPictures(
                    width: width,
                    picture: "assets/images/Ellipse29.png",
                  ),
                  CustomPictures(
                    width: width,
                    picture: "assets/images/Ellipse30.png",
                  ),
                  CustomPictures(
                    width: width,
                    picture: "assets/images/Ellipse31.png",
                  ),
                  CustomPictures(
                    width: width,
                    picture: "assets/images/Ellipse29.png",
                  ),
                ],
              ),
            ),
            const Text(
              "У кого сегодня день рождения",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff2C2C2C),
              ),
            ),
            Row(
              children: [
                CustomPictures(
                  width: width,
                  picture: "assets/images/Ellipse30.png",
                ),
                CustomPictures(
                  width: width,
                  picture: "assets/images/Ellipse31.png",
                ),
              ],
            ),
            const Text(
              "Все сотрудники",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff2C2C2C),
              ),
            ),
            NamesEmployees(
              width: width,
              name: "Жыпаркулов Мырзабек\nЖыпаркулович",
              photo: "assets/images/Ellipse22228.png",
            ),
            NamesEmployees(
              width: width,
              name: "Артыкбаев Расул\nСаткынович",
              photo: "assets/images/Ellipsesjhdb34.png",
            ),
            NamesEmployees(
              width: width,
              name: "Жыпаркулов Мырзабек\nЖыпаркулович",
              photo: "assets/images/Ellipse22228.png",
            )
          ],
        ),
      ),
    );
  }
}

class NamesEmployees extends StatelessWidget {
  const NamesEmployees({
    Key? key,
    required this.width,
    required this.name,
    required this.photo,
  }) : super(key: key);

  final double width;
  final String name;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: width * 0.874,
      height: 64,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Image.asset(
            photo,
            width: 42,
            height: 42,
          ),
          const SizedBox(width: 16),
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff2C2C2C),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffF8F8F8),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 23,
                          right: 23,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Позвонить",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff2C2C2C),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffDEE1E6),
                                  ),
                                  alignment: Alignment.center,
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                            const SizedBox(height: 13),
                            const Text(
                              "Жыпаркулов Мырзабек\nЖыпаркулович",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff2C2C2C),
                              ),
                            ),
                            const SizedBox(height: 51),
                            Row(
                              children: [
                                Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text(
                                      "Телефон основной",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffA8A8A8),
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    const Text(
                                      "+9965501234321",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff2C2C2C),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/images/Vector.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 14,
                                bottom: 14,
                              ),
                              width: width,
                              height: 1,
                              color: const Color(0xffDEE1E5),
                            ),
                            Row(
                              children: [
                                Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text(
                                      "Телефон рабочий",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffA8A8A8),
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    const Text(
                                      "+9965501234321",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff2C2C2C),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/images/Vector.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 14,
                                bottom: 14,
                              ),
                              width: width,
                              height: 1,
                              color: const Color(0xffDEE1E5),
                            ),
                            Row(
                              children: [
                                Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text(
                                      "Телефон WhatsApp",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffA8A8A8),
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    const Text(
                                      "+9965501234321",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff2C2C2C),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/images/Vector.png",
                                  width: 20,
                                  height: 20,
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 14,
                                bottom: 14,
                              ),
                              width: width,
                              height: 1,
                              color: const Color(0xffDEE1E5),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            icon: Image.asset(
              "assets/images/Vector.png",
              width: 20,
              height: 20,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}

class CustomPictures extends StatelessWidget {
  const CustomPictures({
    Key? key,
    required this.width,
    required this.picture,
  }) : super(key: key);

  final double width;
  final String picture;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 14,
        right: 18,
        bottom: 23,
      ),
      height: 60,
      width: width * 0.16,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: const Color(0xff3B81EA),
        ),
        image: DecorationImage(
          image: AssetImage(picture),
        ),
      ),
    );
  }
}
