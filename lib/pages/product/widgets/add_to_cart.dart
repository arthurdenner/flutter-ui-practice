import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(32),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 80,
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: Text(
                  'Add to cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              Icon(
                Icons.shopping_basket,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
