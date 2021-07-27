import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  final List<Widget> favoriteGasStation;
  const Favorites({Key? key, required this.favoriteGasStation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Sem Favoritos!'),
      ),
    );
  }
}
