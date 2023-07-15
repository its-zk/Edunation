import 'package:get/get.dart';

class HomeController extends GetxController {
  bool showSuggestions = false;
  SearchTypes? selectedSearchType;

  void updateShowSuggestions(bool val) {
    if (val) {
      if (showSuggestions) {
      } else {
        showSuggestions = true;
      }
    } else {
      showSuggestions = false;
    }

    update();
  }

  void updateSearchType(SearchTypes? searchType) {
    if (searchType != selectedSearchType) {
      selectedSearchType = searchType;
      update();
    }
  }
}

enum SearchTypes { university, city, program }
