
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style.dart';
import 'button_effect.dart';

class MiniButton extends StatelessWidget {
  final double size;
  final Widget child;
  final Color color;
  final VoidCallback onTap;
  const MiniButton({super.key,  this.size=45, required this.child, required this.onTap,this.color=Style.blackColor});

  @override
  Widget build(BuildContext context) {
    return AnimationButtonEffect(
      child: GestureDetector(
        onTap:onTap,
        child: Container(
          width: size.r,
          height: size.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: color,
          ),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}