import 'package:flutter/material.dart';
import 'package:shop/widget/support_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories = [
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/watch.png",
    "images/TV.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey, Anh Nguyen",
                        style: AppWidget.boldTextFieldStyle(),
                      ),
                      Text(
                        "Have a good day !",
                        style: AppWidget.lightTextFieldStyle(),
                      )
                    ],
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "images/boy.jpg",
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ))
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
        
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  // border: Border.all(color: Colors.black)
                ),
                // width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Product",
                      hintStyle: AppWidget.lightTextFieldStyle(),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: AppWidget.semiboldTextFieldStyle(),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(
                        color: Color(0xFFfd6f3e),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Container(
                    height: 130,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFfd6f3e),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("All", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),),
                    ),
                  ),
        
        
                  Expanded(
                    child: Container(
                      height: 130,
                      margin: EdgeInsets.only(left: 20.0),
                      child: ListView.builder(
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                        return CategoryTitle(image: categories[index]);
                      }),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Product",
                    style: AppWidget.semiboldTextFieldStyle(),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(
                        color: Color(0xFFfd6f3e),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 240,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset("images/headphone2.png", height: 150, width: 150, fit:BoxFit.cover ,),
                          Text("Headphone", style: AppWidget.semiboldTextFieldStyle(),),
                          SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Text("\$100", style: TextStyle(color: Color(0xFFfd6f3e),fontSize: 22.0, fontWeight: FontWeight.bold),),
                              SizedBox(width: 50.0,),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(7)),
                                child: Icon(Icons.add, color: Colors.white,))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset("images/watch2.png", height: 150, width: 150, fit:BoxFit.cover ,),
                          Text("Apple Watch", style: AppWidget.semiboldTextFieldStyle(),),
                          SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Text("\$300", style: TextStyle(color: Color(0xFFfd6f3e),fontSize: 22.0, fontWeight: FontWeight.bold),),
                              SizedBox(width: 50.0,),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(7)),
                                child: Icon(Icons.add, color: Colors.white,))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset("images/laptop2.png", height: 150, width: 150, fit:BoxFit.cover ,),
                          Text("Laptop", style: AppWidget.semiboldTextFieldStyle(),),
                          SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Text("\$1000", style: TextStyle(color: Color(0xFFfd6f3e),fontSize: 22.0, fontWeight: FontWeight.bold),),
                              SizedBox(width: 50.0,),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(7)),
                                child: Icon(Icons.add, color: Colors.white,))
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CategoryTitle extends StatelessWidget {
  String image;
  CategoryTitle({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      height: 90,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
