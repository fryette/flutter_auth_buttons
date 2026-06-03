import 'package:flutter/material.dart'
    show
        BorderSide,
        Color,
        EdgeInsets,
        FontWeight,
        WidgetState,
        MouseCursor,
        OutlinedBorder,
        Size,
        TextStyle;
import 'package:google_fonts/google_fonts.dart';

///[ResolvingMaterialStyle] a mixin which provides the resolve methods for [AuthButton]s.
///
/// resolve methods allows style resolving based on the [MaterialState]s.
///
/// This is mixed in [AuthButtonStyleButton], its methods are implemented in the concrete [AuthButton]s.
mixin ResolvingMaterialStyle {
  TextStyle? resolveTextStyle(Set<WidgetState> states) {
    return GoogleFonts.getFont(
      'Roboto',
      fontSize: 18,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.50,
    );
  }

  Color? resolveBackgroundColor(Set<WidgetState> states) {
    return null;
  }

  Color? resolveForegroundColor(Set<WidgetState> states) {
    return null;
  }

  Color? resolveOverlayColor(Set<WidgetState> states) {
    return null;
  }

  Color? resolveShadowColor(Set<WidgetState> states) {
    return null;
  }

  Color? resolveSurfaceTintColor(Set<WidgetState> states) {
    return null;
  }

  double? resolveElevation(Set<WidgetState> states) {
    return null;
  }

  EdgeInsets? resolvePadding(Set<WidgetState> states) {
    return null;
  }

  Size? resolveMinimumSize(Set<WidgetState> states) {
    return const Size(double.minPositive, double.minPositive);
  }

  Size? resolveFixedSize(Set<WidgetState> states) {
    return null;
  }

  Size? resolveMaximumSize(Set<WidgetState> states) {
    return null;
  }

  BorderSide? resolveSide(Set<WidgetState> states) {
    return null;
  }

  OutlinedBorder? resolveShape(Set<WidgetState> states) {
    return null;
  }

  MouseCursor? resolveMouseCursor(Set<WidgetState> states) {
    return null;
  }
}
