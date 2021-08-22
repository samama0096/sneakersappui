import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snikkersappui/classes/model.class.dart';
import 'package:snikkersappui/ui/Details.dart';

class Colors_c {
  static Color backgroundcolor = Color(0xff141E30);
  static Color button_colors = Color(0xffFFE000);
  static Color primary_colors = Color(0xffdce35b);
}

card(BuildContext context, Sneakers sneaker) {
  Size s = MediaQuery.of(context).size;
  return Container(
      child: Stack(
    children: [
      GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext con) => Center(
                    child: Container(
                      height: MediaQuery.of(con).size.height * 0.5,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(con).size.height * 0.3,
                            width: MediaQuery.of(con).size.width * 0.7,
                            child: Center(
                                child: Image.network(
                              sneaker.image_url,
                              fit: BoxFit.contain,
                            )),
                          ),
                          Container(
                              width: 200,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white, width: 0.1)),
                              child: Center(
                                child: Text("Tap below to close!",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10)),
                              ))
                        ],
                      ),
                    ),
                  ));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          height: s.height * 0.3,
          width: double.infinity,
          child: Image.network(
            sneaker.image_url,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: 170,
        left: 320,
        right: 10,
        bottom: 70,
        child: Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
                color: Colors_c.button_colors,
                borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text(
              "${sneaker.price}  pkr",
              style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 14),
            ))),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(
                          sneaker: sneaker,
                        )));
          },
          child: Container(
              height: 40,
              width: s.width,
              decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.4),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Center(
                  child: Text(
                "Buy Now!",
                style: GoogleFonts.manrope(
                    fontSize: 17,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold),
              ))),
        ),
      )
    ],
  ));
}
