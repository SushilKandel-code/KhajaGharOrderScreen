import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderSecondScreen extends StatefulWidget {
  @override
  _OrderSecondScreenState createState() => _OrderSecondScreenState();
}

class _OrderSecondScreenState extends State<OrderSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 400.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              OrderScreenData(
                  itemName: ('French Fry'),
                  unitPrice: (129),
                  offerPrice: ("--"),
                  action: PopupMenuButton(
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(child: Text("Yes")),
                        PopupMenuItem(child: Text("No")),
                      ];
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderScreenData extends StatefulWidget {
  final String itemName, offerPrice;
  final PopupMenuButton action;
  final int unitPrice;

  OrderScreenData({
    @required this.itemName,
    @required this.unitPrice,
    @required this.offerPrice,
    @required this.action,
  });

  @override
  _OrderScreenDataState createState() => _OrderScreenDataState();
}

class _OrderScreenDataState extends State<OrderScreenData> {
  int quantity = 1;
  int total = 129;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DataTable(
          dataRowHeight: 90.0,
          headingRowHeight: 30.0,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              border: Border.all(color: Colors.grey.shade300)),
          dataRowColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected))
              return Theme.of(context).colorScheme.primary.withOpacity(0.08);
            return Colors.white; // Use the default value.
          }),
          columns: [
            DataColumn(label: Text("")),
            DataColumn(label: Text("Items")),
            DataColumn(label: Text("Quantity")),
            DataColumn(label: Text("Unit Price")),
            DataColumn(label: Text("Offer Price")),
            DataColumn(label: Text("Total")),
            DataColumn(label: Text("Actions")),
          ],
          rows: [
            DataRow(cells: [
              DataCell(
                SvgPicture.asset('image/fry.svg'),
              ),
              DataCell(Center(
                  child: Text(
                widget.itemName,
              ))),
              DataCell(
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                            height: 25,
                            width: 25,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (quantity > 1) {
                                    quantity--;
                                  } else {
                                    quantity = 1;
                                    print('Minimum quantity must be 1');
                                  }
                                  _calculationProcess();
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                size: 20,
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              border: Border.all(color: Colors.white)),
                          child: Center(child: Text((quantity).toString())),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                              height: 25,
                              width: 20,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity++;
                                    _calculationProcess();
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                              ))),
                    ],
                  ),
                ),
              ),
              DataCell(
                Center(child: Text("Rs." + (widget.unitPrice).toString())),
              ),
              DataCell(
                Center(child: Text((widget.offerPrice).toString())),
              ),
              DataCell(
                Center(child: Text("Rs." + (total).toString())),
              ),
              DataCell(
                Center(child: widget.action),
              ),
            ]),
            DataRow(cells: [
              DataCell(
                SvgPicture.asset('image/momo.svg'),
              ),
              DataCell(Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Chicken Momo",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('+ Mo:Mo (4 piece)',
                            style:
                                TextStyle(color: Colors.red, fontSize: 10.0)),
                        Text('+ Chutni',
                            style:
                                TextStyle(color: Colors.red, fontSize: 10.0)),
                      ],
                    ),
                  )
                ],
              ))),
              DataCell(
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                            height: 25,
                            width: 25,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (quantity > 1) {
                                    quantity--;
                                  } else {
                                    quantity = 1;
                                    print('Minimum quantity must be 1');
                                  }
                                  _calculationProcess();
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                size: 20,
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              border: Border.all(color: Colors.white)),
                          child: Center(child: Text((quantity).toString())),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                              height: 25,
                              width: 20,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity++;
                                    _calculationProcess();
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                              ))),
                    ],
                  ),
                ),
              ),
              DataCell(
                Center(child: Text("Rs." + (widget.unitPrice).toString())),
              ),
              DataCell(
                Center(child: Text((widget.offerPrice).toString())),
              ),
              DataCell(
                Center(child: Text("Rs." + (total).toString())),
              ),
              DataCell(
                Center(child: widget.action),
              )
            ]),
            DataRow(cells: [
              DataCell(
                SvgPicture.asset('image/black.svg'),
              ),
              DataCell(Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Center(
                      child: Text(
                        "Black Forest",
                      ),
                    ),
                  ),
                ],
              ))),
              DataCell(
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Container(
                            height: 25,
                            width: 25,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (quantity > 1) {
                                    quantity--;
                                  } else {
                                    quantity = 1;
                                    print('Minimum quantity must be 1');
                                  }
                                  _calculationProcess();
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                size: 20,
                              ),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              border: Border.all(color: Colors.white)),
                          child: Center(child: Text((quantity).toString())),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                              height: 25,
                              width: 20,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity++;
                                    _calculationProcess();
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                              ))),
                    ],
                  ),
                ),
              ),
              DataCell(
                Center(child: Text("Rs." + (widget.unitPrice).toString())),
              ),
              DataCell(
                Center(child: Text((widget.offerPrice).toString())),
              ),
              DataCell(
                Center(child: Text("Rs." + (total).toString())),
              ),
              DataCell(
                Center(child: widget.action),
              ),
            ]),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cooking Advice",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                        "Lorem ipsum dolor sit amet consectetur adipiscing elit. "),
                  ),
                  Text("Maecenas ut convallis nullanon tincidunt")
                ],
              ),
              SizedBox(width: 180.0),
              _confirmOrder(),
              SizedBox(width: 20.0),
              _cancelOrder(),
            ],
          ),
        )
      ],
    );
  }

  void _calculationProcess() {
    total = quantity * widget.unitPrice;
  }

  Widget _confirmOrder() {
    return Container(
      height: 40.0,
      width: 130.0,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
          onPressed: () {
            print('Confrim Order PRessed');
          },
          child: Text(
            'Confirm Order',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          )),
    );
  }

  Widget _cancelOrder() {
    return Container(
      height: 40.0,
      width: 130.0,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextButton(
          onPressed: () {
            print('Cancel order pressed');
          },
          child: Text(
            'Cancel Order',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          )),
    );
  }
}
