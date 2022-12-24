import 'package:flutter/material.dart';
import 'package:neotify/models/movie.dart';
import 'package:neotify/utils/AppColors.dart';
import 'package:neotify/utils/AppValues.dart';
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
                  Text(
                    "What would you like to listen?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.whiteColor.withOpacity(0.85),
                      fontSize:
                          AppValues.screenHeight(context) <= 667 ? 14 : 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const SearchWidget(
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: newMovies.length,
                      itemBuilder: (context, index) {
                        String mask;
                        if (index == 0) {}
                        return GestureDetector(
                          child: Container(
                            height: 160,
                            width: 142,
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
    );
  }
}
