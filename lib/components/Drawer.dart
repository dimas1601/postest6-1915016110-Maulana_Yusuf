import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postest6_1915016110_maulana_yusuf/components/Controller.dart';
import 'package:postest6_1915016110_maulana_yusuf/data/constant.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);
  final CounterController myCounterController = Get.find();
  final CounterController Controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Column(
            children: [
              Obx(
                () => Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  color:
                      Controller.switchValue.value ? kPrimaryColor : kBlueColor,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/profil.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Obx(
                          () => Text(
                            "${myCounterController.nama}".toUpperCase(),
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Text(
                          "maulanayusuf10@gmail.com",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text(
                  "Message",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                  "Profile",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings",
                    style: TextStyle(
                      fontSize: 17,
                    )),
              ),
              ListTile(
                  leading: Icon(Icons.arrow_back),
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
