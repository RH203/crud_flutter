import 'package:crud_flutter/src/app.dart';
import 'package:crud_flutter/src/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: const App(),
    ),
  );
}
