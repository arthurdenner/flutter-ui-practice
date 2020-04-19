import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    @required this.onChangeSwitch,
    @required this.switchValue,
  }) : super(key: key);

  final ValueChanged<bool> onChangeSwitch;
  final bool switchValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
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
                      value: switchValue,
                      onChanged: onChangeSwitch,
                      activeColor: AppColors.red,
                      trackColor: AppColors.grey,
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