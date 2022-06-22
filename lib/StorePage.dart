// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  List<Image> urlImages = [
    Image.network(
        'https://th.bing.com/th/id/R.993bbe80add0486c2e9c7cc389af6806?rik=OUJDMqqrA1w3%2fg&riu=http%3a%2f%2fi.ebayimg.com%2f00%2fs%2fNTAwWDUwMA%3d%3d%2fz%2fDPEAAOxy4YdTVhWD%2f%24_3.JPG%3fset_id%3d2&ehk=Dn8oMMRmWyn%2bQmAQs2i7CgETvyjuBY437ony7ijvWwI%3d&risl=&pid=ImgRaw&r=0'),
    Image.network(
        'https://th.bing.com/th/id/R.c6a7eb9e059b01aeb5ca5490217da226?rik=IVLXVgwDMFi5Eg&riu=http%3a%2f%2fi.ebayimg.com%2f00%2fs%2fNTAwWDUwMA%3d%3d%2fz%2fbeAAAMXQyY1TVhUD%2f%24_3.JPG%3fset_id%3d2&ehk=hTly8Nnjr98V2pZuAF9zuBzmZTcOxV%2f25JDC5hdxESA%3d&risl=&pid=ImgRaw&r=0'),
    Image.network(
        'https://th.bing.com/th/id/OIP.LfW02XiByBqQXbYZjlPF9QHaHa?pid=ImgDet&rs=1'),
    Image.network(
        'https://i.pinimg.com/originals/29/d5/da/29d5dac350af5ca611c97f7520523e58.jpg'),
    Image.network(
        'https://th.bing.com/th/id/OIP.rMpzwnnMTWeBs5BTD80cIgHaHa?pid=ImgDet&rs=1'),
    Image.network(
        'https://www.masterparts.com/wp-content/uploads/2018/05/aftermarket-oem-car-parts.jpg'),
    Image.network(
        'https://th.bing.com/th/id/OIP.UzGO0lzZeiMAobx5QRCR5QHaFL?pid=ImgDet&rs=1'),
    Image.network(
        'https://th.bing.com/th/id/OIP.5I3U7T0hnZ0K775TZ33AyQHaFT?pid=ImgDet&rs=1'),
    Image.network(
        'https://th.bing.com/th/id/R.9141421a24bbff60dab656d8c92d0da8?rik=wNYmih00vmS%2bUg&riu=http%3a%2f%2fwww.cartuningcentral.com%2fwp-content%2fuploads%2f2008%2f05%2fpistons-300x246.jpg&ehk=Ne1xJuHoKNXAPFjQl8GdTveWRbgT4xhlpWa6C95g3h0%3d&risl=&pid=ImgRaw&r=0')
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        // Uncomment to change the background color
        // backgroundColor: CupertinoColors.systemPink,
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Steyrbach Store'),
        ),
        child: SafeArea(
          child: GridView.builder(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 3 / 4,
              ),
              itemCount: urlImages.length,
              itemBuilder: (context, index) {
                final urlImage = urlImages[index];
                return urlImage;
              }),
        ));
  }
}
