import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../resources/resource.dart';
import '../../../resources/widget_functions.dart';
import '../models/shopModel.dart';
import '../widgets/singleProduct.dart';
import '../widgets/tab_Item.dart';

class cart extends StatelessWidget {
  const cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.7,
                  height: 60,
                  decoration: BoxDecoration(
                    color: R.colors.whiteColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.search_outlined),
                        addHorizontalSpace(20),
                        Text(
                          "Search Here",
                          style: R.textStyle.heading_6(),
                        ),
                      ],
                    ),
                  ),
                ),
                addHorizontalSpace(10),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 60,
                  decoration: BoxDecoration(
                    color: R.colors.whiteColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.data_saver_off_outlined),
                        Icon(Icons.line_axis_outlined),
                        Icon(Icons.filter_list),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ...List.generate(
            demoStore.length,
            (index) => singleProduct(
              shopName: demoStore[index].product_shop_name,
              stockQuantity: demoStore[index].stock_quantity,
              price: demoStore[index].product_price,
              productName: demoStore[index].product_Name,
              productImage: demoStore[index].product_Image,
            ),
          ),
        ],
      ),
    );
  }
}
