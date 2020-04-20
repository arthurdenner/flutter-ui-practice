import 'package:flutter/material.dart';
import 'package:smart_home_app/utils/constants.dart';

class AddDevice extends StatelessWidget {
  const AddDevice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Column(
          children: <Widget>[
            Icon(
              Icons.add_circle_outline,
              color: AppColors.darkGrey,
              size: 60,
            ),
            SizedBox(height: 10),
            Text(
              'Add New Device',
              style: TextStyle(
                color: AppColors.darkGrey,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
