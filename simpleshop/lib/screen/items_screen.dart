import 'package:flutter/material.dart';
//models
import '../models/item.dart';
//Widgets
import '../widget/item_widget.dart';
//import '../widget/data_widget.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({Key? key}) : super(key: key);

  @override
  _ItemsScreenState createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  var value = 1;

  final List<Item> _items = [
    Item(
      title: 'Shoes',
      imgUrl:
          'https://media.istockphoto.com/photos/running-shoes-picture-id1249496770?b=1&k=6&m=1249496770&s=170667a&w=0&h=9uttCAghGWpQC9aNxH7B50vsahNUHFL49IpI7J0Mxug=',
    ),
    Item(
      title: 'T-Shirt',
      imgUrl:
          'https://mms-images.out.customink.com/mms/images/catalog/styles/125000/catalog_detail_image_medium.jpg?digest=1626386758',
    ),
    Item(
      title: 'Pant',
      imgUrl:
          'https://cdn.britannica.com/74/190774-050-52CE5745/jeans-denim-pants-clothing.jpg',
    ),
    Item(
      title: 'Boot',
      imgUrl:
          'https://media.istockphoto.com/photos/military-combat-boots-picture-id182404380?k=6&m=182404380&s=612x612&w=0&h=HWdWyRe4dmDcRcNayPFPiC-bQisyzzzVoycKYDlbQP4=',
    ),
    Item(
      title: 'Sweat Pant',
      imgUrl:
          'https://media.istockphoto.com/photos/gray-sweatpants-isolated-picture-id499691844?k=6&m=499691844&s=612x612&w=0&h=JafKoa_BkankSJR5y1B4guOsK6ySwyhEkb-P4izowjA=',
    ),
    Item(
      title: 'Shirt',
      imgUrl:
          'https://4.imimg.com/data4/LL/TW/MY-33084776/men-s-shirt-500x500.jpg',
    ),
  ];
  void onadd() {
    setState(() {
      ++value;
    });
  }

  void onremove() {
    setState(() {
      --value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Card(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (_, index) => ItemWidget(_items[index].title,
                    _items[index].imgUrl, onadd, value, onremove),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
