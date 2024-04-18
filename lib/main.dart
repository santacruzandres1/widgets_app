import 'package:flutter/material.dart';
import 'package:widgets_app/config/router/app_go_router.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goAppRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      // home:  const HomeScreen(), // 
      // routes: AppRouter.routes, // Para go_router no vamos a utilizar estas rutas
                                  //incluso se puede remover la definicion del 'home' anterior

    );
  }
}
