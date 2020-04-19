import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/models/product.dart';
import 'package:smart_home_app/utils/constants.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      title: Row(
        children: <Widget>[
          Text(
            product.name,
            style: TextStyle(
              color: AppColors.blue,
              fontSize: 20,
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: AppColors.darkGrey,
            size: 30,
          ),
        ],
      ),
      subtitle: Text(
        product.status,
        style: TextStyle(
          color: AppColors.darkGrey,
          fontSize: 18,
        ),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          product.image,
          width: 50,
          height: 80,
          fit: BoxFit.fitHeight,
        ),
      ),
      trailing: CupertinoSwitch(
        value: false,
        onChanged: null,
      ),
    );
  }
}
