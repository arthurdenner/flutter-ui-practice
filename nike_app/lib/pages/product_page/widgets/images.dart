import 'package:flutter/material.dart';
import 'package:nike_app/utils/constants.dart';

class ProductImages extends StatefulWidget {
  ProductImages({Key key}) : super(key: key);

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  bool isFrontSelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: _getHeight(),
      width: 600,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildImage(context, 'front', isFrontSelected),
          _buildImage(context, 'back', !isFrontSelected),
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context, String image, bool isSelected) {
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => setState(() => isFrontSelected = !isFrontSelected),
      child: AnimatedOpacity(
        curve: Curves.easeIn,
        duration: AppDurations.short,
        opacity: isSelected ? 1 : 0.5,
        child: AnimatedContainer(
          curve: Curves.easeIn,
          duration: AppDurations.short,
          height: isSelected ? height * 0.55 : height * 0.3,
          child: Image.asset('assets/images/$image-jacket.png'),
        ),
      ),
    );
  }

  double _getHeight() {
    final deviceHeight = MediaQuery.of(context).size.height;

    if (deviceHeight > 800) {
      return deviceHeight * 0.7;
    }

    if (deviceHeight > 700) {
      return deviceHeight * 0.6;
    }

    return deviceHeight * 0.55;
  }
}
