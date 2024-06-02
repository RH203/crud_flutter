import 'package:flutter/material.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({super.key});

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        // Header
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: const Text('Task'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            padding: const EdgeInsets.only(
                              top: 0,
                              left: 20,
                              right: 20,
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Tugas selesai"),
                                Text("2"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            padding: const EdgeInsets.only(
                              top: 0,
                              left: 20,
                              right: 20,
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Tugas selesai"),
                                Text("2"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
