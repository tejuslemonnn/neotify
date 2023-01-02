/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_add.svg
  String get icAdd => 'assets/icons/ic_add.svg';

  /// File path: assets/icons/ic_bookmark.svg
  String get icBookmark => 'assets/icons/ic_bookmark.svg';

  /// File path: assets/icons/ic_download.svg
  String get icDownload => 'assets/icons/ic_download.svg';

  /// File path: assets/icons/ic_home.svg
  String get icHome => 'assets/icons/ic_home.svg';

  /// File path: assets/icons/ic_play.svg
  String get icPlay => 'assets/icons/ic_play.svg';

  /// List of all assets
  List<String> get values => [icAdd, icBookmark, icDownload, icHome, icPlay];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ROC.png
  AssetGenImage get roc => const AssetGenImage('assets/images/ROC.png');

  /// File path: assets/images/artics_monkey.png
  AssetGenImage get articsMonkey =>
      const AssetGenImage('assets/images/artics_monkey.png');

  /// File path: assets/images/boy_pablo.png
  AssetGenImage get boyPablo =>
      const AssetGenImage('assets/images/boy_pablo.png');

  /// File path: assets/images/bruno_mars.png
  AssetGenImage get brunoMars =>
      const AssetGenImage('assets/images/bruno_mars.png');

  /// File path: assets/images/charlie_puth.png
  AssetGenImage get charliePuth =>
      const AssetGenImage('assets/images/charlie_puth.png');

  /// File path: assets/images/joji.png
  AssetGenImage get joji => const AssetGenImage('assets/images/joji.png');

  /// File path: assets/images/westlife.png
  AssetGenImage get westlife =>
      const AssetGenImage('assets/images/westlife.png');

  /// File path: assets/images/westlife_banner.png
  AssetGenImage get westlifeBanner =>
      const AssetGenImage('assets/images/westlife_banner.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        roc,
        articsMonkey,
        boyPablo,
        brunoMars,
        charliePuth,
        joji,
        westlife,
        westlifeBanner
      ];
}

class $AssetsMaskGen {
  const $AssetsMaskGen();

  /// File path: assets/mask/mask.png
  AssetGenImage get mask => const AssetGenImage('assets/mask/mask.png');

  /// File path: assets/mask/mask_cast.png
  AssetGenImage get maskCast =>
      const AssetGenImage('assets/mask/mask_cast.png');

  /// File path: assets/mask/mask_firstIndex.png
  AssetGenImage get maskFirstIndex =>
      const AssetGenImage('assets/mask/mask_firstIndex.png');

  /// File path: assets/mask/mask_lastIndex.png
  AssetGenImage get maskLastIndex =>
      const AssetGenImage('assets/mask/mask_lastIndex.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [mask, maskCast, maskFirstIndex, maskLastIndex];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsMaskGen mask = $AssetsMaskGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
