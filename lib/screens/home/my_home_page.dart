import 'package:flutter/material.dart';

import '../../data/page_list.dart';
import '../../models/page_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 68),
        children: PageData.pages.map((e) => _listTile(e)).toList(),
      ),
    );
  }

  Card _listTile(PageModel pageModel) => Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListTile(
          title: Text(pageModel.name),
          subtitle: Text(pageModel.data),
          leading:
              const CircleAvatar(child: Icon(Icons.check_box_outline_blank)),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => pageModel.page));
          },
        ),
      );
}
