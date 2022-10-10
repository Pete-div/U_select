import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:u_select/screens/splash_screen.dart';
import 'screens/dashboard.dart';
import './providers/items.dart';
import './screens/sign_in.dart';
import './providers/order.dart';
import './screens/order_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Items(),
        ),
          ChangeNotifierProvider(
          create: (ctx) => Orders()
        ),
           
      
      ],
      child: MaterialApp(
        title: 'U_select',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SignInScreen(),
        routes: {
          '/splash_screen': (ctx) => SplashScreen(),
          '/sign_in': (ctx) => SignInScreen(),
          '/dashboard_screen': (ctx) => DashBoard(),
        '/order-screen': (ctx) => OrderScreen()
        },
      ),
    );
  }
}
