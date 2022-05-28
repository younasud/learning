import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../resources/resources.dart';
import '../Widgets/Product.dart';
import '../model/product.dart';


class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
          primary: false,
          backgroundColor: R.color.purpleBlueColor,
          leading: IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {
              // do something
              Navigator.pop(context);
            },
          ),
          title:  Center(
            child: CircleAvatar(
              radius: 30,
              backgroundColor: R.color.whiteColor,
              child: Image.asset('assets/images/carrefour.png',
                fit: BoxFit.contain,
                height: 30,
              ),
            ),
          ),
          actions: [
            CircleAvatar(
              radius: 20,
              backgroundColor: R.color.whiteColor,
              child: IconButton(
                icon:
                const FaIcon(FontAwesomeIcons.cartPlus),
                iconSize: 15,
                color: R.color.purpleBlueColor,
                focusColor: R.color.purpleBlueColor,
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 200,
                      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: R.color.whiteColor,
                        border: Border.all(color: R.color.thinGrey)
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.search, color: R.color.darkGrey,),
                            hintText: 'Search Here',
                            border: InputBorder.none
                          ),
                        ),
                    ),
                    Container(
                      height: 42,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: R.color.whiteColor,
                          border: Border.all(color: R.color.thinGrey)
                      ),
                      child: Center(
                        child: Row(
                          children:  const [
                            Icon(Icons.tune),
                            Icon(Icons.tune),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Wrap(
                  children: [
                    // GridView.builder(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    //     maxCrossAxisExtent: 200,
                    //     childAspectRatio: 3 / 2,
                    //     crossAxisSpacing: 20,
                    //     mainAxisSpacing: 20
                    // ),
                    //   itemCount: demoProduct.length,
                    //   itemBuilder: (BuildContext context, int index) {
                    //     return Expanded(
                    //       child: SingleProduct(
                    //         productImage: demoProduct[index].productImage,
                    //         productTitle: demoProduct[index].productTitle,
                    //         price: demoProduct[index].price,
                    //         rating: demoProduct[index].rating,
                    //         storeName: demoProduct[index].storeName,
                    //         stock: demoProduct[index].stock,
                    //       ),
                    //     );
                    // },
                    // ),
                    ...List.generate(
                      demoProduct.length,
                          (index) => SingleProduct(
                              productImage: demoProduct[index].productImage,
                              productTitle: demoProduct[index].productTitle,
                              price: demoProduct[index].price,
                              rating: demoProduct[index].rating,
                              storeName: demoProduct[index].storeName,
                              stock: demoProduct[index].stock,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

