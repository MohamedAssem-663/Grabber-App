import 'package:flutter/material.dart';
import 'package:grabber_app/core/Utils/app_router.dart';

void main() {
  runApp(const GrabberApp());
}

class GrabberApp extends StatelessWidget {
  const GrabberApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Grabber',
      routerConfig: AppRouter.router,
    );
  }
}
