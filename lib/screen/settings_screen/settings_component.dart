import 'package:aactivpay/export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsComponent {
  Widget getTopBackGround() {
    return Container(
      width: double.infinity,
      height: sizes.heightRatio * 200,
      color: colors.accentPrimary,
    );
  }

  Widget getStatsBox() {
    return Container(
      width: sizes.width,
      height: sizes.heightRatio * 210,
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 28),
      decoration: BoxDecoration(
        color: colors.primaryLight,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          getName('Jenifer'),
          verticalSpacer(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getDetails('Transactions', '10,000 pkr'),
              getDetails('Earn points', '440'),
              getDetails('Redeem points', '300'),
            ],
          ),
        ],
      ),
    );
  }

  Widget getAppBar(onBack) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        getBackButton(onBack),
        getCenterTitle(),
        horizontalSpacer(24),
      ],
    );
  }

  Widget getBackButton(onBack) {
    return GestureDetector(
      onTap: onBack,
      child: SvgPicture.asset(
        assets.icBack,
      ),
    );
  }

  Widget getCenterTitle() {
    return Text(
      'Settings',
      style: textStyles.bodyLarge.copyWith(
        color: colors.primaryLight,
      ),
    );
  }

  Widget getProfileImage(String image) {
    return Container(
      width: sizes.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        image,
      ),
    );
  }

  Widget getDetails(title, subTitle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        getRegularText(title, 16),
        getBoldText(subTitle),
      ],
    );
  }

  Widget getName(name) {
    return Text(
      name,
      style: textStyles.bodyLarge,
    );
  }

  Widget getRegularText(title, size) {
    return Text(
      title,
      style: textStyles.bodyRegular.copyWith(
        fontSize: sizes.fontRatio * size,
      ),
    );
  }

  Widget getBoldText(subTitle) {
    return Text(
      subTitle,
      style: textStyles.bodyRegular,
    );
  }

  Widget getSettingItem(icon, name) {
    return Row(
      children: [
        getIcon(icon),
        horizontalSpacer(14),
        getRegularText(name, 18),
        Spacer(),
        getIcon(assets.icRight),
      ],
    );
  }

  getIcon(icon) {
    return SvgPicture.asset(icon);
  }
}
