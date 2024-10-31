import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  static String routeName = '/detail';

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int quantity = 1;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);  
            
          },
        ),
        title: Text("Detail", style: TextStyle(color: Colors.black, fontSize:25, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite,
              color: isFavorite ? Colors.pink : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;  
                
              });
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Image.asset(
                  'assets/images/chaise1.png', 
                  height: 415,
                  fit: BoxFit.contain,
                ),

              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 226, 234, 238),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 50,
                          height: 5,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 213, 212, 212),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lorem Chair", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              Text("Relax, Comfortable", style: TextStyle(color: Colors.black)),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(244, 162, 244, 255),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      if (quantity > 1) quantity--;  
                                      
                                    });
                                  },
                                ),
                                Text(quantity.toString(), style: TextStyle(fontSize: 18)),
                                IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      quantity++;   
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                        "Blandit in nunc, et sit velit at aliquam tortor. Tristique ut"
                        "ante nec nullam urna. Ultrices ac lorem ruturm purus. Nunc.",
                        style: TextStyle(color: const Color.fromARGB(255, 36, 35, 35), fontSize: 15),
                      ),
                      SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Color", style: TextStyle(fontSize: 17, color: Colors.black)),
                              SizedBox(width: 9),
                              CircleAvatar(backgroundColor: Colors.black, radius: 12),
                              SizedBox(width: 9),
                              CircleAvatar(backgroundColor: Colors.red, radius: 12),
                              SizedBox(width: 9),
                              CircleAvatar(backgroundColor: Colors.brown, radius: 12),
                            ],
                          ),
                          Text("Total Rp.99.999", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        ],
                      ),
                      SizedBox(height: 85),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/checkout');  
                          
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,  
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 19),
                          minimumSize: Size(double.infinity, 50),
                        ),
                        child: Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
