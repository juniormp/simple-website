import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_web_app/Custom/custom_container.dart';
import 'package:simple_web_app/Custom/custom_nav.dart';
import 'package:simple_web_app/Custom/custom_text.dart';

List<String> catagory = ['All', 'Popular', 'Recents', 'Most-viewed'];

List<String> image = [
  "https://images.pexels.com/photos/2113566/pexels-photo-2113566.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/33041/antelope-canyon-lower-canyon-arizona.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/417344/pexels-photo-417344.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/248771/pexels-photo-248771.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/33545/sunrise-phu-quoc-island-ocean.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/5015523/pexels-photo-5015523.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/1518500/pexels-photo-1518500.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/580151/pexels-photo-580151.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/1837603/pexels-photo-1837603.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
  "https://images.pexels.com/photos/2901212/pexels-photo-2901212.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
];

class RightPage extends StatefulWidget {
  @override
  _RightPageState createState() => _RightPageState();
}

class _RightPageState extends State<RightPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.47,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.menu, size: 30.0),
                Spacer(),
                Row(children: [
                  CustomButton(text: "Travel Stories"),
                  CustomButton(text: "Blog"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/4889486/pexels-photo-4889486.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  )
                ]),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            CustomText(
              text: "Let's enjoy",
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            CustomText(
              text: "The vacation",
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(right: 200.0),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.search_outlined, size: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: CustomText(
                        text: "search",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: catagory.map((e) => CustomNav(e)).toList(),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: image.map((e) => CustomContainer(e)).toList(),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: image.map((e) => CustomContainer(e)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 5.0,
        ),
        child: CustomText(
          text: text,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}
