import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'details_model.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  _DetailsViewState createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  ProductModel? model1 =
      ProductModel(name: "sofa", image: "images/furn.jpg", price: 5000, id: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 270,
            child: Image.asset("${model1!.image}"),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [
                    Text(
                      '${model1!.name}',
                      style: TextStyle(
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width * .4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Size',
                              ),
                              Text('250'),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width * .44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Color',
                              ),
                              Container(
                                width: 30,
                                height: 20,
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.orange,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Details',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("this is woderful sofa")
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("PRICE ",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.grey,
                            )),
                        Text('${model1!.price}')
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        width: 180,
                        height: 100,
                        child: ElevatedButton(
                          child: Text("add to cart"),
                          onPressed: () {},
                        ))
                  ]))
        ])));
  }
}
