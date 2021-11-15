// Copyright (c) 2021 Talat El Beick. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:auth_buttons/auth_buttons.dart';
import 'package:auth_buttons/src/buttons/apple_auth_button.dart';
import 'package:auth_buttons/src/utils/auth_colors.dart';
import 'package:auth_buttons/src/utils/auth_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  group('apple default button type light mode', () {
    final AppleAuthButton appleAuthButton = AppleAuthButton(onPressed: () {});

    group('check icon style value of', () {
      test('iconUrl', () {
        String iconUrl = appleAuthButton.getIconUrl();
        expect(iconUrl, AuthIcons.apple[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = appleAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = appleAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check text style color', () {
      Color? textStyleColor = appleAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.black);
    });

    test('check button color', () {
      Color? buttonColor = appleAuthButton.getButtonColor();
      expect(buttonColor, Colors.white);
    });
  });

  group('apple default button type dark mode', () {
    final AppleAuthButton appleAuthButton = AppleAuthButton(
      onPressed: () {},
      darkMode: true,
    );

    group('check icon style value of', () {
      test('iconUrl', () {
        String iconUrl = appleAuthButton.getIconUrl();
        expect(iconUrl, AuthIcons.appleWhite[0]);
      });
      test('iconBackground', () {
        Color? iconBackground = appleAuthButton.getIconBackground();
        expect(iconBackground, null);
      });
      test('iconColor', () {
        Color? iconColor = appleAuthButton.getIconColor();
        expect(iconColor, null);
      });
    });

    test('check text style color', () {
      Color? textStyleColor = appleAuthButton.getTextStyle().color;
      expect(textStyleColor, Colors.white);
    });

    test('check button color', () {
      Color? buttonColor = appleAuthButton.getButtonColor();
      expect(buttonColor, AuthColors.darkMode);
    });
  });

  group('check default button style value of', () {
    AppleAuthButton appleAuthButton = AppleAuthButton(onPressed: () {});
    AuthButtonStyle? style = appleAuthButton.getButtonStyle();
    test('separator', () {
      expect(style!.separator, 16.0);
    });
    test('height', () {
      expect(style!.height, 40.0);
    });
    test('borderRadius', () {
      expect(style!.borderRadius, 8.0);
    });
  });

  test('check text style font family', () {
    final AppleAuthButton appleAuthButton = AppleAuthButton(onPressed: () {});
    TextStyle textStyle = appleAuthButton.getTextStyle();
    expect(
      textStyle.fontFamily,
      GoogleFonts.sourceSansPro(
        fontWeight: FontWeight.w600,
      ).fontFamily,
    );
  });
}
