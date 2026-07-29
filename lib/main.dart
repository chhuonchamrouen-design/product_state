import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:project/Main_home.dart';
import 'package:project/bloc/product_bloc.dart';
import 'package:project/bloc/product_event.dart';
import 'package:project/view/home/product_detail_screen.drt.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc()..add(LoadProduct()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:ProductDetailScreen(),
      ),
    );
  }
}
