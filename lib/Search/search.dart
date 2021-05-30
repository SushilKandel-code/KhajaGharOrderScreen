import 'package:flutter/material.dart';
import 'searchContent.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(),
        body: SearchContent(),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 15.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                _searchContainer()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchContainer() {
    return Container(
      height: 35.0,
      width: 300.0,
      padding: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xffF3F3F3),
          )
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        cursorColor: Colors.black,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xfff3f3f3),
          contentPadding: EdgeInsets.all(10.0),
          hintText: "Search for foods and drinks",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
