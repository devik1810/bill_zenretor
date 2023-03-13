import 'package:bill_zenretor/Modelp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtquantity = TextEditingController();

  Modal m1 = Modal();

  List<Modal> Plist = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Product"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                      controller: txtname,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          hintText: "Add Product")),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: txtprice,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        hintText: "Add Price"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: txtquantity,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        hintText: "Add Quantity"),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: Plist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${Plist[index].name}"),
                                SizedBox(
                                  width: 25,
                                ),
                                Text("${Plist[index].price}"),
                                SizedBox(
                                  width: 25,
                                ),
                                Text("${Plist[index].quantity}"),
                                SizedBox(
                                  width: 35,
                                ),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        Plist.removeAt(index);
                                      });
                                    },
                                    icon: Icon(Icons.delete)),
                                IconButton(
                                    onPressed: () {
                                      txtname = TextEditingController(
                                          text: "${Plist[index].name}");
                                      txtprice = TextEditingController(
                                          text: "${Plist[index].price}");
                                      txtquantity = TextEditingController(
                                          text: "${Plist[index].quantity}");
                                      setState(() {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              content: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  TextField(
                                                    controller: txtname,
                                                    decoration: InputDecoration(
                                                        enabledBorder:
                                                            OutlineInputBorder(),
                                                        focusedBorder:
                                                            OutlineInputBorder(),
                                                        hintText: "Add Price"),
                                                  ),
                                                  TextField(
                                                    controller: txtprice,
                                                    decoration: InputDecoration(
                                                        enabledBorder:
                                                            OutlineInputBorder(),
                                                        focusedBorder:
                                                            OutlineInputBorder(),
                                                        hintText: "Add Price"),
                                                  ),
                                                  TextField(
                                                    controller: txtquantity,
                                                    decoration: InputDecoration(
                                                        enabledBorder:
                                                            OutlineInputBorder(),
                                                        focusedBorder:
                                                            OutlineInputBorder(),
                                                        hintText: "Add Price"),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        String name =
                                                            txtname.text;
                                                        String price =
                                                            txtprice.text;
                                                        String quantity =
                                                            txtquantity.text;
                                                        Modal m1 = Modal(
                                                            price: price,
                                                            name: name,
                                                            quantity: quantity);
                                                        Plist[index] = m1;
                                                        Navigator.pop(context);
                                                      });
                                                    },
                                                    child: Text(
                                                      "Add",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      });
                                    },
                                    icon: Icon(Icons.edit)),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.green),
                  onPressed: () {
                    setState(() {
                      Modal m1 = Modal(
                          name: txtname.text,
                          price: txtprice.text,
                          quantity: txtquantity.text);
                      Navigator.pushNamed(context, 'biling', arguments: m1);
                    });
                  },
                  child: Text("Submit"),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.black,
          foregroundColor: Colors.green,
          onPressed: () {
            setState(
              () {
                Modal m1 = Modal(
                    quantity: txtquantity.text,
                    price: txtprice.text,
                    name: txtname.text);
                Plist.add(m1);
              },
            );
          },
        ),
      ),
    );
  }
}
