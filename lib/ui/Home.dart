import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snikkersappui/classes/model.class.dart';
import 'package:snikkersappui/classes/model.dart';
import 'package:snikkersappui/ui/components.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors_c.backgroundcolor,
      appBar: AppBar(
        title: Text(
          "Sneakers",
          style: GoogleFonts.aladin(fontSize: 26),
        ),
        backgroundColor: Colors_c.backgroundcolor,
      ),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text("Explore and Buy!",
                      style: GoogleFonts.aladin(
                          color: Colors.white, fontSize: 20)),
                ),
                Spacer(),
                Container(
                  height: s.height * 0.8,
                  width: s.width * 0.9,
                  child: ListView.builder(
                      itemCount: DataModel.data_list.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: s.height * 0.35,
                            width: s.width * 0.7,
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: card(context, DataModel.data_list[index]),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
