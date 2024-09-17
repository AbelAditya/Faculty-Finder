import 'package:faculty_finder/data/faculty_data.dart';
import 'package:flutter/material.dart';

class Customlisttile extends StatefulWidget {
  const Customlisttile({super.key, required this.name});

  final String name;

  @override
  State<Customlisttile> createState() => _CustomlisttileState();
}

class _CustomlisttileState extends State<Customlisttile> {
  bool _isExp = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExp = !_isExp;
        });
      },
      child: AnimatedCrossFade(
        firstChild: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 5),
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
              ),
              SizedBox(
                width: 15,
              ),
              Flexible(
                child: Text(
                  widget.name,
                  style: TextStyle(fontSize: 20),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
        secondChild: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(horizontal: 5),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    child: Text(
                      widget.name,
                      style: TextStyle(fontSize: 20),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Text(
                facultyData[widget.name] ?? "",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
        crossFadeState:
            _isExp ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: Duration(
          milliseconds: 350,
        ),
      ),
    );
  }
}
