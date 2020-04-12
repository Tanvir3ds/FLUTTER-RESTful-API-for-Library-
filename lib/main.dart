import 'package:flutter/material.dart';
//import 'package:carousel_pro/carousel_pro.dart';
import 'package:library_app/product.dart';


void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      )
  );
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Library'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white), onPressed: (){
//==================//cart Add ======
           
          }),
        ],
      ),
      
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//             header part
            new UserAccountsDrawerHeader(
              accountName: Text('Tanvir'),
              accountEmail: Text('Tanvir@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),

//            body

            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
              child: ListTile(
                title: Text('Home Page'),
                
              ),
            ),

            InkWell(
              onTap: (){
                
              },
              child: ListTile(
                title: Text('My account'),
                
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My order'),
                
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Shooping cart'),
                
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
               
              ),
            ),



            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
              
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
               
              ),
            ),



          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[

//Horizontal List view being here

          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text('Recentproducts'),
          ),

// grid view
          Container(
            height: 800.0,
            child: Products(),
          )
        ],
      ),
    );




  }
}

