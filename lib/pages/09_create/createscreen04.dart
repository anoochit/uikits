import 'dart:developer';
import 'package:flutter/material.dart';

class CreateScreen04 extends StatefulWidget {
  const CreateScreen04({super.key});

  @override
  State<CreateScreen04> createState() => _CreateScreen04State();
}

class _CreateScreen04State extends State<CreateScreen04> {
  int? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create"),
        actions: [
          IconButton(
            icon: const Icon(Icons.save_outlined),
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
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Title',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Description',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: DropdownButtonFormField(
                      decoration: const InputDecoration(
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
                  SizedBox(
                    width: constraints.maxWidth,
                    child: ElevatedButton(
                      child: const Text("Publish"),
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
