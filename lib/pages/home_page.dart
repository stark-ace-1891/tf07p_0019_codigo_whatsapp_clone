import 'package:flutter/material.dart';

class HomPage extends StatefulWidget {
  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: [],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.message,
          ),
        ));
  }
}
