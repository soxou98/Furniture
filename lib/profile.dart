import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 16),
            
            const CircleAvatar(
              radius: 48,
              backgroundColor: Colors.orange,
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage('assets/images/person.png'), 
                            ),
            ),
            const SizedBox(height: 16),
            
            const Text(
              'Brian Smith',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'joined since 2021',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 32),
            
            Expanded(
              child: ListView(
                children: [
                  _buildSectionHeader('Account'),
                  _buildListItem('Lorem ipsum'),
                  _buildListItem('Lorem ipsum'),
                  _buildListItem('Lorem ipsum'),

                  const SizedBox(height: 16),

                  _buildSectionHeader('Settings'),
                  _buildListItem('Lorem ipsum'),
                  _buildListItem('Lorem ipsum'),
                  _buildListItem('Lorem ipsum'),
                  _buildListItem('Lorem ipsum'),

                  const SizedBox(height: 16),

                  _buildSectionHeader('Profile'),
                  _buildListItem('Lorem ipsum'),
                  _buildListItem('Lorem ipsum'),
                  const SizedBox(height: 16),
                  _buildSectionHeader('Notification'),
                  _buildListItem('Lorem ipsum'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3, 
        onTap: (soxna) {
          if (soxna == 0) {
            Navigator.pushNamed(context, '/home');
          } else if (soxna == 1) {
            Navigator.pushNamed(context, '/discount');
          } else if (soxna == 2) {
            Navigator.pushNamed(context, '/checkout');
          } else if (soxna == 3) {
            // Page actuelle
          }
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.discount_outlined),
            label: 'Discount',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Checkout',
          ),
          const BottomNavigationBarItem(
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

  
  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }


  Widget _buildListItem(String title) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {
      },
    );
  }
}
