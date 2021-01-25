import 'package:flutter/material.dart';
import 'package:sakfood/screens/add_info_shop.dart';
import 'package:sakfood/utility/my_style.dart';

class InformationShop extends StatefulWidget {
  @override
  _InformationShopState createState() => _InformationShopState();
}

class _InformationShopState extends State<InformationShop> {
  void routeToAddInfo() {
    MaterialPageRoute materialPageRoute = MaterialPageRoute(
      builder: (context) => AddInfoShop(), 
    );
    Navigator.push(context, materialPageRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        addAnEditButton(),
        MyStyle().titleCenter(context, 'ยังไม่มีข้อมูล'),
      ],
    );
  }

  Row addAnEditButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                  right: 16.0,
                  bottom: 16.0,
                ),
                child: FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      routeToAddInfo();
                    })),
          ],
        ),
      ],
    );
  }
}
