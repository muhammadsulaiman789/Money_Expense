import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ModalItem extends StatelessWidget {
  ModalItem(
      {this.title,
      this.icon,
      this.colorBox,
      this.iconColor,
      this.iconSize,
      this.value,
      this.onChange});

  final String title;
  final SvgPicture icon;
  final Color colorBox, iconColor;
  final Size iconSize;
  final ValueKey value;
  final Function onChange;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onChange,
        child: Column(
          children: <Widget>[
            Container(
                width: 36.0,
                height: 36.0,
                // constraints: BoxConstraints( maxWidth: 40.0 * SizeConfig.heightMultiplier, maxHeight: 35.0 * SizeConfig.heightMultiplier),
                decoration: BoxDecoration(
                  color: colorBox,
                  shape: BoxShape.circle,
                ),
                child: icon),
            Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 12.0,
                    color: const Color(0xff828282),
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ));
  }
}
