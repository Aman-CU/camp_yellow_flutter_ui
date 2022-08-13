import 'package:flutter/material.dart';

//Header Text
getSectionHeader(String title) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      title,
      style: const TextStyle(
        color: Colors.orange,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

//content text
getSectionContentText(String title) {
  return Text(
    title,
    style: const TextStyle(
      color: Colors.pink,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );
}

//clan members row
getClanMembers(String imagePath, String text) {
  return Row(
    children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            image: DecorationImage(
                fit: BoxFit.fitHeight, image: Image.asset(imagePath).image)),
      ),
      const SizedBox(
        width: 30,
      ),
      Text(
        text,
        style: const TextStyle(
          color: Colors.pink,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

//featured members row
getPastFeaturedMembers(String imagePath, String text) {
  return Row(
    children: [
      Container(
        height: 120,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight, image: Image.asset(imagePath).image)),
      ),
      const SizedBox(
        width: 30,
      ),
      getSectionContentText(text),
    ],
  );
}
