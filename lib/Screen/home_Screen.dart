import 'package:believable/Screen/nearMe.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        titleSpacing: 0,
        //Remove back button
        leading: Container(),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'Location',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Vadodara',
              style: TextStyle(fontSize: 28, color: Colors.black),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage('assets/images/profile.png'),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Now you are in',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                '4th queue',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  padding: EdgeInsets.all(9),
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red,
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'dex barber',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '2.6 KM',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'estimated 50 min',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_right,
                        size: 40,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Discover by categories',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => NearMeScreen()));
                        },
                        child: GridElement(
                          image: 'assets/images/locationimage.png',
                          title: 'Near me',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => NearMeScreen()));
                        },
                        child: GridElement(
                          image: 'assets/images/topbarber.png',
                          title: 'Top Barbers',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => NearMeScreen()));
                        },
                        child: GridElement(
                          image: 'assets/images/heartimage.png',
                          title: 'Favorites',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Recent Bookings',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                width: double.infinity,
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RecentBooking(
                        image: 'assets/images/sal1.jpg',
                      ),
                      SizedBox(width: 30),
                      RecentBooking(
                        image: 'assets/images/sal3.jpg',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home,
              color: Colors.red,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.book,
              color: Colors.red,
              size: 30,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.notifications,
              color: Colors.red,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}

class RecentBooking extends StatelessWidget {
  final String image;
  const RecentBooking({
    Key key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 160,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(30),
        color: Colors.red,
      ),
    );
  }
}

class GridElement extends StatelessWidget {
  final String title;
  final String image;
  const GridElement({
    this.image,
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 30,
              width: 30,
              child: Image.asset(image),
            ),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
