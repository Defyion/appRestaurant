import "package:cloud_firestore/cloud_firestore.dart";

class Delete {
  void delete_food (String image, String title, String description, double price) {
    Firestore.instance.collection('produtos').document('foods').setData({
      image: image,
      title: title,
      description: description,
    });

  void delete_drink (String image, String title, String description, double price) {
    Firestore.instance.collection('produtos').document('foods').setData({
      image: image,
      title: title,
      description: description,
    });
  }
  }
}