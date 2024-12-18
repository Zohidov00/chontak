import 'package:chontak/Modules/bitimlar/bitimlar.dart';
import 'package:chontak/Modules/hamyor/hamyor.dart';
import 'package:chontak/Modules/home/home_screen.dart';
import 'package:chontak/Modules/qarz/qarz.dart';
import 'package:chontak/Modules/transaction/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class bottom_navigation extends StatefulWidget {
  const bottom_navigation({super.key});

  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());


    return Scaffold(
      bottomNavigationBar: Obx( () => BottomNavigationBar(
        currentIndex: controller.currentindex.value,
        backgroundColor: Colors.grey[100],
         onTap: (index) => controller.currentindex.value = index,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue[900],
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,fontFamily: 'Roboto',color: Colors.blue[900]),
        unselectedLabelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,fontFamily: 'Roboto',),
        items: [
          const BottomNavigationBarItem(label: 'Asosiy',icon: Icon(Icons.home_filled,),),
          BottomNavigationBarItem(label: 'Tahlil',icon: Container(child: Image.asset('Images/homepage/U_chart-line.png',width: 20,height: 20,),),),
          BottomNavigationBarItem(label: 'Bitimlar',icon: Container(child: Image.asset('Images/homepage/Fi_refresh-ccw.png',width: 20,height: 20,),)),
          BottomNavigationBarItem(label: 'Hamyor',icon: Container(child: Image.asset('Images/homepage/Wallet.png',width: 20,height: 20,),)),
          BottomNavigationBarItem(label: 'Qarz',icon: Container(child: Image.asset('Images/homepage/Group.png',width: 20,height: 20,),)),
        ],
      ),
    ),
      body: Obx(() => controller.pages[controller.currentindex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> currentindex = 0.obs;

  final pages = [
    home_screen(),
    transaction(),
    bitimlar(),
    hamyor(),
    qarz(),
  ];
}
