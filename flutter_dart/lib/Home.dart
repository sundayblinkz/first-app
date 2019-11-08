import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState ();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 250.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          urlimage
          AssetImage('images/c1.jpg'),
          AssetImage('images/IMG_1266.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w2.jpeg'),
          AssetImage('images/w3.jpeg'),
        ],
        autoplay: false,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
      ),
    );

    return Scaffold(
      appBar: new AppBar(  //app bar and icons
      elevation: 0.1,
        title: Text('Shopex'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search, color: Colors.white,
              ), onPressed: () {}
               ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart, color: Colors.white,
              ), onPressed: () {} 
              ),
        ],
      ),

      drawer:new Drawer (  //drawer  
       child: ListView(
         children: <Widget>[
          // drawer header account
          new UserAccountsDrawerHeader(
            accountName: Text('patrick sunday'),
            accountEmail: Text('sundayblinkz1@gmail.com'),          
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.greenAccent,
                child: Icon(Icons.person,color: Colors.white,),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.grey,
            ),
            ),

               //   drawer body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('HomePage'),
                leading: Icon(Icons.home,color: Colors.black38,),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.black38,),
              ),
            ),

             InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Order'),
                leading: Icon(Icons.shopping_basket,color: Colors.black38,),
              ),
            ),

             InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categoris'),
                leading: Icon(Icons.dashboard,color: Colors.black38,),
              ),
            ),

             InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('favorite'),
                leading: Icon(Icons.favorite,color: Colors.black38,),
              ),
            ),

            Divider(thickness: 2,),

             InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('settings'),
                leading: Icon(Icons.settings,color: Colors.black38,),
              ),
            ),

             InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.black38,),
              ),
            ),

          ],
        )
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
        ],
      )
    );
  }
}

