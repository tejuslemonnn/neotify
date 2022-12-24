import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neotify/utils/AppColors.dart';
import 'package:neotify/utils/AppValues.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget(
      {Key? key,
      this.appBarTitleText,
      this.appBarTrailing,
      required this.padding})
      : super(key: key);
  final Widget? appBarTitleText;
  final Widget? appBarTrailing;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x28000000),
            blurRadius: 5,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: TextFormField(
        style: const TextStyle(color: AppColors.whiteColor),
        decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.grey.withOpacity(0.4),
            focusColor: AppColors.grey.withOpacity(0.4),
            focusedBorder: _border(AppColors.grey.withOpacity(0.6)),
            border: _border(AppColors.blackBackground),
            enabledBorder: _border(AppColors.blackBackground),
            hintText: 'Search...',
            hintStyle: TextStyle(color: AppColors.whiteColor.withOpacity(0.5)),
            contentPadding: const EdgeInsets.symmetric(vertical: 5),
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.whiteColor.withOpacity(0.5),
            ),
            suffixIcon: Icon(
              CupertinoIcons.mic_fill,
              color: AppColors.whiteColor.withOpacity(0.8),
            )),
        onFieldSubmitted: (value) {},
      ),
    );
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: color),
        borderRadius: BorderRadius.circular(12),
      );
}
