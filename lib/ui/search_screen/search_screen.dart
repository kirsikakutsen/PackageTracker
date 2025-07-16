import 'package:flutter/material.dart';
import 'package:package_tracker/routes/routes.dart';
import 'package:package_tracker/ui/theme/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: _topAppBar(),
      body: _searchSection(),
      bottomNavigationBar: _bottomAppBar(context),
    );
  }
}

AppBar _topAppBar() {
  return AppBar(
    backgroundColor: AppColors.topAppBarBackground,
    surfaceTintColor: AppColors.topAppBarBackground,
    title: Text(
      "Delivery Tracker",
      style: TextStyle(color: AppColors.text, fontSize: 28),
    ),
  );
}

Widget _searchSection() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          "Enter your tracking number",
          style: TextStyle(color: AppColors.text, fontSize: 20),
        ),

        SizedBox(height: 25),

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.inputFieltBackground,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: TextFormField(
              style: TextStyle(color: AppColors.text),
              showCursor: true,
              cursorColor: AppColors.cursor,
              maxLines: 1,
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: AppColors.text,
                hintText: "e.g. 3847205738",
                hintStyle: TextStyle(color: AppColors.secondaryText),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _trackButton(BuildContext context) {
  return Material(
    color: Colors.transparent,
    child: Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            AppColors.buttonGradientBottom,
            AppColors.buttonGradientTop,
          ],
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        splashColor: AppColors.buttonSplashColor,
        onTap: () {
          Navigator.pushNamed(context, Routes.packageDetails);
        },
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Track",
            style: TextStyle(color: AppColors.text, fontSize: 28),
          ),
        ),
      ),
    ),
  );
}

BottomAppBar _bottomAppBar(BuildContext context) {
  return BottomAppBar(
    color: AppColors.topAppBarBackground,
    child: _trackButton(context),
  );
}
