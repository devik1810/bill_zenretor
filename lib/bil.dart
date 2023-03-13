import 'package:bill_zenretor/Modelp.dart';
import 'package:flutter/material.dart';

class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    Modal m1 = ModalRoute.of(context)!.settings.arguments as Modal;

    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Text(
                "SHOP  RECEIPT",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    letterSpacing: 2),
              ),
              SizedBox(height: 5),
              Text(
                "MARKET",
                style: TextStyle(fontSize: 13, letterSpacing: 1),
              ),
              SizedBox(height: 3),
              Text(
                "PLANET  EARTH",
                style: TextStyle(fontSize: 13, letterSpacing: 0),
              ),
              SizedBox(height: 3),
              Text(
                "TEL : 1810-612-0503",
                style: TextStyle(fontSize: 13, letterSpacing: 2),
              ),
              SizedBox(height: 15),
              Text(
                "RECEIPT : 98765",
                style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 3),
              Text(
                "CASHIER : JOHN DOE",
                style: TextStyle(fontSize: 12, letterSpacing: 2),
              ),
              SizedBox(height: 3),
              Text(
                "DATE :10/12/2020",
                style: TextStyle(fontSize: 13, letterSpacing: 2),
              ),
              SizedBox(height: 20),
              Container(
                height: 2,
                width: 450,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "PRODUCT",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        "PRICE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        "QUANTITY",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("${m1.name}"),
                      Text("${m1.price}"),
                      Text("${m1.quantity}"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 260),
                    child: Container(
                      height: 2,
                      width: 450,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Total",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      height: 2,
                      width: 450,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "THANK YOU",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
