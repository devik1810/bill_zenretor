import 'package:bill_zenretor/bil.dart';
import 'package:bill_zenretor/home.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Home(),
          'biling':(context) => Bill(),

        },
      )
  );
}