import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snikkersappui/classes/model.class.dart';
import 'package:snikkersappui/ui/components.dart';

class Details extends StatefulWidget {
  final Sneakers? sneaker;
  Details({Key? key, this.sneaker}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    final sneaker = widget.sneaker;
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors_c.backgroundcolor,
      appBar: AppBar(
        backgroundColor: Colors_c.backgroundcolor,
        title: Text(
          sneaker!.brand,
          style: GoogleFonts.aladin(fontSize: 26),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                height: s.height * 0.3,
                width: s.width * 0.8,
                child: Image.network(
                  sneaker.image_url,
                  fit: BoxFit.cover,
                ),
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Brand Name:",
                          style: TextStyle(color: Colors_c.primary_colors),
                        ),
                        Text(
                          sneaker.brand,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Discount:",
                          style: TextStyle(color: Colors_c.primary_colors),
                        ),
                        Text(
                          sneaker.discount,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Price:",
                          style: TextStyle(color: Colors_c.primary_colors),
                        ),
                        Text(
                          sneaker.price,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Stock:",
                          style: TextStyle(color: Colors_c.primary_colors),
                        ),
                        Text(
                          sneaker.stock,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Rating:",
                          style: TextStyle(color: Colors_c.primary_colors),
                        ),
                        Text(
                          sneaker.stars,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                height: 40,
                width: s.width * 0.6,
                child: Center(
                  child: Text(
                    "Add to Cart!",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Spacer()
            ],
          )),
        ),
      ),
    );
  }
}
