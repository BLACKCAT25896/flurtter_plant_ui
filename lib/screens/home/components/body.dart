import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size, context),
          TitleWithCustomUnderline()
        ],
      ),
    );
  }



  Container TitleWithCustomUnderline() {
    return Container(
          height: 24,
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding/4),
                child: Text("Recommended",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),

              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.only(right: kDefaultPadding/4),
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2),

                ),
              )
            ],
          ),
        );
  }


}
