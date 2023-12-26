import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CitySelectProvider extends ChangeNotifier {
  List<String> suggestions = [
    "Akkaraipattu",
    "Ampara",
    "Anuradhapura",
    "Badulla",
    "Balangoda",
    "Bandarawela",
    "Batticaloa",
    "Chavakachcheri",
    "Chilaw",
    "Colombo",
    "Dambulla",
    "Dehiwela-Mount Lavinia",
    "Embilipitiya",
    "Eravur",
    "Galle",
    "Gampaha",
    "Gampola",
    "Hambantota",
    "Happutalle",
    "Homagama",
    "Jaffna",
    "Kalmunai",
    "Kalutara",
    "Kandy",
    "Kattankudy",
    "Kegalle",
    "Kinniya",
    "Kurunegala",
    "Kuliyapitiya",
    "Mahiyanganaya",
    "Mannar",
    "Matale",
    "Matara",
    "Mawathagama",
    "Mihintale",
    "Monaragala",
    "Mulleriyawa",
    "Negombo",
    "Nuwara Eliya",
    "Padukka",
    "Puttalam",
    "Polonnaruwa",
    "Point Pedro",
    "Ratnapura",
    "Sri Jayewardenepura Kotte",
    "Thambiluvil",
    "Trincomalee",
    "Valvettithurai",
    "Vavuniya",
    "Vijitapura"
  ];

  String? cityFrom;
  String? cityTo;
  String? formattedDate;

  void setCityFromValue(String value) {
    cityFrom = value;
    notifyListeners();
  }

  void setCitytoValue(String value) {
    cityTo = value;
    notifyListeners();
  }

  void getTodayDate() {
    DateTime today = DateTime.now();
    formattedDate = DateFormat('dd MMMM, y').format(today);
  }
}
