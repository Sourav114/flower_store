import 'package:flower_store/controllers/button_controller/new_controller.dart';
import 'package:flower_store/custom_widget/button.dart';
import 'package:flower_store/custom_widget/item_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final MyController myController = MyController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.menu_outlined,color: Colors.black,),
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text('Orchid Green',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: const [
              Icon(Icons.notifications_none_outlined,color: Colors.black,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Icon(Icons.shopping_cart_outlined,color: Colors.black,),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      MyButton(text: "Flower Pot",flowerPot: true,buttonIndex: 0,myController: myController,),
                      const SizedBox(width: 20,),
                      MyButton(text: "Bouquet",bouquet: true,buttonIndex: 1,myController: myController,),
                      const SizedBox(width: 20,),
                      MyButton(text: "Hanging Plants",hangingPlants: true,buttonIndex: 2,myController: myController,),
                      const SizedBox(width: 20,),
                      MyButton(text: "Table Plants",tablePlants: true,buttonIndex: 3,myController: myController,),
                      const SizedBox(width: 20,),
                      MyButton(text: "Garden Plants",gardenPlants: true,buttonIndex: 4,myController: myController,),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height*.79,
                  child: MyItem()
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.cyan,
            unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.list_alt),label: 'Booking'),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: 'Calendar'),
              BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label: 'Profile')
            ],
          ),
    ));
  }
}
