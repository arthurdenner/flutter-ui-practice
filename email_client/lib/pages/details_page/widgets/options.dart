import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../../../constants.dart';

class DetailsOptions extends StatelessWidget {
  const DetailsOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 50,
          height: 8,
          margin: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: AppColors.lightBlue.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 40, 0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Feather.chevron_left,
                      color: AppColors.lightBlue,
                      size: 35,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Icon(
                  FontAwesome.archive,
                  color: AppColors.lightBlue,
                  size: 25,
                ),
              ),
              Icon(
                Icons.delete,
                color: AppColors.lightBlue,
                size: 30,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
