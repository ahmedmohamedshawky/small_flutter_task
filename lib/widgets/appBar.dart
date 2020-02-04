import 'package:flutter/material.dart';
AppBar mainAppBar = AppBar(
        leading: Icon(Icons.menu, color: Colors.black),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.orange,
            ),
          )
        ],
        title: Text(
          'p.o.signature',
          style: TextStyle(
              fontFamily: 'pacifico',
              fontSize: 25,
              color: Colors.black),
        ),
        elevation: 9,
      );