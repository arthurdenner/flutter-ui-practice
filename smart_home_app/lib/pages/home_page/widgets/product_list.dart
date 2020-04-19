import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/mocks/products.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_list_tile.dart';
import 'package:smart_home_app/utils/constants.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        color: AppColors.white,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: PRODUCTS.length,
          separatorBuilder: (_, index) => Divider(
            height: 0,
            color: AppColors.grey,
            thickness: 2,
          ),
          itemBuilder: (_, index) {
            return ProductListTile(
              product: PRODUCTS[index],
            );
          },
        ),
      ),
    );
  }
}
