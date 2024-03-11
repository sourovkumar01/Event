import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'EventHome.dart';

class CreateEvent extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<CreateEvent> {
  String _selectedPurpose = 'Option 1';
  String _selectedPaymentStatus = 'Paid';

  List<String> purposeOptions = ['Option 1', 'Option 2', 'Option 3'];
  List<String> paymentStatusOptions = ['Paid', 'Pending', 'Not Paid'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Create Even',
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Event Image',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('images/event_image.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0.0,
                      right: 0.0,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Upload Image',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:3.0),

              Text(
                'Name',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3.0),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
                  hintText: 'Name of your event ',
                ),
              ),
              SizedBox(height: 3.0),
              Text(
                'Purpose',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3.0),
              DropdownButtonFormField(
                value: _selectedPurpose,
                items: purposeOptions.map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedPurpose = value!;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  hintText: 'Choose purpose',
                ),
              ),

              SizedBox(height:3.0),

              Text(
                'Payment Status',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3.0),
              DropdownButtonFormField(
                value: _selectedPaymentStatus,
                items: paymentStatusOptions.map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedPaymentStatus = value!;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  hintText: 'Choose payment status',
                ),
              ),

              SizedBox(height:3.0),

              Text(
                'Budget',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 3.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Set the corner radius
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  hintText: 'Sate your budget', // Add a hint text
                ),
              ),
              SizedBox(height: 3.0),
               Text(
                'Per person Expenditure ',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3.0),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Set the corner radius
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  hintText: "Per person Expenditure ", // Add a hint text
                ),
              ),
              SizedBox(height: 3.0),
              Text(
                'Office contribute',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 3.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), //
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  hintText: 'Set office contribute ',
                ),
              ),
              SizedBox(height: 3.0),
              Text(
                'Event vanue ',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 3.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Set the corner radius
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  hintText: 'name of your event vanue  ',
                ),
              ),
              SizedBox(height: 3.0),
              Text(
                'location ',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 3.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15.0),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  hintText: 'Chose Location ',
                ),
              ),
              SizedBox(height: 3.0),

              Text(
                'privacy',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 3.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15.0),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  hintText: 'choose your privacy  ',
                ),
              ),


              SizedBox(height: 3.0),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,

                    minimumSize: Size(150.0, 40.0), // Set the button size here
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EventHome()));
                  },
                  child: Text('Create'),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
