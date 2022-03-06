import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final String? description;
  final VoidCallback onPressed;
  final String assetPath;

  const MenuButton({
    Key? key,
    required this.title,
    this.description,
    required this.onPressed,
    required this.assetPath,
  }) : super(key: key);

  Text buildTitle() {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 14,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: foregroundGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                assetPath,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: description == null
                  ? buildTitle()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildTitle(),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          description!,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
            ),
            const SizedBox(
              width: 12,
            ),
            Image.asset('assets/icons/chevron_right.png'),
          ],
        ),
      ),
    );
  }
}
