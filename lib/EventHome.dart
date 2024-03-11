import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventHome extends StatelessWidget {
  final List<Map<String, dynamic>> MyItems = [
    {
      "img":
          "https://clipart-library.com/images_k/laptop-png-transparent/laptop-png-transparent-17.png",
      "title": "Dell Inspiron 15",
      "price": 899.99
    },
    {
      "img":
          "https://clipart-library.com/images_k/laptop-png-transparent/laptop-png-transparent-17.png",
      "title": "HP Pavilion x360",
      "price": 749.99
    },
    {
      "img":
          "https://clipart-library.com/images_k/laptop-png-transparent/laptop-png-transparent-17.png",
      "title": "Lenovo ThinkPad X1 Carbon",
      "price": 1299.99
    },
    {
      "img":
          "https://clipart-library.com/images_k/laptop-png-transparent/laptop-png-transparent-17.png",
      "title": "Asus ROG Strix G15",
      "price": 1499.99
    },
    {
      "img":
          "https://clipart-library.com/images_k/laptop-png-transparent/laptop-png-transparent-17.png",
      "title": "Apple MacBook Pro 13",
      "price": 1799.99
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event'),
        centerTitle: true,
        actions: [
          ElevatedButton(
            onPressed: () {
              // Your button action here
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue, // Set the button color here
              minimumSize: Size(80.0, 36.0),
              // Set the button size here
            ),
            child: Text('Create',style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,crossAxisSpacing:6.0),
        itemCount: MyItems.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: Card(
                elevation: 2.0,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Image.network(MyItems[index]["img"]!),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(MyItems[index]["title"]!),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your button press logic here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          padding: EdgeInsets.all(5.0),
                          minimumSize: Size(150, 40),
                          maximumSize: Size(200, 50),
                        ),
                        child: const Text(
                          "Join",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          );
        },
      ),

    );
  }
}
