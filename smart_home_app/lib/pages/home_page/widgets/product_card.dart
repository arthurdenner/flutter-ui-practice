import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: _height * .25,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Image.network(
                AppImages.luminaria,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                color: AppColors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 35,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Gateway',
                      style: TextStyle(
                        color: AppColors.blue,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Online',
                      style: TextStyle(
                        color: AppColors.darkGrey,
                        fontSize: 18,
                      ),
                    ),
                    Divider(
                      color: AppColors.grey,
                      thickness: 2,
                      height: 30,
                    ),
                    Text(
                      'Alarming',
                      style: TextStyle(
                        color: AppColors.darkGrey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    CupertinoSwitch(
                      value: false,
                      onChanged: null,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
