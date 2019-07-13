
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  Widget myCarousel() => SizedBox(
//        height: 200.0,
//        child: Carousel(
//          boxFit: BoxFit.cover,
//          images: [
//            AssetImage('assets/images/image1.jpg'),
//            AssetImage('assets/images/image2.jpg'),
//            AssetImage('assets/images/image3.jpg'),
//            AssetImage('assets/images/image4.jpg'),
//            AssetImage('assets/images/image5.jpg'),
//            AssetImage('assets/images/image6.jpg'),
//          ],
//          showIndicator:true,
//          dotBgColor: Colors.transparent,
//          animationCurve: Curves.easeIn,
//
//      borderRadius: false,
//      // moveIndicatorFromBottom: 100.0,
//
//      noRadiusForIndicator: true,
//      overlayShadow: true,
//      overlayShadowColors: Colors.white,
//      overlayShadowSize: 0.7,
//
//        ),
//      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text("Ecommerce"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
//          IconButton(
//            icon: Icon(
//              Icons.shopping_cart,
//              color: Colors.white,
//            ),
//            onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(cotext)=>MyCart())),
//          ),
        ],
      ),
//      drawer: Drawer(
//        child: ListView(
//          children: <Widget>[
//            UserAccountsDrawerHeader(
//              accountName: Text("Hassain"),
//              accountEmail: Text("hassainking04@mail.com"),
//              currentAccountPicture: GestureDetector(
//                child: CircleAvatar(
//                  backgroundColor: Colors.grey,
//                  child: Icon(
//                    Icons.person,
//                    color: Colors.white,
//                  ),
//                ),
//              ),
//            ),
//            SizedBox(
//              height: 20.0,
//            ),
//            InkWell(
//              onTap: () {},
//              child: ListTile(
//                title: Text("Home Page"),
//                leading: Icon(Icons.home),
//              ),
//            ),
//            InkWell(
//              onTap: () {},
//              child: ListTile(
//                title: Text("My Account"),
//                leading: Icon(Icons.account_circle),
//              ),
//            ),
//            InkWell(
//              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyCart())),
//              child: ListTile(
//                title: Text("My Cart"),
//                leading: Icon(Icons.shopping_basket),
//              ),
//            ),
//            Divider(),
//            InkWell(
//              onTap: () {},
//              child: ListTile(
//                title: Text("Contact Us"),
//                leading: Icon(Icons.live_help),
//              ),
//            ),
//            InkWell(
//              onTap: () {},
//              child: ListTile(
//                title: Text("About"),
//                leading: Icon(Icons.help),
//              ),
//            )
//          ],
//        ),
//      ),
//      body: ListView(
//        children: <Widget>[
//          myCarousel(),
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Text("Categories"),
//            ),
//
//        CategoryListView(),
//        Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Text("Recents"),
//
//            ),
//
//
//            Container(child: ProductsList(),height: 320.0,),
//
//        ],
//      ),
    );
  }
}
