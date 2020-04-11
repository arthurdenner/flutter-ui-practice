import 'package:flutter/material.dart';
import 'package:nike_app/utils/constants.dart';

class ProductImages extends StatefulWidget {
  ProductImages({Key key}) : super(key: key);

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  String selectedImage = 'front';

  @override
  Widget build(BuildContext context) {
    final isFrontImageSelected = selectedImage == 'front';

    return Container(
      padding: EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height * 0.55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildImage(context, 'front'),
          _buildImage(context, 'back'),
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context, String image) {
    final height = MediaQuery.of(context).size.height;
    final isSelected = selectedImage == image;

    return GestureDetector(
      onTap: () => setState(() => selectedImage = image),
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
}
