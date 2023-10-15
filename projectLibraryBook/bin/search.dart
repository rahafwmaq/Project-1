import 'dart:io';
import 'databook.dart';
import 'displaybook.dart';

//class Search => to search book by lots of choises
//it is inheritance DisplayBook becuse we use some method in DisplayBook such as displayInfo()
// it contain with main function wich is listOfSearch() to let user choose to serch by
// four function searchByID(),searchByAuthor(),searchByTitle() and searchByCategory
class Search extends DisplayBook {
  void listOfSearch() {
    bool run = true;
    while (run) {
      String? userSearchby = "0";
      print("\nPlease select a number to search by :");
      print("1. ID");
      print("2. Auther");
      print("3. Title");
      print("4. Category");
      print("5. Return to Library Book Menu");
      userSearchby = stdin.readLineSync();
      if (userSearchby == "1") {
        searchByID();
      } else if (userSearchby == "2") {
        searchByAuthor();
      } else if (userSearchby == "3") {
        searchByTitle();
      } else if (userSearchby == "4") {
        searchByCategory();
      } else if (userSearchby == "5") {
        run = false;
      } else {
        print("\n Incorrect entry -_- \n please try again\n");
      }
    }
  }

  int numberOfIndex = 0;
  int searchByID() {
    print("\nPlease enter ID book : ");
    String? id = stdin.readLineSync();

    if (libraryBook.any((element) => element.values.contains(id))) {
      for (int i = 0; i < libraryBook.length; i++) {
        if (id == libraryBook[i]["bookID"]) {
          numberOfIndex = i;
        }
      }
      displayInfo(numberOfIndex);
    } else {
      print("\n Incorrect entry -_- \n please try again\n");
    }
    return numberOfIndex;
  }

  int searchByAuthor() {
    print("\nPlease enter the author name : ");
    String? authorName = stdin.readLineSync();

    if (libraryBook.any((element) => element.values.contains(authorName))) {
      for (int i = 0; i < libraryBook.length; i++) {
        if (authorName == libraryBook[i]["bookAuthor"]) {
          numberOfIndex = i;
        }
      }
      displayInfo(numberOfIndex);
    } else {
      print("\n Incorrect entry -_- \n please try again\n");
      
    }
    return numberOfIndex;
  }

  int searchByTitle() {
    print("\nPlease enter book title");
    String? booktitle = stdin.readLineSync();

    if (libraryBook.any((element) => element.values.contains(booktitle))) {
      for (int i = 0; i < libraryBook.length; i++) {
        if (booktitle == libraryBook[i]["bookTitle"]) {
          numberOfIndex = i;
        }
      }
      displayInfo(numberOfIndex);
    } else {
      print("\n Incorrect entry -_- \n please try again\n");
    }
    return numberOfIndex;
  }

  int searchByCategory() {
    print("\nPlease enter category");
    String? bookcategory = stdin.readLineSync();

    if (libraryBook.any((element) => element.values.contains(bookcategory))) {
      for (int i = 0; i < libraryBook.length; i++) {
        if (bookcategory == libraryBook[i]["category"]) {
          numberOfIndex = i;
          displayInfo(numberOfIndex);
        }
      }
    } else {
      print("\n Incorrect entry -_- \n please try again\n");
    }
    return numberOfIndex;
  }
}
