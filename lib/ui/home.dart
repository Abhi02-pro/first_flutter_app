import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  _tappedButton() {
    debugPrint("Button Tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: false,
        backgroundColor: Colors.pinkAccent.shade700,
        actions: [
          IconButton(
              icon: Icon(Icons.email),
              onPressed: () => debugPrint("Email pressed")),
          IconButton(icon: Icon(Icons.alarm), onPressed: _tappedButton),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: _tappedButton,
          )
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.add),
        onPressed: ()=> debugPrint("Add Something"),
      ),
      
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.access_time), title: Text("Time")),
        BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), title: Text("Wallet")),
        BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text("Account")),
      ], onTap: (int index)=> debugPrint("Clicked on Button ${index+1}"),
      ),
      
      backgroundColor: Colors.pinkAccent.shade100,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(),
              InkWell(
                child: Text("Tap me !", style: TextStyle(fontSize: 25),) ,
                onTap: ()=> debugPrint("I am Tapped..."),
              )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final snackbar = SnackBar(content: Text("Abhinav Here !"),
        backgroundColor: Colors.pink,);

        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(8),

        ),
        child: Text("Button"),
      ),
    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.deepOrangeAccent,
      child: Center(
        child: Text(
          "Welcome Abhinav !",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            // fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );

    // return Center(̥
    //   child: Text("Hello Flutter!",
    //   textDirection: TextDirection.ltr,),
    // );
  }
}
