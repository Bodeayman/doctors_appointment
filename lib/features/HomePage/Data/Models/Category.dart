import 'package:flutter/material.dart';

class CategoryClass {
  final String imagePath;
  final String categoryName;
  CategoryClass(this.imagePath, this.categoryName);
  static List<CategoryClass> constantCategoryTiles = [
    CategoryClass("assets/dentistry.png", "Dentistry"),
    CategoryClass("assets/cardiology.png", "Cardiology"),
    CategoryClass("assets/pulmono.png", "Pulmonory"),
    CategoryClass("assets/general.png", "General"),
    CategoryClass("assets/neurology.png", "Neurology"),
    CategoryClass("assets/gastonomy.png", "Gastoren"),
    CategoryClass("assets/laboratory.png", "Laboratory"),
    CategoryClass("assets/vacanation.png", "Vacanation"),
  ];
}
