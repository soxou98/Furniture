import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40), 
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Furniture",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Your partner interior design",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.messenger_outline_outlined, color: Colors.grey),
                  onPressed: () {
                  },
                ),
              ],
            ),
            SizedBox(height: 20), 

            Row(
              children: [
                
                Expanded(
                  flex: 4,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Try search "Computer Table"',
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 249, 247, 247),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile'); 
                  },
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/person.png'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildMenuButton(context, 'Chair', true),
                  buildMenuButton(context, 'Table', false),
                  buildMenuButton(context, 'Bed', false),
                  buildMenuButton(context, 'Carpet', false),
                  buildMenuButton(context, 'Sofa', false),
                ],
              ),
            ),
            SizedBox(height: 20),

            Text(
              "Best for you",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15),


            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildHorizontalCard(context, 'assets/images/chaise1.png'), 
                  buildHorizontalCard(context, 'assets/images/chaise2.png'),
                  buildHorizontalCard(context, 'assets/images/chaise3.jpg'),
                ],
              ),
            ),
            SizedBox(height: 20),


            Text(
              "Best for you",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),


            Expanded(
              child: ListView(
                children: [
                  buildVerticalCard(context, 'assets/images/chaise4.png'),
                  buildVerticalCard(context, 'assets/images/chaise5.png'),
                  buildVerticalCard(context, 'assets/images/chaise6.png'),
                  buildVerticalCard(context, 'assets/images/chaise7.png'),
                ],
              ),
            ),
          ],
        ),
      ),

      // Navigation bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0, 
        selectedItemColor: Colors.orange,
        unselectedItemColor: Color.fromARGB(255, 220, 215, 215),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount_outlined),
            label: 'Discount',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Checkout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/home'); 
              break;
            case 1:
              Navigator.pushNamed(context, '/discount'); 
              break;
            case 2:
              Navigator.pushNamed(context, '/checkout'); 
              break;
            case 3:
              Navigator.pushNamed(context, '/profile'); 
              break;
          }
        },
      ),
    );
  }


  Widget buildMenuButton(BuildContext context, String text, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          if (text == "Table") {
            Navigator.pushNamed(context, '/home_table');
          }
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: isSelected ? Colors.orange : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color.fromARGB(255, 249, 247, 247)),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }


  Widget buildHorizontalCard(BuildContext context, String imagePath) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(10),
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath, height: 100), 
            SizedBox(height: 15),
            Text("Lorem Chair", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    SizedBox(width: 5),
                    Text("4.9"),
                  ],
                ),
                Text("Rp. 99.999", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget buildVerticalCard(BuildContext context, String imagePath) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(10),
      height: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(imagePath, height: 80), 
          SizedBox(width: 13),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Lorem Chair", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(height: 4),
              Text("Chill, Comfortable"),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  Icon(Icons.star, color: Colors.orange, size: 16),
                ],
              ),
              SizedBox(height: 5),
              Text("Rp. 99.999", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
