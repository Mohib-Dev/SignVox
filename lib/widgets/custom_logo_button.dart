import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/widgets/custom_text_widgets.dart';

class CustomLogoButton extends StatelessWidget {
  const CustomLogoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            // Handle button press
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 8),
                CustomText(
                  text: "Sign Out",
                  fontSize: 20,
                  fontWeight: primaryTextStyle.fontWeight!,
                  color: Colors.white,
                ),
                const SizedBox(width: 14),
                SvgPicture.asset("images/img_3.svg")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
