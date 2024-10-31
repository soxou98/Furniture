import 'package:flutter/material.dart';

class Discount extends StatelessWidget {
  static const routeName = '/discount';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          'Discount',
          style: TextStyle(color: Colors.black),
        ),
      ),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            SizedBox(height: 25), 
            _buildDiscountCard(
              imageUrl: 'assets/images/discount1.png', 
              title: 'Lorem Chair',
              subtitle: 'Chill, Comfortable',
              price: 'Rp. 99.999',
              rating: 5,
            ),
            SizedBox(height: 16), 

            _buildDiscountCard(
              imageUrl: 'assets/images/discount2.png', 
              title: 'Lorem Carpet',
              subtitle: 'Chill, Comfortable',
              price: 'Rp. 99.999',
              rating: 5,
            ),
            SizedBox(height: 16),
            _buildDiscountCard(
              imageUrl: 'assets/images/discount3.png', 
              title: 'Lorem Table',
              subtitle: 'Chill, Comfortable',
              price: 'Rp. 99.999',
              rating: 5,
            ),
            SizedBox(height: 16),
            _buildDiscountCard(
              imageUrl: 'assets/images/discount4.png', 
              title: 'Lorem Sofa',
              subtitle: 'Chill, Comfortable',
              price: 'Rp. 99.999',
              rating: 5,
            ),
            SizedBox(height: 16),
            _buildDiscountCard(
              imageUrl: 'assets/images/discount5.png', 
              title: 'Lorem Sofa',
              subtitle: 'Chill, Comfortable',
              price: 'Rp. 99.999',
              rating: 5,
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, 
        onTap: (soxna) {
          if (soxna == 0) {
            Navigator.pushNamed(context, '/home');
          } else if (soxna == 1) {
          } else if (soxna == 2) {
            Navigator.pushNamed(context, '/checkout');
          } else if (soxna == 3) {
            Navigator.pushNamed(context, '/profile');
          }
        },
        items: const [
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
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }


  Widget _buildDiscountCard({
    required String imageUrl,
    required String title,
    required String subtitle,
    required String price,
    required int rating,
  }) {

    return Container(
      height: 150, 
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: List.generate(
                    rating,
                    (index) => Icon(Icons.star, color: Colors.orange, size: 16),
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
