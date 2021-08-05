import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget {
  final String title;
  final String imgUrl;

  const ItemWidget(this.title, this.imgUrl, {Key? key}) : super(key: key);

  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0XFF1e152f),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                  title: Center(
                    child: Text(
                      '${widget.title}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.network(
                  '${widget.imgUrl}',
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        mini: true,
                        onPressed: () => setState(() {
                          value++;
                        }),
                        child: Icon(Icons.add),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${value}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        mini: true,
                        onPressed: () => setState(() {
                          if (value != 0) {
                            value--;
                          }
                          ;
                        }),
                        child: Icon(
                          Icons.remove,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
