import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_stack/image_stack.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "https://upload.wikimedia.org/wikipedia/commons/8/86/Chunky_pandey_forest_success.jpg",
    "https://english.cdn.zeenews.com/sites/default/files/styles/zm_700x400/public/2018/02/12/659780-salmancasual.jpg",
    "https://m.media-amazon.com/images/I/71GS+v8L3KS._SX679_.jpg",
  ];
  List<String> images2 = [
    "https://upload.wikimedia.org/wikipedia/commons/8/86/Chunky_pandey_forest_success.jpg",
    "https://english.cdn.zeenews.com/sites/default/files/styles/zm_700x400/public/2018/02/12/659780-salmancasual.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ], borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: SvgPicture.asset(
                        "assets/icons/leadingDrawericon.svg",
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ], borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: SvgPicture.asset(
                        "assets/icons/heartIcon.svg",
                        height: 5,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Stack(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: SvgPicture.asset(
                            "assets/icons/notifyIcon.svg",
                          ),
                        ),
                        Positioned(
                          right: 3,
                          top: 3,
                          child: Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 15,
                              minHeight: 15,
                            ),
                            child: const Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage('assets/icons/snackicon.jpg'),
                          fit: BoxFit.fill,
                        ),
                        //   FittedBox(
                        //   child: Image.asset('assets/icons/snackicon.jpg'),
                        //   fit: BoxFit.fill,
                        // ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    // child: Container(color: Colors.amber)),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Welcome, Mypcot !!',
                            style: TextStyle(
                              color: Color(0xFF2c3D63),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('here is your dashboard....'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                blurRadius: 18.0,
                              ),
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        child: SvgPicture.asset(
                          "assets/icons/searchIcon.svg",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 250,
                            width: 333,
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            decoration: const BoxDecoration(
                                color: Color(0xFF33A1CC),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(55))),
                                        child: SvgPicture.asset(
                                          "assets/icons/banner1Icon.svg",
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      SizedBox(
                                        width: 120,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            // maximumSize: const Size(50, 30),
                                            shape: const StadiumBorder(),
                                            primary: const Color(0xFFEB3E1B),
                                            onSurface: const Color(0xFFA83242),
                                          ),
                                          onPressed: () {},
                                          child: const Text(
                                            'Orders',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 100),
                                      Stack(
                                        children: [
                                          Container(
                                            width: 120,
                                            height: 80,
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 15.0),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12),
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                            ),
                                            child: Column(
                                              children: const [
                                                SizedBox(height: 6),
                                                Text.rich(
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '02',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF2C3D63),
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      TextSpan(
                                                        text: ' Pending',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF2C3D63),
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '    orders from',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF2C3D63),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0.0,
                                            left: 28,
                                            child: ImageStack(
                                              imageList: images2,
                                              totalCount: images.length,
                                              imageBorderColor: Colors.red,
                                              showTotalCount: false,
                                              imageRadius:
                                                  40, // Radius of each images
                                              imageCount:
                                                  2, // Maximum number of images to be shown in stack
                                              imageBorderWidth:
                                                  3, // Border width around the images
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 160,
                            child: Stack(
                              children: [
                                Container(
                                  width: 140,
                                  height: 80,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFEB3E1B),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    children: const [
                                      SizedBox(height: 6),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'You have ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: '3',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: ' active',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            TextSpan(
                                              text: '    orders from',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  left: 20,
                                  child: ImageStack(
                                    imageList: images,
                                    totalCount: images.length,
                                    imageBorderColor: Colors.red,
                                    imageRadius: 40, // Radius of each images
                                    imageCount:
                                        3, // Maximum number of images to be shown in stack
                                    imageBorderWidth:
                                        3, // Border width around the images
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Stack(
                        children: [
                          Container(
                            height: 250,
                            width: 333,
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            decoration: const BoxDecoration(
                                color: Color(0xFFDCB223),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(60))),
                                        child: SvgPicture.asset(
                                          "assets/icons/banner2Icon.svg",
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      SizedBox(
                                        width: 120,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            // maximumSize: const Size(50, 30),
                                            shape: const StadiumBorder(),
                                            primary: const Color(0xFF234DDC),
                                            onSurface: const Color(0xFFA83242),
                                          ),
                                          onPressed: () {},
                                          child: const Text(
                                            'Subscriptions',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 70),
                                      Container(
                                        width: 120,
                                        height: 60,
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 15.0),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        child: Column(
                                          children: const [
                                            SizedBox(height: 6),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '10',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF2C3D63),
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  TextSpan(
                                                    text: ' Active',
                                                    style: TextStyle(
                                                      color: Color(0xFF2C3D63),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '    Subscriptions',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFF2C3D63),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 160,
                            child: Stack(
                              children: [
                                Container(
                                  width: 140,
                                  height: 80,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFF234DDC),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    children: const [
                                      SizedBox(height: 6),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '03',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: ' deliveries',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  left: 20,
                                  child: ImageStack(
                                    imageList: images,
                                    totalCount: images.length,
                                    imageBorderColor: const Color(0xFF234DDC),
                                    imageRadius: 40, // Radius of each images
                                    imageCount:
                                        3, // Maximum number of images to be shown in stack
                                    imageBorderWidth:
                                        3, // Border width around the images
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 30,
                            child: Container(
                              width: 120,
                              height: 60,
                              margin:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                children: const [
                                  SizedBox(height: 6),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '119',
                                          style: TextStyle(
                                              color: Color(0xFF2C3D63),
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: ' Pending',
                                          style: TextStyle(
                                            color: Color(0xFF2C3D63),
                                          ),
                                        ),
                                        TextSpan(
                                          text: '    Deliveries',
                                          style: TextStyle(
                                            color: Color(0xFF2C3D63),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Stack(
                        children: [
                          Container(
                            height: 250,
                            width: 333,
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            decoration: const BoxDecoration(
                                color: Color(0xFF31CE95),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(60))),
                                        child: SvgPicture.asset(
                                          "assets/icons/banner3Icon.svg",
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      SizedBox(
                                        width: 140,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            // maximumSize: const Size(50, 30),
                                            shape: const StadiumBorder(),
                                            primary: const Color(0xFFCE316A),
                                            onSurface: const Color(0xFFA83242),
                                          ),
                                          onPressed: () {},
                                          child: const Text(
                                            'View customers',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 70),
                                      Container(
                                        width: 120,
                                        height: 60,
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 15.0),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        child: Column(
                                          children: const [
                                            SizedBox(height: 6),
                                            Text.rich(
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '1.8%',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF2C3D63),
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 160,
                            child: Stack(
                              children: [
                                Container(
                                  width: 140,
                                  height: 80,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFCE316A),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    children: const [
                                      SizedBox(height: 6),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '15',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            TextSpan(
                                              text: ' New Customers',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  left: 20,
                                  child: ImageStack(
                                    imageList: images,
                                    totalCount: images.length,
                                    imageBorderColor: const Color(0xFF31CE95),
                                    imageRadius: 40,
                                    imageCount: 3,
                                    imageBorderWidth: 3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 40,
                            bottom: 30,
                            child: Container(
                              width: 120,
                              height: 60,
                              margin:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                children: const [
                                  SizedBox(height: 6),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '10',
                                          style: TextStyle(
                                              color: Color(0xFF2C3D63),
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: ' Active',
                                          style: TextStyle(
                                            color: Color(0xFF2C3D63),
                                          ),
                                        ),
                                        TextSpan(
                                          text: '    Customers',
                                          style: TextStyle(
                                            color: Color(0xFF2C3D63),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 60,
                            right: 5,
                            child: ImageStack(
                              imageList: images,
                              totalCount: images.length,
                              imageBorderColor: const Color(0xFF31CE95),
                              imageRadius: 25,
                              imageCount: 3,
                              imageBorderWidth: 3,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'January, 23 2021',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF2c3D63)),
                          ),
                          Text(
                            'Today',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2c3D63),
                            ),
                          )
                        ]),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // maximumSize: const Size(50, 30),
                        shape: const StadiumBorder(),
                        primary: Colors.white,
                        onSurface: const Color(0xFFA83242),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'TIMELINE',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF2c3D63),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF2c3D63),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        // maximumSize: const Size(50, 30),
                        shape: const StadiumBorder(),
                        primary: Colors.white,
                        onSurface: const Color(0xFFA83242),
                      ),
                      icon: const Icon(
                        Icons.today_outlined,
                        color: Color(0xFF2c3D63),
                      ),
                      onPressed: () {},
                      label: const Text(
                        'JAN, 2021',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF2c3D63),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      dateText(day: 'Mon', date: '20'),
                      const SizedBox(width: 25),
                      dateText(day: 'TUE', date: '21'),
                      const SizedBox(width: 25),
                      dateText(day: 'WED', date: '22'),
                      const SizedBox(width: 25),
                      dateText(day: 'THU', date: '23', isHigh: true),
                      const SizedBox(width: 25),
                      dateText(day: 'FRI', date: '24'),
                      const SizedBox(width: 25),
                      dateText(day: 'SAT', date: '25'),
                      const SizedBox(width: 25),
                      dateText(day: 'SUN', date: '26'),
                      const SizedBox(width: 25),
                      dateText(day: 'Mon', date: '27'),
                      const SizedBox(width: 25),
                      dateText(day: 'TUE', date: '28'),
                      const SizedBox(width: 25),
                      dateText(day: 'WED', date: '29'),
                      const SizedBox(width: 25),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 140,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5.0,
                        ),
                      ],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'New order created',
                                style: TextStyle(
                                  color: Color(0xFF2C3D63),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'New Order created with Order',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '09:00 AM',
                                style: TextStyle(
                                  color: Color(0xFFFE804E),
                                ),
                              ),
                              Icon(
                                Icons.arrow_right_alt,
                                color: Color(0xFFFE804E),
                              ),
                            ]),
                      ),
                      Expanded(
                        child: Center(
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                                color: Color(0xFFFE804E),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SvgPicture.asset(
                                "assets/icons/ordercreatedBadge.svg",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column dateText({String? day, String? date, bool isHigh = false}) {
    return Column(children: [
      Text(
        day!,
        style: TextStyle(
          fontSize: 15,
          color: isHigh ? const Color(0xFF0F8181) : Colors.grey,
        ),
      ),
      Text(
        date!,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isHigh ? const Color(0xFF0F8181) : const Color(0xFF2c3D63),
        ),
      ),
      Icon(
        Icons.circle,
        size: 8,
        color: isHigh ? const Color(0xFF0F8181) : Colors.white,
      ),
    ]);
  }
}
