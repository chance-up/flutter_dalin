import 'package:flutter/material.dart';
import 'package:flutter_dalin/views/dalin/all_service/all_service_screen.dart';
import 'package:flutter_dalin/views/dalin/chat/chat_screen.dart';
import 'package:flutter_dalin/views/dalin/estimate/estimate_screen.dart';
import 'package:flutter_dalin/views/dalin/my/mypage_screen.dart';
import 'package:flutter_dalin/views/dalin/profile/profile_screen.dart';
import 'package:flutter_dalin/views/dalin/request/request_screen.dart';
import 'package:flutter_dalin/views/dalin/search/search_screen.dart';
import 'package:flutter_dalin/thirdParty/slide_transition.dart';
import 'package:flutter_dalin/images/test1.svg';
import 'package:flutter_svg/svg.dart';

List<Widget> views = [
  const RequestScreen(),
  const EstimateScreen(),
  const ChatScreen(),
  const ProfileScreen(),
  const MypageScreen()
];

List<Widget> viewIcons = [
  const Tab(icon: Icon(Icons.search, color: Colors.black)),
  const Tab(icon: Icon(Icons.android, color: Colors.black)),
  const Tab(icon: Icon(Icons.chat, color: Colors.black)),
  const Tab(icon: Icon(Icons.people, color: Colors.black)),
  const Tab(icon: Icon(Icons.face, color: Colors.black)),
];

class DalinHomeScreen extends StatefulWidget {
  const DalinHomeScreen({Key? key}) : super(key: key);

  @override
  State<DalinHomeScreen> createState() => _DalinHomeScreenState();
}

class _DalinHomeScreenState extends State<DalinHomeScreen> {
  TabBar _buildTabBar() {
    return TabBar(
      tabs: viewIcons,
    );
  }

  TabBarView _buildTabBarView() {
    return TabBarView(children: views);
  }

  DefaultTabController _buildBaseView1() {
    return DefaultTabController(
        length: views.length,
        child: Scaffold(
            body: Column(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: _buildTabBarView(),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: _buildTabBar(),
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 1,
                  color: Colors.orange,
                )),
              ),
            ),
          ],
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        centerTitle: true,
        title: Column(
          children: [
            const Text(
              "주소가 들어간다.",
            ),
            SvgPicture.asset(
              'images/test1.svg',
            ),
          ],
        ),
        // bottom: PreferredSize(
        //   child: Text("서브타이틀2"),
        //   preferredSize: Size.fromHeight(0),
        //   // change height for changing app bar height as per content
        // ),
        backgroundColor: const Color.fromRGBO(42, 193, 188, 1),
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                  context, SlideLeftRoute(page: const AllServiceScreen()));
            }),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.notifications),
            tooltip: 'Hi!',
            onPressed: () => {},
          ),
        ],
      ),
      body: _buildBaseView1(),
    );
  }
}
