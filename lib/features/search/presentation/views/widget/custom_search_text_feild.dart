import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomSearchTextFeild extends StatelessWidget {
  const CustomSearchTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: bildOutlineInputBorder(),
        focusedBorder: bildOutlineInputBorder(),
        hintText: "Search",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Opacity(
            opacity: .6,
            child: Image.asset(
              AssetsData.search,
              height: 25,
              width: 25,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder bildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(
        12,
      ),
    );
  }
}
