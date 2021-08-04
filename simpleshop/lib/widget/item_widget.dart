import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final String imgUrl;
  const ItemWidget(this.title, this.imgUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
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
