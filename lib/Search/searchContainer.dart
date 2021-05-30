import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SearchContainer extends StatefulWidget {
  @override
  _SearchContainerState createState() => _SearchContainerState();

  final Image image;
  final String name;
  final bool isVeg;
  Color iconColor;

  SearchContainer({this.image, @required this.name, @required this.isVeg});
}

class _SearchContainerState extends State<SearchContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _searchMainContainer(),
    );
  }

  Widget _searchMainContainer() {
    return Container(
        margin: EdgeInsets.all(10.0),
        height: 122.0,
        width: 107.0,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            // Image.asset(
            //   widget.image.toString(),
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            // ),
            _isFavourite(),
            if (widget.isVeg == true)
              _smallVegContainer()
            else
              _smallChickenContainer()
          ],
        ));
  }

  Widget _isFavourite() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: GestureDetector(
              child: Icon(
                Icons.favorite,
                color: widget.iconColor,
                size: 20.0,
              ),
              onTap: () {
                setState(() {
                  if (widget.iconColor == Colors.black) {
                    widget.iconColor = Colors.red;
                  } else {
                    widget.iconColor = Colors.black;
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _smallVegContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 15.0,
              width: 15.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
              ),
              child: Center(
                child: Container(
                  height: 10.0,
                  width: 10.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Text(
                widget.name,
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _smallChickenContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 15.0,
              width: 15.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
              ),
              child: Center(
                child: Container(
                  height: 10.0,
                  width: 10.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Text(
                widget.name,
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}


