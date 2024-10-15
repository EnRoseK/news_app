import 'package:flutter/material.dart';

class RippleContainer extends StatelessWidget {
  const RippleContainer({
    super.key,
    this.backgroundColor,
    this.borderRadius,
    this.padding,
    this.child,
    this.splashColor,
    this.onTap,
    this.border,
  });

  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final Color? splashColor;
  final BoxBorder? border;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: backgroundColor ?? Colors.transparent,
          border: border,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: borderRadius,
            onTap: onTap,
            splashColor: splashColor,
            highlightColor: splashColor,
            child: Container(
              padding: padding,
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
