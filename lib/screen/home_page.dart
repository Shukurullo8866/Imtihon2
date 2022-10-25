import 'package:flutter/material.dart';
import 'package:travel/utils/colors.dart';

import '../utils/images.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _LoginPageWidgetState();
}

int _selectedIndex = 0;
const List<Widget> _widgetOptions = <Widget>[
  HomeBody(),
  Center(
    child: Text(
      'Notification Page',
    ),
  ),
  Center(
    child: Text(
      'Accaunt Page',
    ),
  ),
];

class _LoginPageWidgetState extends State<HomeWidget> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Acaunt',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: MyColors.C_15BE77,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 441.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(MyImages.image_home),
                        fit: BoxFit.cover)),
              ),
              Center(
                child: Text(
                  "Where are you\ngoing next?",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 343.0, left: 30.0, right: 30.0),
                child: Container(
                  width: 354.0,
                  height: 210.0,
                  decoration: BoxDecoration(
                    color: MyColors.C_FFFFFF.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12.0),
                      Positioned(
                        top: 280.0,
                        right: 0.0,
                        left: 0.0,
                        child: Container(
                          width: 328.0,
                          height: 50.0,
                          child: const TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              hintText: '    search',
                              hintStyle: TextStyle(fontSize: 13.0),
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0,top: 15.0),
                        child: Row(children: [
                          Text("  Flight Date"),
                          SizedBox(width: 30.0),
                          Text("   Number of Person"),
                        ],),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Row(children: [
                          Text("  13 Jul - 18 Jul"),
                          SizedBox(width: 30.0),
                          
                          Text("  1 Room - 2 Person"),
                        ],),
                      ),
                      SizedBox(height: 25),
                      InkWell(
                        child: Container(
                          width: 320.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: MyColors.C_15BE77,
                              borderRadius: BorderRadius.circular(30.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                ),
                              ]),
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Recommended List",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 30.0),
            height: 180.0,
            width: double.infinity,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Container(
                      width: 88.0,
                      height: 155.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 130,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30.0)),
                              child: Image.asset(
                                MyImages.image_home,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.0),
                            child: Text(
                              "Arab",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7.0),
                            child: Text(
                              "Dubai",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 200.0),
            child: Text(
              "Popular Destination",
              style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 33.0),
          Container(
            margin: EdgeInsets.only(left: 30.0),
            height: 188.0,
            width: double.infinity,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.65,
                crossAxisCount: 1,
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Container(
                    width: 390.0,
                    height: 188.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        image: DecorationImage(
                          image: AssetImage(
                            MyImages.image_home,
                          ),
                          fit: BoxFit.cover,
                        )),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10.0),
                        child: Text(
                          "home",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 33.0),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 250.0),
            child: Text(
              "Best Deals",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.all(20),
            width: double.infinity,
            height: 800.0,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: 354,
                        height: 134,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: Color.fromARGB(255, 243, 226, 226),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 120.0,
                              height: 140.0,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(MyImages.image_goole))),
                            ),
                            Column(
                              children: [
                                Text(
                                  "  Hotel Burj Al Arab",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Dubai - Uni Emirat Arab",
                                  style: TextStyle(
                                      fontSize: 9, fontWeight: FontWeight.w400),
                                ),
                                SizedBox(height: 25, width: 5),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 20,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )));
              },
            ),
          ),
        ],
      ),
    );
  }
}
