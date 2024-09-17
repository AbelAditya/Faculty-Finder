import 'package:faculty_finder/components/customListTile.dart';
import 'package:flutter/material.dart';
import 'package:faculty_finder/data/faculty_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> temp = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Enter Faculty Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 2,
                    ),
                  ),
                ),
                onChanged: (content) {
                  List data = facultyData.keys.toList();
                  RegExp regExp = RegExp(content.toUpperCase());
                  setState(
                    () {
                      temp = [];
                      for (int i = 0; i < data.length; i++) {
                        if (regExp.hasMatch(data[i])) {
                          temp.add(data[i]);
                        }
                      }
                    },
                  );
                },
              ),
              temp.isEmpty ? const SizedBox(height: 40,):Container(),
              temp.isEmpty
                  ? const Text(
                    "Search for Faculty",
                    style: TextStyle(fontSize: 20),
                  )
                  : Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Customlisttile(name: temp[index]);
                        },
                        itemCount: temp.length,
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
