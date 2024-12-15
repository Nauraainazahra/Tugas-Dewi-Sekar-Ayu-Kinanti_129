import 'package:flutter/material.dart';

class KelompokPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Mahasiswa'),
        backgroundColor: Colors.teal, 
        centerTitle: true, 
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.teal[50]!, Colors.teal[100]!], 
          ),
        ),
        padding: EdgeInsets.all(16.0), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 4, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), 
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0), 
                child: ListTile(
                  leading: Icon(Icons.person, size: 40, color: Colors.teal), 
                  title: Text(
                    'Nama: Dewi Sekar Ayu Kinanti, NIM : 124220129',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[900], 
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40), 
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white, 
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), 
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/aritmatika');
                    },
                    child: Text(
                      'Menu Aritmatika',
                      style: TextStyle(fontSize: 18), 
                    ),
                  ),
                  SizedBox(height: 20), 
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal, 
                      foregroundColor: Colors.white, 
                      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), 
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/ganjilgenap');
                    },
                    child: Text(
                      'Menu Ganjil/Genap',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
