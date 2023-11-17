import 'package:flower_store/custom_widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/button_controller/new_controller.dart';

class DetailScreen extends StatelessWidget {
  final String imgPath;
  DetailScreen({
    required this.imgPath,
    super.key
  });


  final MyController myController = MyController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      child: Image.asset(imgPath,fit: BoxFit.cover,height: 500,width: MediaQuery.sizeOf(context).width*1,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Text('(4.9)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                                      Icon(Icons.star,color: Colors.yellowAccent.shade700,),
                                      Icon(Icons.star,color: Colors.yellowAccent.shade700,),
                                      Icon(Icons.star,color: Colors.yellowAccent.shade700,),
                                      Icon(Icons.star_half_outlined,color: Colors.yellowAccent.shade700,),
                                      Icon(Icons.star_border_outlined,color: Colors.yellowAccent.shade700,)
                                    ],
                                  ),
                                  const Text("\$292.99",style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),)
                                ],
                              ),
                              const SizedBox(height: 15,),
                              const Text('Green Bush',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                              const SizedBox(height: 10,),
                              const Text('Size',style: TextStyle(fontWeight: FontWeight.bold),),
                              Row(
                                children: [
                                  MyButton(text: "S", buttonIndex: 5,myController: myController,),
                                  const SizedBox(width: 5,),
                                  MyButton(text: "M", buttonIndex: 6,myController: myController,),
                                  const SizedBox(width: 5,),
                                  MyButton(text: "L", buttonIndex: 7,myController: myController,),
                                  const SizedBox(width: 5,),
                                  MyButton(text: "XL", buttonIndex: 8,myController: myController,),
                                ],
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Description',style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),),
                                  Row(
                                    children: [
                                      IconButton( onPressed: () {  }, icon: const Icon(Icons.remove_circle),),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Text('0',style: TextStyle(fontSize: 20),),
                                      ),
                                      IconButton(onPressed: (){}, icon: const Icon(Icons.add_box))
                                    ],
                                  )
                                ],
                              ),
                              const  SizedBox(height: 10,),
                              const Text("A flower pot, a vessel of nature's beauty,"
                                  " cradles life in vibrant hues. A canvas for growth, "
                                  "it transforms spaces with elegance, fostering joy and "
                                  "tranquility.A flower pot, a vessel of nature's beauty,"
                                  " cradles life in vibrant hues. A canvas for growth, "
                                  "it transforms spaces with elegance, fostering joy and "
                                  "tranquility."),
                              const SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child: MyButton(text: 'Add to cart',minSize: true,buttonIndex: 9,myController: myController,)),
                                  const SizedBox(width: 5,),
                                  Expanded(child: MyButton(text: 'Buy Now',minSize: true,backgroundColor: Colors.pink,buttonIndex: 10,myController: myController,))
                                ],
                              )
                            ],
                          )
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 2,
                    left: 2,
                    child: FloatingActionButton.small(
                      backgroundColor: Colors.white,
                      child: const Icon(Icons.arrow_back_outlined,color: Colors.black,),
                        onPressed: (){
                          Get.back();
                        }
                        )
                )
              ],
            )
          ),
    ));
  }
}
