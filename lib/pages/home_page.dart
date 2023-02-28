import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cars", style: TextStyle(color: Colors.red, fontSize: 25),),
        elevation: 0,
        backgroundColor: Colors.transparent,
      //  brightness: Brightness.light,
        actions: [
          IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.notifications_none, color: Colors.red,)
          ),
          IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.shopping_cart, color: Colors.red,)
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _singleTab(true, "All"),
                    _singleTab(false, "Red"),
                    _singleTab(false, "Blue"),
                    _singleTab(false, "Green"),
                    _singleTab(false, "Orrange"),
                    _singleTab(false, "Yellow")
                  ],
                ),
              ),

              SizedBox(height: 20,),

              _makeItem('assets/images/im_car1.jpg'),
              _makeItem('assets/images/im_car2.jpg'),
              _makeItem('assets/images/im_car3.jpg'),
              _makeItem('assets/images/im_car4.png'),
              _makeItem('assets/images/im_car5.jpg'),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _singleTab(bool type, String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.orange: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(
          child: Text(text, style: TextStyle(color: type? Colors.white : Colors.black, fontSize: type? 20:17),),
        ),
      ),
    );
  }

  Widget _makeItem(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image:  AssetImage(image),
          fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 10,
            offset: Offset(0, 10)
          )
        ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("PDP Car", style: TextStyle(color: Colors.white, fontSize: 25),),
                SizedBox(width: 10,),
                Text("Electric", style: TextStyle(color: Colors.orange, fontSize: 20),),
              ],
            ),

            Text("77 000\$", style: TextStyle(color: Colors.white, fontSize: 25),),

            Expanded(
              child: Container(),
            ),

            Container(
              width: 35, height: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
              ),
              child: Center(
                child: Icon(Icons.favorite_border, size: 20),
              ),
            )

          ],
        ),
      ),
    );
  }
}
