import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AppHelperFunctions {
  static Color? getColor(String value) {
    switch(value) {
      case "Green":
        return Colors.green;
        break;
      case "Red":
        return Colors.red;
        break;
      case "Blue":
        return Colors.blue;
        break;
      case "Pink":
        return Colors.pink;
        break;
      case "Grey":
        return Colors.grey;
        break;
      case "Purple":
        return Colors.purple;
        break;
      case "Black":
        return Colors.black;
        break;
      case "White":
        return Colors.white;
        break;
      case "Orange":
        return Colors.orange;
        break;
      case "Brown":
        return Colors.brown;
        break;
      case "Indigo":
        return Colors.indigo;
        break;
      case "Teal":
        return Colors.teal;
        break;
      case "Yellow":
        return Colors.yellow;
        break;
      default:
        return Colors.transparent;
    }
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              )
            ],
          );
        }
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
        context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxLength) {
    if(text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date, {String format = 'dd MMM yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for(var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(i, i+ rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(children: rowChildren,));
    }
    return wrappedList;
  }
}