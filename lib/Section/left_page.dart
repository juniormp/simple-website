import 'package:flutter/material.dart';
import 'package:simple_web_app/Custom/custom_text.dart';

class LeftPage extends StatefulWidget {
  @override
  _LeftPageState createState() => _LeftPageState();
}

class _LeftPageState extends State<LeftPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35.0, top: 20.0),
            child: CustomText(
              text: "Travelrr",
              fontSize: 35,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 35.0, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "hey",
                  fontSize: 55,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                CustomText(
                  text: "Where are you going on",
                  fontSize: 55,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                CustomText(
                  text: "for vacation holiday",
                  fontSize: 55,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                SizedBox(height: 30),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    height: 50,
                    width: 270,
                    child: Center(
                      child: CustomText(
                        text: "Plan a vacation",
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30)
              ],
            ),
          )
        ],
      ),
    );
  }
}
