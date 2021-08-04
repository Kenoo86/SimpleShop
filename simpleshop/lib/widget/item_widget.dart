import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final String imgUrl;
  final int value;
  final Function onadd;
  final Function onremove;
  const ItemWidget(
      this.title, this.imgUrl, this.value, this.onadd, this.onremove,
      {Key? key})
      : super(key: key);

  void onadd() {
    ++value;
  }

  void onremove() {
    --value;
  }

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
                      '${title}',
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
                Expanded(
                  child: Image.network(
                    '${imgUrl}',
                  ),
                ),
              ],
            )));
  }
}
