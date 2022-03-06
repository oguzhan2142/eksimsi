import 'package:eksimsi/utils/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  static const int shape1 = 0;
  static const int shape2 = 1;

  final VoidCallback onPressed;

  final String? iconPath;

  final String title;

  final double width;

  final int shape;

  AppButton({
    Key? key,
    required this.onPressed,
    required this.title,
    this.width = double.infinity,
    this.iconPath,
    this.shape = shape1,
  }) : super(key: key);

  Widget buildTitle() {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14,
        color: shape == shape1 ? white : primary,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 64,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            shape == shape1 ? primary : backgroundGrey,
          ),
        ),
        onPressed: onPressed,
        child: iconPath == null
            ? buildTitle()
            : Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: Image.asset(iconPath!),
                  ),
                  Expanded(child: Center(child: buildTitle())),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
      ),
    );
  }
}
