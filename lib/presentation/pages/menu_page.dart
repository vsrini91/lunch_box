import 'package:flutter/material.dart';
import 'package:lunch_box/presentation/admin/dashboard.dart';

class MenuScreen extends StatefulWidget {
  final String value;
  MenuScreen({Key key, this.value}) : super(key: key);

  @override
  _MenuState createState() => new _MenuState();
}

class _MenuState extends State<MenuScreen> {
  List names = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"];
  List desginations = [
    "Sambar Rice (White rice with sambar)",
    "Yogurt Rice with sambar",
    "Chenna Masala",
    "White Rice with Veg Channa Curry",
    "Sambar Rice (White Rice with Sambar"
  ];
  List menuImg = [
    "https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2017/10/sambar-rice-recipe-1a.jpg",
    "https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2017/10/sambar-rice-recipe-1a.jpg",
    "https://simpleveganblog.com/wp-content/uploads/2018/07/Simple-chana-masala-5.jpg",
    "https://simpleveganblog.com/wp-content/uploads/2018/07/Simple-chana-masala-5.jpg",
    "https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2017/10/sambar-rice-recipe-1a.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xff192128),
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Image.asset('assets/images/brand.png', width: 250, height: 35),
          backgroundColor: Color(0xff202d38),
          actions: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminDashboard(),
                  ),
                );
              },
            ),
          ],
        ),
        body: new Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(7.0),
            child: Text('Today Special',
                style: TextStyle(fontSize: 22, color: Color(0xff3AAFA9))),
          ),
          new Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Color(0xff212a33),
            elevation: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 6.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          if ("${widget.value}" == "null")
                            Text(
                              "None",
                              style: new TextStyle(color: Color(0xffe8e8e8)),
                              textAlign: TextAlign.left,
                            )
                          else
                            Text(
                              "${widget.value}",
                              style: new TextStyle(color: Color(0xffe8e8e8)),
                              textAlign: TextAlign.left,
                            ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(7.0),
            child: Text('Weekly Special',
                style: TextStyle(fontSize: 22, color: Color(0xff3AAFA9))),
          ),
          new Expanded(
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) => Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  color: const Color(0xFF2d3a46),
                  elevation: 1.5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 55.0,
                              height: 55.0,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.green,
                                backgroundImage: NetworkImage(menuImg[index]),
                              ),
                            ),
                            SizedBox(width: 6.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(names[index],
                                    style: TextStyle(
                                      color: Color(0xff66FCF1),
                                      fontSize: 18.0,
                                    )),
                                SizedBox(height: 5.0),
                                Text(desginations[index],
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]));
  }
}
