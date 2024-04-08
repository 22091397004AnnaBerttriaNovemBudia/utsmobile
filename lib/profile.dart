import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Kelompok 8',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFFAD88C6),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context); //Kembali ke halaman sebelumnya saat tombol ditekan
          },
        ),
      ),
      backgroundColor: Color(0xFFE1AFD1),
      body: SafeArea(
        child: Column(
          children: [
            // Profil pertama
            ProfileCard(
              name: 'Anna Berttria Novem Budia',
              role: 'UI UX DESIGNER',
              contact: '081217234228',
              email: 'annaberttria.22004@mhs.unesa.ac.id',
              avatarImage: 'images/anna.jpg',
            ),

            // Profil kedua
            ProfileCard(
              name: 'Deby Putri Sulistyo Rini',
              role: 'WEB DEVELOPER',
              contact: '085729230667',
              email: 'debyputri.22029@mhs.unesa.ac.id',
              avatarImage: 'images/deby.jpg',
            ),

            // Profil ketiga
            ProfileCard(
              name: 'Siti Rina Sari',
              role: 'DATA SCIENTIST',
              contact: '087654321098',
              email: 'sitirina.22014@mhs.unesa.ac.id',
              avatarImage: 'images/rina.png',
            ),
          ],
        ),
      ),
    );
  }
}

//Mendefinisikan isi dari profile pengguna
class ProfileCard extends StatelessWidget {
  final String name;
  final String role;
  final String contact;
  final String email;
  final String avatarImage;

  ProfileCard({
    required this.name,
    required this.role,
    required this.contact,
    required this.email,
    required this.avatarImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF9E897),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(avatarImage),
          ),
          SizedBox(height: 2),
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lora',
            ),
          ),
          Text(
            role,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
          SizedBox(height: 3),
          Container(
            padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.call,
                  size: 20,
                  color: Colors.black,
                ),
                SizedBox(width: 5),
                Text(
                  contact,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(height: 3),
          Container(
            padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.mail,
                  size: 20,
                  color: Colors.black,
                ),
                SizedBox(width: 10),
                Text(
                  email,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
