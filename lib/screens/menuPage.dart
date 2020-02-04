import 'package:flutter/material.dart';
import 'orderPage.dart';
import 'package:small_flutter_task/widgets/appBar.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: mainAppBar,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 30, left: 30),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              elevation: 9,
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black26,
                    size: 16,
                  ),
                  hintText: 'Search P.O Signatures',
                  hintStyle: TextStyle(color: Colors.black26, fontSize: 12),
                  suffixIcon: Icon(
                    Icons.menu,
                    color: Colors.orange,
                    size: 16,
                  ),
                ),
              ),
            ),
          ),
          ListView.builder(
            physics: PageScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 9,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, index) {
              return itemCard();
            },
          )
        ],
      ),
    );
  }




  Widget itemCard() {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddOrder()));
      },
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            semanticContainer: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.network(
                    'https://www.recipetineats.com/wp-content/uploads/2019/08/Avocado-Chicken-Burgers_9.jpg',
                    fit: BoxFit.fill,
                    height: 110,
                    width: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Jusy lucy Burger',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              Text('69.00 LE',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Buttered & tosted bun, Chees filled burger patty , lettuce,onion , tomato , P.O sauce',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black38),
                            ),
                          ),
                          Row(
                            textDirection: TextDirection.ltr,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.timer,
                                    color: Colors.orange,
                                    size: 12,
                                  ),
                                  Text('40 min',
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 12))
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.store_mall_directory,
                                    color: Colors.orange,
                                    size: 12,
                                  ),
                                  Text('400 g',
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 12))
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.pie_chart,
                                    color: Colors.orange,
                                    size: 12,
                                  ),
                                  Text('4 cheese',
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 12))
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ])),
      ),
    );
  }
}
