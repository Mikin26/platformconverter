
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:platformconventor/String.dart';
import 'package:platformconventor/ios.dart';

class Platform1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Platform1();
  }
}

class _Platform1 extends State<Platform1> with TickerProviderStateMixin {
  bool wifien = true;
  Name a = Name();
  var Z = TimeOfDay.now();
  DateTime dateTime = DateTime.now();
  TabController? tabController;
  List<Name> list = [];
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: a.color,
          onPressed: () {
            setState(() {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: StatefulBuilder(builder: (context, setState) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 4,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Stepper(
                            currentStep: _index,
                            onStepCancel: () {
                              if (_index > 0) {
                                setState(() {
                                  _index --;
                                });
                              }
                            },
                            onStepContinue: () {
                              if (_index >= 0) {
                                setState(() {
                                  _index ++;
                                });
                              }
                            },
                            onStepTapped: (int index) {
                              setState(() {
                                _index = index;
                              });
                            },

                            steps: <Step>[
                              Step(
                                isActive: _index >=0,
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('PROFILE PHOTO'),
                                    const Text('ADD PROFILE PHOTO'),
                                  ],
                                ),
                                content: Container(
                                    child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: CircleAvatar(
                                    radius: 25,
                                  ),
                                )),
                              ),
                              Step(
                                isActive: _index >=1,
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("NAME"),
                                    Text("ENTER NAME"),
                                  ],
                                ),
                                content: TextField(
                                  onChanged: (val) {},
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                      hintText: "Enter name",
                                      border: OutlineInputBorder()),
                                ),
                              ),
                              Step(
                                isActive: _index >=2,
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("DISCRIPTION"),
                                    Text("ENTER DISCRIPTION"),
                                  ],
                                ),
                                content: TextField(
                                  onChanged: (val) {},
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                      hintText: "ENTER DISCRIPTION",
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    );
                  });
            });
          },
          child: Icon(
            Icons.add,
            size: 30,
          )),
      appBar: AppBar(
        backgroundColor: a.color,
        title: Text(
          a.title,
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        bottom: TabBar(
            indicatorColor: Colors.white,
            controller: tabController,
            tabs: [
              Tab(
                child: Text(
                  a.chat,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  a.Call,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  a.Settings,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ]),
        actions: [
          wifien
              ? Switch(
                  inactiveThumbImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Android_robot.svg/872px-Android_robot.svg.png"),
                  value: false,
                  onChanged: (bool val) {
                    setState(() {
                      //togglewifi();
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => Ios()));
                    });
                  })
              : CupertinoSwitch(
                  value: true,
                  onChanged: (bool val) {
                    setState(() {
                      togglewifi();
                    });
                  }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: a.color),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://pics.filmaffinity.com/Ant_Man-370306361-large.jpg"),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Text(
                        'John Doe',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 6),
                      child: Text(
                        '+91 3245789120',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      )),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.group_outlined),
              title: Text(
                "New Group",
                style: TextStyle(color: Colors.grey.shade800),
              ),
              onTap: () {
                setState(() {});
              },
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text(
                "New Contact",
                style: TextStyle(color: Colors.grey.shade800),
              ),
              onTap: () {
                setState(() {});
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(
                "Calls",
                style: TextStyle(color: Colors.grey.shade800),
              ),
              onTap: () {
                setState(() {});
              },
            ),
            ListTile(
              leading: Icon(Icons.bookmark_border),
              title: Text(
                "Saved Massages",
                style: TextStyle(color: Colors.grey.shade800),
              ),
              onTap: () {
                setState(() {});
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.grey.shade800),
              ),
              onTap: () {
                setState(() {});
              },
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          SingleChildScrollView(
            child: Column(
              children: list.map((e) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      showModalBottomSheet<void>(
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            child: Column(
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.07),
                                CircleAvatar(
                                  radius:
                                      MediaQuery.of(context).size.height * 0.08,
                                  backgroundImage: NetworkImage(e.image),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text(
                                    e.name,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.03),
                                  ),
                                  // height: MediaQuery.of(context).size.height *
                                  //     0.07
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "+91 6351128513",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.025),
                                  ),
                                  // height: MediaQuery.of(context).size.height *
                                  //     0.07
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 10),
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: Center(
                                        child: Text(
                                      'Send Message',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22),
                                    )),
                                    decoration: BoxDecoration(
                                        color: a.color,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {});
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20),
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: Center(
                                        child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 22),
                                    )),
                                    decoration: BoxDecoration(
                                        color: a.color,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 0,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.height * 0.04,
                              backgroundImage: NetworkImage(e.image),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // width: 200,
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  e.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.025,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, top: 10),
                                child: Text(
                                  e.statement,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.015),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(
                            margin: EdgeInsets.only(right: 10, bottom: 30),
                            // width: 100,
                            child: Text(
                              e.time,
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.025,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: list.map((e) {
                  return Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 0,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: CircleAvatar(
                              radius: MediaQuery.of(context).size.height * 0.04,
                              backgroundImage: NetworkImage(e.image),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 10, bottom: 10),
                                    child: Text(
                                      e.name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  e.time,
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 0,
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Icon(
                              color: Colors.green,
                              size: MediaQuery.of(context).size.height * 0.04,
                              a.icon,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        margin: EdgeInsets.only(top: 30, left: 67),
                        child: Center(
                          child: Text(
                            a.Date,
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.027,
                              color: a.color,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 0,
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(top: 30, right: 67),
                        child: Text(
                          DateFormat("dd, MMMyyyy").format(dateTime),
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.027,
                            color: a.color,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () async {
                    var c = await showDatePicker(
                        context: context,
                        initialDate: dateTime,
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2050));

                    setState(() {
                      dateTime = c!;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.075,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Center(
                        child: Text(
                      a.changeDate,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )),
                    decoration: BoxDecoration(color: a.color),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(top: 30, right: 20),
                        child: Center(
                          child: Text(
                            a.Time1,
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.027,
                              color: a.color,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Container(
                            // margin: EdgeInsets.only(left: 180),
                            )),
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(top: 30, right: 22),
                        child: Center(
                          child: Text(
                            Z.format(context),
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.027,
                              color: a.color,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () async {
                    var b = await showTimePicker(
                        context: (context), initialTime: Z);
                    setState(() {
                      Z = b!;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.075,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Center(
                        child: Text(
                      a.changetime,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )),
                    decoration: BoxDecoration(color: a.color),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    Name a = Name(
        time: "12:00 pm",
        name: "Tony Stark",
        statement: "Flutter is great",
        image:
            "https://www.jiomart.com/images/product/500x630/rv3jnpppl2/tony-stark-iron-man-avengers-infinity-war-men-s-sunglasses-spectacle-frames-silver-blue-product-images-rv3jnpppl2-3-202207021924.jpg");
    Name b = Name(
        time: "1:25 am",
        name: "Caption America",
        statement: "Hey There!",
        image:
            "https://cdn.britannica.com/30/182830-050-96F2ED76/Chris-Evans-title-character-Joe-Johnston-Captain.jpg");
    Name c = Name(
        time: "4:23 pm",
        name: "Thor",
        statement: "Done",
        image:
            "https://mediaproxy.salon.com/width/1200/https://media.salon.com/2019/07/thor-ragnarok2.jpg");
    Name d = Name(
        time: "12:80 pm",
        name: "Thanos",
        statement: "Ready for fight?",
        image:
            "https://upload.wikimedia.org/wikipedia/en/7/7b/Josh_Brolin_as_Thanos.jpeg");
    Name e = Name(
        time: "12:28 pm",
        name: "Hulk",
        statement: "I throwed my phone because I am angry",
        image:
            "https://pyxis.nymag.com/v1/imgs/41a/0dd/1503366ab1d665452cb9f0132647b97f15-03-the-hulk.rsquare.w700.jpg");
    Name f = Name(
        time: "Today",
        name: "Dr. Strange",
        statement: "It's magic",
        image:
            "https://www.michigandaily.com/wp-content/uploads/2022/05/online_pasted-image-0.jpg");
    Name g = Name(
        time: "Today",
        name: "Spider Man",
        statement: "You are my friend",
        image:
            "https://static.toiimg.com/thumb/resizemode-4,width-1200,height-900,msid-88293744/88293744.jpg");
    Name h = Name(
        time: "Tomorrow",
        name: "Ant Man",
        statement: "You are mine fellow",
        image: "https://pics.filmaffinity.com/Ant_Man-370306361-large.jpg");
    Name i = Name(
        time: "Tomorrow",
        name: "Hawkeye",
        statement: "Keep your eyes open..",
        image:
            "https://static1.colliderimages.com/wordpress/wp-content/uploads/2021/11/hawkeye-movies-in-order.jpg");
    list.add(a);
    list.add(b);
    list.add(c);
    list.add(d);
    list.add(e);
    list.add(f);
    list.add(g);
    list.add(h);
    list.add(i);

    // TODO: implement initState
    super.initState();
  }

  void togglewifi() {
    setState(() {
      wifien = !wifien;
    });
  }
}
