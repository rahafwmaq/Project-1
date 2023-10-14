import 'dart:io';

import 'databook.dart';
import 'displaybook.dart';

//class Purches => to let user to buy book
//it is inheritance from DisplayBook
//contain two method purcheslist() and invoice();
//the purcheslist() contain the feature that if the user buy a book the copies will decreases

class Purches extends DisplayBook {
  int numberOfIndex = 0;

  void purcheslist() {
    print("\nPlease write book title you want to buy");
    String? booktitle = stdin.readLineSync();

    if (libraryBook.any((element) => element.values.contains(booktitle))) {
      for (int i = 0; i < libraryBook.length; i++) {
        if (booktitle == libraryBook[i]["bookTitle"]) {
          numberOfIndex = i;
        }
      }
      displayInfo(numberOfIndex);
    } else {
      print("\nSorry the book does not exist\n");
      return;
    }

    print("\nStill want to buy the book? \nIf yes press Y \nIf no press N ");
    String? buy = stdin.readLineSync();
    bool run = true;
    while (run) {
      if (buy?.toLowerCase() == "y") {
        int oldCopies = libraryBook[numberOfIndex]["bookCopies"];
        int currentCopies = oldCopies - 1;
        libraryBook[numberOfIndex]['bookCopies'] = currentCopies;
        invoice();
        break;
      } else if (buy?.toLowerCase() == "n") {
        print("Thank you for your time");
        run = false;
        libraryBookMenu();
      } else {
        print("\n Incorrect entry -_- \n please try again\n");
      }
    }
  }

  void invoice() {
    print("\n********** Your invoice **********");
    String? book = libraryBook[numberOfIndex]['bookTitle'];
    double price = libraryBook[numberOfIndex]['bookPrice'];
    print("Book Title : $book ");
    print("Price : $price SR\n");
    print("\tThank you :) \n\tHave a nice day");
  }
}
