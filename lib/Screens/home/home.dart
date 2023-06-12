



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../const/style.dart';
import '../../providers/home_provider.dart';


class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

//final prov = Provider.of<HomeProvider>(context);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>

       HomeProvider()
      ,
      child: Consumer<HomeProvider>(
        builder: (context , prov, child)
        {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.redAccent,
              title: Text(
                '${prov.titles[prov.currentIndex]}',
                style: TextStyle(
                  color: K.whiteColor,
                ),
              ),
            ),
            body: prov.screens[prov.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              iconSize: 30.sp,
              selectedItemColor: K.primaryColor,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              currentIndex:prov.currentIndex ,
              onTap: (i)
              {
                prov.onPress(i) ;
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.business), label: 'Business'),
                BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Sports'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.health_and_safety_outlined), label: 'Health'),
              ],
            ),
          );
        },
      )
    );
  }
}
