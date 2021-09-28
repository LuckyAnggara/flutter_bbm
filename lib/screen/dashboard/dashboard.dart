import 'package:bbm/model/data_performance.dart';
import 'package:bbm/screen/component/search_box.dart';
import 'package:bbm/screen/dashboard/component/cabang_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bbm/constant.dart';

import 'component/performance.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text('Dashboard'),
      backgroundColor: kPrimaryColor,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        ),
      ],
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //     SearchBox(onChanged: (value) {}),
          Container(
            padding:
                EdgeInsets.fromLTRB(kDefaultPadding, 10, kDefaultPadding, 0),
            child: Text(
              'Cabang',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          CabangList(),
          Performance(),
        ],
      ),
    );
  }
}
