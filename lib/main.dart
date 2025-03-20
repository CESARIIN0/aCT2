import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colección de Tarjetas'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            CardItem(
              title: 'Elemento A',
              subtitle: 'Descripción A',
              icon: Icons.access_alarm,
              imageUrl: 'https://via.placeholder.com/160',
              onPressed: () {},
            ),
            CardItem(
              title: 'Elemento B',
              subtitle: 'Descripción B',
              icon: Icons.beach_access,
              imageUrl: 'https://via.placeholder.com/160',
              onPressed: () {},
            ),
            CardItem(
              title: 'Elemento C',
              subtitle: 'Descripción C',
              icon: Icons.cake,
              imageUrl: 'https://via.placeholder.com/160',
              onPressed: () {},
            ),
            CardItem(
              title: 'Elemento D',
              subtitle: 'Descripción D',
              icon: Icons.directions_bike,
              imageUrl: 'https://via.placeholder.com/160',
              onPressed: () {},
            ),
            CardItem(
              title: 'Elemento E',
              subtitle: 'Descripción E',
              icon: Icons.eco,
              imageUrl: 'https://via.placeholder.com/160',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final String imageUrl;
  final VoidCallback onPressed;

  const CardItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.imageUrl,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: IconButton(
          icon: Icon(icon, color: Colors.green),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
