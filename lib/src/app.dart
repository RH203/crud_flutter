import 'package:crud_flutter/src/feature/auth_page/views/signin_page.dart';
import 'package:crud_flutter/src/provider/theme_provider.dart';
import 'package:crud_flutter/src/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({
    super.key,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme(GoogleFonts.poppinsTextTheme());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: context.watch<ThemeProvider>().darkMode
          ? theme.dark()
          : theme.light(),
      home: const SignInPage(),
    );
  }
}
