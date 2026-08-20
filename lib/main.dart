import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project/Main_home.dart';
import 'package:project/auth/login_screen.dart';
import 'package:project/bloc/product_bloc.dart';
import 'package:project/bloc/product_event.dart';
import 'package:project/controller/controllmode.dart';
import 'package:project/view/addstudent/addstudent_screen.dart';
import 'package:provider/provider.dart';
import 'firebase/firebase_options.dart'; // 👈 បន្ថែមថ្មី

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    ChangeNotifierProvider(
      create: (context) => Controllmode(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<Controllmode>(context);
    return BlocProvider(
      create: (context) => ProductBloc()..add(LoadProduct()),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: themeProvider.isDark ? ThemeMode.dark : ThemeMode.light,
        home: const AddstudentScreen(),
      ),
    );
  }
}
