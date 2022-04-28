import 'package:djamo_custom_clone/src/core/helpers/sizes_helper.dart';
import 'package:flutter/material.dart';

class ExtendedContainer extends StatelessWidget {
  const ExtendedContainer({
    Key? key,
    this.shape,
    this.color,
    this.height,
    this.width,
    this.size,
    this.boxShadow,
    this.elevation,
    this.elevationColor,
    this.gradient,
    this.image,
    this.padding,
    this.margin,
    this.useAutoBorderRadius,
    this.borderRadius,
    this.child,
    this.border,
    this.alignment,
    this.minHeight,
    this.useAnimated = false,
    this.animatedTimeInMilliseconds = 1000,
    this.constraints, this.curve,
  }) : super(key: key);
  final Widget? child;
  final BoxShape? shape;
  final Color? color;
  final bool useAnimated;
  final int animatedTimeInMilliseconds;

  final double? height;
  final double? width;
  final double? size;
  final double? elevation;
  final Color? elevationColor;
  final double? minHeight;
  final List<BoxShadow>? boxShadow;
  final Gradient? gradient;
  final DecorationImage? image;
  final AlignmentGeometry? alignment;
  final BoxConstraints? constraints;
  ///ExtendedContainer can generate default border radius based on iOS guidelines design
  ///to use it, [useAutoBorderRadius] must have [true] value. It's [false] by default.
  ///If you want to personalize the border radius user [borderRadius].
  final bool? useAutoBorderRadius;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Border? border;
  final Curve? curve;
  @override
  Widget build(BuildContext context) {
    double __defaultRadius = 0.0;
    if (height != null) {
      __defaultRadius = SizesHelper.radiusCalculate(height!);
    }
    return useAnimated
        ? _useElevation
            ? _buildCard(child: _buildAnimatedContainer(__defaultRadius), defaultRadius: __defaultRadius)
            : _buildAnimatedContainer(__defaultRadius)
        : _useElevation
            ? _buildCard(child: _buildContainer(__defaultRadius), defaultRadius: __defaultRadius)
            : _buildContainer(__defaultRadius);
  }

  bool get _useElevation => elevation != null && boxShadow == null;

  Container _buildContainer(double __defaultRadius) {
    return Container(
      alignment: alignment,
      height: size??height,
      width: size??width,
      margin: _margin(),
      padding: padding,
      constraints: constraints ?? const BoxConstraints(),
      decoration: BoxDecoration(
          shape: shape ?? BoxShape.rectangle,
          color: color,
          gradient: gradient,
          borderRadius: _getBorderRadius(__defaultRadius),
          boxShadow: boxShadow,
          image: image,
          border: border),
      child: child,
    );
  }

  BorderRadius? _getBorderRadius(double __defaultRadius) {
    return borderRadius ??
        (useAutoBorderRadius == true
            ? BorderRadius.circular(
                __defaultRadius,
              )
            : null);
  }

  AnimatedContainer _buildAnimatedContainer(double __defaultRadius) {
    return AnimatedContainer(
      duration: Duration(milliseconds: animatedTimeInMilliseconds),
      alignment: alignment,
      height: size??height,
      width: size??width,
      margin: _margin(),
      padding: padding,
      curve: curve??Curves.linear,
      constraints: constraints ?? const BoxConstraints(),
      decoration: BoxDecoration(
          shape: shape ?? BoxShape.rectangle,
          color: color,
          gradient: gradient,
          borderRadius: _getBorderRadius(__defaultRadius),
          boxShadow: boxShadow,
          image: image,
          border: border),
      child: child,
    );
  }

  EdgeInsetsGeometry? _margin() => elevation != null? null:margin;

  Widget _buildCard({required Widget child, required double defaultRadius}) {
    return Padding(
      padding: margin??EdgeInsets.zero,
      child: Card(
        child: child,
        elevation: elevation,
        shadowColor: elevationColor,
        shape: shape == null ? _getRoundedRectangleBorderForCard(defaultRadius) : _getCardShapeFromExtendedContainer(defaultRadius),
      ),
    );
  }

  RoundedRectangleBorder _getRoundedRectangleBorderForCard(double __defaultRadius) =>
      RoundedRectangleBorder(borderRadius: _getBorderRadius(__defaultRadius) ?? BorderRadius.zero);

  ShapeBorder _getCardShapeFromExtendedContainer(double __defaultRadius) {
    switch (shape!) {
      case BoxShape.rectangle:
        return _getRoundedRectangleBorderForCard(__defaultRadius);
      case BoxShape.circle:
        return const CircleBorder();
    }
  }
}
