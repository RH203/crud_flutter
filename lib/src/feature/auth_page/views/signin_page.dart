import 'package:crud_flutter/src/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    // MyLogger.myLog.d('signin: ${context.watch<ThemeProvider>().darkMode}');
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(
              'Sign In',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            actions: [
              IconButton(
                onPressed: context.read<ThemeProvider>().changeTheme,
                icon: context.watch<ThemeProvider>().darkMode
                    ? const Icon(
                        Icons.dark_mode,
                        color: Colors.black,
                      )
                    : const Icon(
                        Icons.light_mode,
                        color: Colors.white,
                      ),
              )
            ],
            expandedHeight: 200,
            pinned: true,
            forceElevated: innerBoxIsScrolled,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Theme.of(context).colorScheme.primary,
                ),
                padding: const EdgeInsets.only(top: 100),
                child: Text(
                  "Log in to begin your journey",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: 20,
                      ),
                ),
              ),
            ),
          ),
        ],
        // Body
        body: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            title: Text(
              'Text $index',
            ),
          ),
        ),
      ),
    );
  }
}
