import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgWidget extends StatelessWidget {
  final String pathSvg;
  final double? width;
  final double? heigth;

  const SvgWidget({
    Key? key,
    required this.pathSvg,
    this.width,
    this.heigth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      pathSvg,
      width: width,
      height: heigth,
    );
  }
}
