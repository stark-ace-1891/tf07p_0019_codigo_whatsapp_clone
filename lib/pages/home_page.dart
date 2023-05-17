import 'package:flutter/material.dart';
import 'package:tf07p_0019_codigo_whatsapp_clone/pages/call_page.dart';
import 'package:tf07p_0019_codigo_whatsapp_clone/pages/chat_page.dart';
import 'package:tf07p_0019_codigo_whatsapp_clone/pages/status_page.dart';

class HomPage extends StatefulWidget {
  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  _handleTabChange() {
    print(_tabController!.index);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
    _tabController!.addListener(_handleTabChange);
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
          indicatorColor: Colors.white,
          indicatorWeight: 3.5,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _getFloating(),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("Camera")),
          Center(child: ChatPage()),
          StatusPage(),
          CallPage(),
        ],
      ),
    );
  }

  Widget _getFloating() {
    print(this._tabController!.index);
    switch (_tabController!.index) {
      case 0:
        return FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.photo_camera,
          ),
        );
      case 1:
        return FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.message,
          ),
        );
      case 2:
        return Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.edit,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.photo_camera,
            ),
          ),
        ]);
      case 3:
        return FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.call,
          ),
        );
      default:
        return FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.message,
          ),
        );
    }

    // return _tabController!.index == 0
    //     ? FloatingActionButton(
    //         onPressed: () {},
    //         child: const Icon(
    //           Icons.camera_alt,
    //         ),
    //       )
    //     : FloatingActionButton(
    //         onPressed: () {},
    //         child: const Icon(
    //           Icons.message,
    //         ),
    //       );
  }
}
