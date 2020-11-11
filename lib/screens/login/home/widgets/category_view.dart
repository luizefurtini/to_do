import 'package:flutter/material.dart';


class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {


  final List<String> categories = [
    "UTFPR",
    "STUDIES",
    "HOME",
    "SPORTS",
    "KATHARINE",
  ];

  int _category = 0;

  void selectFoward(){
    setState(() {
      _category++;
    });
  }

  void selectBackward(){
    setState(() {
      _category--;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          disabledColor: Colors.white30,
          onPressed: _category > 0 ? selectBackward : null,
        ),
        Text(
          categories[_category].toUpperCase(),
          style: TextStyle(
            fontSize: 22,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w400,
              color: Colors.white,
    ),
        ),
                  IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          color: Colors.white,
                    disabledColor: Colors.white30,
          onPressed: _category < categories.length - 1 ? selectFoward : null,
        ),
      ],
    );
  }
}
