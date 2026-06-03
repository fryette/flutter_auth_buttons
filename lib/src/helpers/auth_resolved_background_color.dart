// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_type.dart';
import 'package:flutter/material.dart' show Color, WidgetState, immutable;

@immutable
class ButtonColor {
  const ButtonColor(
    this.main, {
    this.onOtherIcons,
    this.onSecondaryButton,
  });

  final Color main;
  final Color? onOtherIcons;
  final Color? onSecondaryButton;
}

Color resolvedBackgroundColor({
  required ButtonColor color,
  required Set<WidgetState> states,
  required bool isDark,
  required AuthButtonType? buttonType,
  required AuthIconType? iconType,
}) {
  if (!states.contains(WidgetState.disabled)) {
    if (isDark) return AuthColors.darkMode;
    if (buttonType == AuthButtonType.secondary) {
      return color.onSecondaryButton ?? color.main;
    }
    if (iconType != null) {
      return color.onOtherIcons ?? color.main;
    }
    return color.main;
  }
  return isDark ? AuthColors.disabledDark : AuthColors.disabled;
}
