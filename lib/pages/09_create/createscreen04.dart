import 'dart:developer';
import 'package:flutter/material.dart';

class CreateScreen04 extends StatefulWidget {
  CreateScreen04({Key? key}) : super(key: key);

  @override
  _CreateScreen04State createState() => _CreateScreen04State();
}

class _CreateScreen04State extends State<CreateScreen04> {
  int? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
        actions: [
          IconButton(
            icon: Icon(Icons.save_outlined),
            onPressed: () {
              // place save function here
            },
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Title',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Description',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Select City",
                      ),
                      items: listCity.map((city) {
                        return DropdownMenuItem<int>(
                          value: city.id,
                          child: Text(city.city),
                        );
                      }).toList(),
                      value: dropdownValue,
                      onChanged: (value) {
                        // use dropdown value
                        log(value.toString());
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Please select city';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth,
                    child: ElevatedButton(
                      child: Text("Publish"),
                      onPressed: () {
                        // place publish function here
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// sample data

class City {
  final int id;
  final String city;

  City(this.id, this.city);
}

final listCity = [
  City(1, "New York, NY"),
  City(2, "Los Angeles, CA"),
];
