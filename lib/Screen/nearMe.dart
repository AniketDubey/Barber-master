import 'package:believable/Screen/barberprofile_screen.dart';
import 'package:flutter/material.dart';

class NearMeScreen extends StatefulWidget {
  @override
  NearMeScreenState createState() => NearMeScreenState();
}

class NearMeScreenState extends State<NearMeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Near Me',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarHeight: 50,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.filter_alt_sharp,
                  color: Colors.red,
                  size: 32,
                ),
                onPressed: () {})
          ],
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
              child: AppBar(
                bottom: TabBar(
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  tabs: [
                    Tab(
                      text: 'Shops',
                    ),
                    Tab(
                      text: 'Barbers',
                    ),
                  ],
                ),
              ),
            ),
            // create widgets for each tab bar here
            Expanded(
              child: TabBarView(
                children: [
                  // first tab bar view widget
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ShopsTile(
                            title: "Sam's Place",
                            distance: "2 KM",
                            image: 'assets/images/sal1.jpg',
                          ),
                          ShopsTile(
                            title: "Dex's Place",
                            distance: "2 KM",
                            image: 'assets/images/sal2.jpg',
                          ),
                          ShopsTile(
                            title: "His's Place",
                            distance: "5 KM",
                            image: 'assets/images/sal3.jpg',
                          ),
                          ShopsTile(
                            title: "Lee's Place",
                            distance: "10 KM",
                            image: 'assets/images/sal4.jpg',
                          ),
                          ShopsTile(
                            title: "Dee's Place",
                            distance: "15 KM",
                            image: 'assets/images/sal2.jpg',
                          ),
                          ShopsTile(
                            title: "Ami's Place",
                            distance: "14 KM",
                            image: 'assets/images/sal1.jpg',
                          ),
                        ],
                      ),
                    ),
                  ),
                  // second tab bar viiew widget
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ShopsTile(
                            title: "Sam",
                            distance: "2 KM",
                            image: 'assets/images/p1.jpg',
                          ),
                          ShopsTile(
                            title: "Dex",
                            distance: "2 KM",
                            image: 'assets/images/p2.jpg',
                          ),
                          ShopsTile(
                            title: "Lee",
                            distance: "5 KM",
                            image: 'assets/images/p3.jpg',
                          ),
                          ShopsTile(
                            title: "Ree",
                            distance: "10 KM",
                            image: 'assets/images/p4.jpg',
                          ),
                          ShopsTile(
                            title: "Dee",
                            distance: "15 KM",
                            image: 'assets/images/p5.jpg',
                          ),
                          ShopsTile(
                            title: "Me",
                            distance: "14 KM",
                            image: 'assets/images/p1.jpg',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShopsTile extends StatelessWidget {
  final String image;
  final String title;
  final String distance;
  const ShopsTile({
    this.title,
    this.image,
    this.distance,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 10,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => BarberProfile()));
                },
                title: Row(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(distance),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rs 300+',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '7th Street saribujrang, amalsad Navasari',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                leading: Container(
                  height: 120,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
