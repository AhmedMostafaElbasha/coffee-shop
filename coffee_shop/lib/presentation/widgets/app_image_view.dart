import 'package:flutter/material.dart';

class AppImageView extends StatelessWidget {
  final double height;
  final double width;
  final String assetImagePath;
  final String networkImagePath;
  final BoxFit boxFit;
  final double radius;

  AppImageView({
    @required this.height,
    @required this.width,
    this.assetImagePath = '',
    this.networkImagePath = '',
    this.boxFit = BoxFit.cover,
    this.radius = 0.0,
  })  : assert(assetImagePath != '' || networkImagePath != ''),
        assert(height != null && width != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: assetImagePath != ''
            ? AssetImage(assetImagePath)
            : NetworkImage(networkImagePath),
        fit: boxFit,
        height: height,
        width: width,
      ),
    );
  }
}
