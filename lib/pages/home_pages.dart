import 'package:flutter/material.dart';
import 'package:flutter_peer_1/util/coffee_title.dart';
import 'package:flutter_peer_1/util/coffee_type.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// list of coffee type
  final List coffeeType = [
    [
      'capyucino',
      true,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Tea',
      false,
    ],
    [
      'Black',
      false,
    ],
  ];

  void coffeeTypeSelected(int index) {
    setState(() {
      // this for loop make every selection false
      for ( int i = 0; i < coffeeType.length;i++) {
       coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ' ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: '',
        ),
      ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "find thr best coffee for you",
              style: GoogleFonts.bebasNeue(
                fontSize: 56,
              ),
            ),
          ),

          //when user tap  on coffee type

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your  coffee..',
                focusedBorder: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
              ),
            ),
          ),
          // hohrizontal list of coffee
          Container(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
                  return CoffeeType(
                    coffeeTytpee: coffeeType[index][0],
                    isSelect: coffeeType[index][1],
                    onTap: () {
                      coffeeTypeSelected(index);
                    },
                  );
                }),
          ),

          // Horrizontal listview of coffee titles
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeTitle(
                  coffeeImagePath: 'lib/images/coffee1.jpg',
                  coffeeName: "Latte",
                  coffeePrice: "4.20"
                ),
                CoffeeTitle(
                  coffeeImagePath: 'lib/images/coffee2.jpg',
                  coffeeName: "Milk",
                  coffeePrice: "2.00"
                ),
                CoffeeTitle(
                  coffeeImagePath: 'lib/images/coffee3.jpg',
                  coffeeName: "Black",
                  coffeePrice: "5.80"
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
