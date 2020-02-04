import 'package:flutter/material.dart';
import 'package:small_flutter_task/widgets/appBar.dart';

class AddOrder extends StatefulWidget {
  @override
  _AddOrderState createState() => _AddOrderState();
}

class _AddOrderState extends State<AddOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: mainAppBar,
        body: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Stack(
                children: <Widget>[
                  Image.network(
                    'https://i2.wp.com/www.foodrepublic.com/wp-content/uploads/2014/10/132_Husk-Cheeseburger-edit.jpg?fit=2310%2C1622&ssl=1',
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 5,
                    left: 30,
                    right: 30,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        elevation: 9,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Jusy lucy Burger',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                  Text('69.00 LE',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                              color: Colors.orange,
                                              fontSize: 12))
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
                                              color: Colors.orange,
                                              fontSize: 12))
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
                                              color: Colors.orange,
                                              fontSize: 12))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Text(
                      'Buttered & tosted bun, Chees filled burger patty , lettuce,onion , tomato , P.O sauce',
                      style: TextStyle(fontSize: 12, color: Colors.black38),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: 20, bottom: 10, left: 20, top: 20),
                  child: Text(
                    'Burger Choice',
                    style: TextStyle(color: Colors.black26, fontSize: 12),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      RadioListTile(
                        dense: true,
                        value: 1,
                        groupValue: borgerchoice,
                        onChanged: Setborgerchoice,
                        activeColor: Colors.orange,
                        title: Text('Sandwich', style: TextStyle(fontSize: 14)),
                        selected: borgerchoice == 1,
                      ),
                      Divider(),
                      RadioListTile(
                        dense: true,
                        value: 2,
                        groupValue: borgerchoice,
                        onChanged: Setborgerchoice,
                        activeColor: Colors.orange,
                        title: Text('Combo', style: TextStyle(fontSize: 14)),
                        selected: borgerchoice == 2,
                      ),
                    ],
                  ),
                ),
                borgerchoice == 2
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                right: 20, bottom: 10, left: 20, top: 10),
                            child: Text(
                              'Burger Choice',
                              style: TextStyle(
                                  color: Colors.black26, fontSize: 12),
                            ),
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                              child: ComoboChoices()),
                        ],
                      )
                    : Container(),
                Padding(
                  padding:
                      EdgeInsets.only(right: 20, bottom: 10, left: 20, top: 10),
                  child: Text(
                    'Special Requests',
                    style: TextStyle(color: Colors.black26, fontSize: 12),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: TextField(
                    cursorColor: Colors.orange,
                    decoration: InputDecoration(
                        focusColor: Colors.orange,
                        contentPadding: EdgeInsets.all(24),
                        hintText: 'Write down your special request',
                        hintStyle:
                            TextStyle(color: Colors.black26, fontSize: 12),
                        hoverColor: Colors.black26,
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 24, right: 24, top: 12, bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                            height: 40,
                            width: 40,
                            child: Center(
                                child: Text(
                              "-",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.orange),
                            ))),
                        onTap: () {
                          setState(() {
                            if (numOForders > 0) numOForders--;
                          });
                        },
                      ),
                      RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          color: Colors.orange,
                          child: Text(
                            "Add to card ( $numOForders )",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                          onPressed: () {
                            print('pressed');
                          }),
                      InkWell(
                        child: Container(
                            height: 40,
                            width: 40,
                            child: Center(
                                child: Text(
                              "+",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.orange),
                            ))),
                        onTap: () {
                          setState(() {
                            numOForders++;
                          });
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }

  int numOForders = 1;
  Widget ComoboChoices() {
    return Column(
      children: <Widget>[
        RadioListTile(
          secondary: Text('55.00 LE'),
          dense: true,
          value: 3,
          groupValue: comboChoice,
          onChanged: SetSelectedRadio,
          activeColor: Colors.orange,
          title: Text('Small', style: TextStyle(fontSize: 14)),
          selected: comboChoice == 3,
        ),
        Divider(),
        RadioListTile(
          secondary: Text('75.00 LE'),
          dense: true,
          value: 4,
          groupValue: comboChoice,
          onChanged: SetSelectedRadio,
          activeColor: Colors.orange,
          title: Text('Medium', style: TextStyle(fontSize: 14)),
          selected: comboChoice == 4,
        ),
        Divider(),
        RadioListTile(
          secondary: Text('85.00 LE'),
          dense: true,
          value: 5,
          groupValue: comboChoice,
          onChanged: SetSelectedRadio,
          activeColor: Colors.orange,
          title: Text('Larg', style: TextStyle(fontSize: 14)),
          selected: comboChoice == 5,
        ),
      ],
    );
  }

  int borgerchoice;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    borgerchoice = 1;
    comboChoice = 3;
  }

  Setborgerchoice(int val) {
    setState(() {
      borgerchoice = val;
    });
  }

  int comboChoice;

  SetSelectedRadio(int val) {
    setState(() {
      comboChoice = val;
    });
  }
}
