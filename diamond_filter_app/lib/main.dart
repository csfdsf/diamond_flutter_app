import 'package:diamond_filter_app/blocs/filter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/cart_bloc.dart';
import 'screens/splash_screen.dart';
import 'screens/filter_screen.dart';
import 'screens/result_screen.dart';
import 'screens/cart_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => FilterBloc()),
        BlocProvider(create: (_) => CartBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Diamond App',
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/filter': (context) => FilterScreen(),
          '/result': (context) => const ResultPage(), // ✅ no need to pass diamonds
          '/cart': (context) => CartPage(),
        },
      ),
    );
  }
}
