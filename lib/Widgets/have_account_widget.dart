import 'package:flutter/material.dart';

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget({
    super.key,
    required this.haveAccountText,
    required this.logOrSign,
    required this.onTap,
  });

  final String haveAccountText;
  final String logOrSign;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(haveAccountText),
        GestureDetector(
          onTap: onTap,
          child: Text(
            ' $logOrSign',
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
