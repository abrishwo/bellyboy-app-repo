// screens/home_screen.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../blocs/blocs.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belly Boy'),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: Obx(() {
        switch (homeController.selectedTabIndex.value) {
          case 0:
            return buildListView(); 
          case 1:
            return Container(); 
          case 2:
            return Container(); 
          default:
            return Container();
        }
      }),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: homeController.selectedTabIndex.value,
            onTap: (index) {
              homeController.changeTabIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        ),
      );
    
  }

  Widget buildListView() {
  
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Item $index'),
        );
      },
    );
  }
}
