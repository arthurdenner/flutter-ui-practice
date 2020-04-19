import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/mocks/products.dart';
import 'package:smart_home_app/pages/home_page/widgets/product_list_tile.dart';
import 'package:smart_home_app/utils/constants.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(
          top: BorderSide(
            color: AppColors.grey,
            width: 2,
          ),
          bottom: BorderSide(
            color: AppColors.grey,
            width: 2,
          ),
        ),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: PRODUCTS.length,
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
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
    );
  }
}
