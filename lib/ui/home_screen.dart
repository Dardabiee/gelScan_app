import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/gojo.jpeg'),
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Halo, Gojo sitorus ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text('Frontend Developer', style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600)),
                ],
              )
            ],
           ),
          ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome to",style: TextStyle(fontSize: 20),),
              Text("gelScan",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          ),
          SizedBox(height: 50,),
          Expanded(
            child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
            children: [
              BuildButton(icon: Icons.qr_code, label:'Create', iconColor: Colors.white, backgroundColor: Colors.lightBlue, onTap: (){
                Navigator.pushNamed(context, '/create');
              }),
              BuildButton(icon: Icons.qr_code_scanner, label:'Scan', iconColor: Colors.white, backgroundColor: Colors.lightBlue, onTap: (){
                Navigator.pushNamed(context, '/scan');
              }),
              BuildButton(icon: Icons.send, label:'Send', iconColor: Colors.white, backgroundColor: Colors.lightBlue, onTap: (){}),
              BuildButton(icon: Icons.print, label:'Print', iconColor: Colors.white, backgroundColor: Colors.lightBlue, onTap: (){}),

            ],
           )
          )
        ],
      ),
    );
  }
}

class BuildButton extends StatelessWidget {
  const BuildButton({
    super.key,
    required this.icon,
    required this.label,
    required this.iconColor,
    required this.backgroundColor,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Color iconColor;
  final Color backgroundColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 110, // Lebar tetap untuk setiap tombol
        height: 110, // Tinggi tetap untuk setiap tombol
        decoration: BoxDecoration(
          color: Colors.white, // Latar tombol abu-abu terang
          borderRadius: BorderRadius.circular(20), // Sudut membulat
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05), // Bayangan lembut
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: backgroundColor, // Warna latar ikon
                borderRadius: BorderRadius.circular(12), // Sudut membulat ikon
              ),
              padding: const EdgeInsets.all(35),
              child: Icon(
                icon,
                color: iconColor, // Warna ikon
                size: 40, // Ukuran ikon lebih besar
              ),
            ),
            const SizedBox(height: 15), // Jarak antara ikon dan teks
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16, // Ukuran teks
              ),
            ),
          ],
        ),
      ),
    );
  }
}