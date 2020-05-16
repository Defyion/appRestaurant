import 'package:cloud_firestore/cloud_firestore.dart';

class Add {
  void addFood(String image, String title, String description, double price) {
    Firestore.instance.collection('produtos').document('foods').setData({
      image: image,
      title: title,
      description: description,
    });
  void addDrink(String image, String title, String description, double price) {}
    Firestore.instance.collection('produtos').document('drinks').setData({
      image: image,
      title: title,
      description: description,
    });
  }