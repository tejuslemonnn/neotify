import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:neotify/gen/assets.gen.dart';
import 'package:neotify/models/song.dart';
import 'package:neotify/utils/AppColors.dart';
import 'package:neotify/utils/AppValues.dart';
import 'package:neotify/utils/masked_image.dart';
import 'package:neotify/widgets/grenn_blur.dart';
import 'package:neotify/widgets/pink_blur.dart';
import 'package:neotify/widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackBackground,
      body: SizedBox(
        width: AppValues.screenWidth(context),
        height: AppValues.screenHeight(context),
        child: Stack(
          children: [
            GreenBlur(
              top: -100,
              left: -100,
              widthBlur: 200,
              heightBlur: 200,
            ),
            PinkBlur(
              right: -100,
              top: AppValues.screenHeight(context) * 0.4,
              widthBlur: 166,
              heightBlur: 166,
            ),
            GreenBlur(
              bottom: -100,
              left: -100,
              widthBlur: 166,
              heightBlur: 166,
            ),
            SafeArea(
              bottom: false,
              child: ListView(
                primary: true,
                children: [
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "What would you like to listen?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.whiteColor.withOpacity(0.85),
                        fontSize:
                            AppValues.screenHeight(context) <= 667 ? 14 : 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const SearchWidget(
                    appBarTitleText: Text("text"),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "New Song",
                      style: TextStyle(
                        color: AppColors.whiteColor.withOpacity(0.85),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 160,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: newSongs.length,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = Assets.mask.maskFirstIndex.path;
                        } else if (index == newSongs.length) {
                          mask = Assets.mask.maskLastIndex.path;
                        } else {
                          mask = Assets.mask.mask.path;
                        }
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 20 : 0,
                            ),
                            height: 160,
                            width: 142,
                            child: MaskedImage(
                              asset: newSongs[index].songPoster,
                              mask: mask,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Upcoming Song",
                      style: TextStyle(
                        color: AppColors.whiteColor.withOpacity(0.85),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 160,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: newSongs.length,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {
                          mask = Assets.mask.maskFirstIndex.path;
                        } else if (index == newSongs.length) {
                          mask = Assets.mask.maskLastIndex.path;
                        } else {
                          mask = Assets.mask.mask.path;
                        }
                        return GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? 20 : 0,
                            ),
                            height: 160,
                            width: 142,
                            child: MaskedImage(
                              asset: upcomingSongs[index].songPoster,
                              mask: mask,
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _floatButton(),
      bottomNavigationBar: GlassmorphicContainer(
        width: AppValues.screenWidth(context),
        height: 80,
        borderRadius: 0,
        linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.pink.withOpacity(0.2),
            AppColors.lightGreen.withOpacity(0.2),
          ],
        ),
        border: 0,
        blur: 30,
        borderGradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.pink,
            AppColors.lightGreen,
          ],
        ),
        child: Center(
          child: BottomAppBar(
            color: Colors.transparent,
            notchMargin: 4,
            elevation: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Assets.icons.icHome,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Assets.icons.icPlay,
                    ),
                  ),
                ),
                const Expanded(
                  child: Text(''),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Assets.icons.icBookmark,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Assets.icons.icDownload,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _floatButton() {
    return Container(
      width: 64,
      height: 64,
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.pink.withOpacity(0.2),
            AppColors.lightGreen.withOpacity(0.2),
          ],
        ),
      ),
      child: Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.pink,
              AppColors.lightGreen,
            ],
          ),
        ),
        child: RawMaterialButton(
          onPressed: () {},
          shape: const CircleBorder(),
          fillColor: const Color(0xFF404c57),
          child: SvgPicture.asset(Assets.icons.icAdd),
        ),
      ),
    );
  }
}
