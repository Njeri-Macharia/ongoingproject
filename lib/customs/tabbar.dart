import 'package:flutter/material.dart';
import 'package:ongoingproject/customs/customtext.dart';

class Tabbar extends StatefulWidget {
  final Function(int) onTabChanged;
  const Tabbar({super.key, required this.onTabChanged});


  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
     _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        widget.onTabChanged(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(dividerColor: Colors.transparent,
      controller: _tabController,
      // indicator: UnderlineTabIndicator(borderSide: BorderSide(color: Colors.black)),
      labelPadding: EdgeInsets.zero,
      labelColor: Colors.black,
      labelStyle: const TextStyle(
        fontFamily: "Poppins",
        fontSize: 16,
        fontWeight: FontWeight.w600
      ),
      unselectedLabelColor: Colors.black12,
      unselectedLabelStyle: const TextStyle(
        fontFamily: "Poppins",
        fontSize: 16,
        fontWeight: FontWeight.w600
      ),
      indicatorColor: Colors.black87,
     
      tabs: const [
        Tab(
          child: CustomText(text: "Active"),
        ),
        Tab(
          child: CustomText(text: "Inactive"),
        )
      ],
    );
  }
}