import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/util/app_text.dart';

class Cartdscreen extends StatefulWidget {
  const Cartdscreen({super.key});
  @override
  State<Cartdscreen> createState() => _CartdscreenState();
}

class _CartdscreenState extends State<Cartdscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          "Product cart",
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/image/spainred.jpg",
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(child: Text("Spain jersey")),
                            Icon(Icons.delete, color: Colors.red.shade200),
                          ],
                        ),
                        Text("\$90"),
                        Text("Size: M"),
                        Row(
                          children: [
                            Expanded(child: Text("Colors: White")),
                            Icon(Icons.add),
                            Text("0"),
                            Icon(Icons.remove),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/image/spainred.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              maxLines: 1,
                              "Spain jersey",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Icon(Icons.delete, color: Colors.red.shade200),
                        ],
                      ),
                      Text("\$90"),
                      Text("Size: M"),
                      Row(
                        children: [
                          Expanded(child: Text("Colors: White")),
                          Icon(Icons.add),
                          Text("0"),
                          Icon(Icons.remove),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/image/spainred.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text("Spain jersey")),
                          Icon(Icons.delete, color: Colors.red.shade200),
                        ],
                      ),
                      Text("\$90"),
                      Text("Size: M"),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              maxLines: 1,
                              "Colors: White",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Icon(Icons.add),
                          Text("0"),
                          Icon(Icons.remove),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/image/spainred.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              maxLines: 1,
                              "Spain jersey",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Icon(Icons.delete, color: Colors.red.shade200),
                        ],
                      ),
                      Text("\$90"),
                      Text("Size: M"),
                      Row(
                        children: [
                          Expanded(child: Text("Colors: White")),
                          Icon(Icons.add),
                          Text("0"),
                          Icon(Icons.remove),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/image/spainred.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text("Spain jersey")),
                          Icon(Icons.delete, color: Colors.red.shade200),
                        ],
                      ),
                      Text("\$90"),
                      Text("Size: M"),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              maxLines: 1,
                              "Colors: White",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Icon(Icons.add),
                          Text("0"),
                          Icon(Icons.remove),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/image/spainred.jpg",
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  maxLines: 1,
                                  "Spain jersey",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Icon(Icons.delete, color: Colors.red.shade200),
                            ],
                          ),
                          Text("\$90"),
                          Text("Size: M"),
                          Row(
                            children: [
                              Expanded(child: Text("Colors: White")),
                              Icon(Icons.add),
                              Text("0"),
                              Icon(Icons.remove),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      AppText(text: "Total"),
                      Spacer(),
                      AppText(text: "\$999999"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AppText(text: "Discount"),
                      Spacer(),
                      AppText(text: "\$16.8"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AppText(text: "Delivery"),
                      Spacer(),
                      AppText(text: "\$1.00"),
                    ],
                  ),
                ],
              ),
              Divider(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AppText(text: "Delivery"),
                      Spacer(),
                      AppText(text: "\$1.00"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: () {},
            child: Text(
              "Check Out",
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
