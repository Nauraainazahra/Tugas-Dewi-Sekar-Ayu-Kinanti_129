import 'package:flutter/material.dart';

class GanjilGenapPage extends StatefulWidget {
  @override
  _GanjilGenapPageState createState() => _GanjilGenapPageState();
}

class _GanjilGenapPageState extends State<GanjilGenapPage> {
  final TextEditingController numController = TextEditingController();
  String result = "";

  void cekGanjilGenap() {
    setState(() {
      int num = int.parse(numController.text);
      if (num % 2 == 0) {
        result = "Genap";
      } else {
        result = "Ganjil";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cek Ganjil/Genap'),
        backgroundColor: Colors.deepOrangeAccent, 
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple[50]!, Colors.deepOrangeAccent[200]!], 
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: numController,
                        decoration: InputDecoration(
                          labelText: 'Masukkan Angka',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent, 
                  foregroundColor: Colors.white, 
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), 
                  ),
                ),
                onPressed: cekGanjilGenap,
                child: Text(
                  'Cek',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Hasil: $result',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent, 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
