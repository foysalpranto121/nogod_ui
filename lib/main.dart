import 'package:flutter/material.dart';

void main() => runApp(NagadApp());

class NagadApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NagadHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NagadHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final iconSize = screenWidth * 0.15;

    return Scaffold(
      appBar: AppBar(
        title: Text('Nagad Services', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.redAccent,
        elevation: 0,
      ),
      body: Column(
        children: [

          Container(
            color: Colors.redAccent,
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.redAccent,
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                ),
                onPressed: () {},
                child: Text(
                  "Tap for Balance",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ),

          // Main Content Section
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 16, // Horizontal spacing
                  runSpacing: 16, // Vertical spacing
                  children: [
                    _buildServiceCard(Icons.send, "Send Money", iconSize),
                    _buildServiceCard(Icons.download, "Cash Out", iconSize),
                    _buildServiceCard(Icons.phone_android, "Mobile Recharge", iconSize),
                    _buildServiceCard(Icons.store, "Merchant Pay", iconSize),
                    _buildServiceCard(Icons.payment, "Bill Pay", iconSize),
                    _buildServiceCard(Icons.language, "Website", iconSize),
                    _buildServiceCard(Icons.contact_phone, "Contact Us", iconSize),
                    _buildServiceCard(Icons.info_outline, "Limits & Charges", iconSize),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),


      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "Transactions"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "My Nagad"),
        ],
      ),
    );
  }

  Widget _buildServiceCard(IconData icon, String label, double size) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 5,
      child: Container(
        width: 100, // Fixed width for cards
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: size, color: Colors.redAccent),
            SizedBox(height: 5),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
