import 'dart:io';
import 'addbook.dart';
import 'databook.dart';
import 'deletebook.dart';
import 'displaybook.dart';
import 'purches.dart';
import 'search.dart';
import 'updatebookinfo.dart';

// this is the brain of application
// the StartApp contain one method is to display the Library Book Menu and create obj from each class that we need

class StartApp {
  void libraryBookMenu() {
    bool runProgram = true;
    int numberOfIndex = 0;
    String? userChoise = "0";
    while (runProgram) {
      print(
          "---------------------------------------------------------------------");
      print(
          "-------------------     Library Book     ----------------------------");
      print(
          "---------------------------------------------------------------------\n");
      print("Please select a number from the menu\n");
      print("******************** Library Book Menu ********************");
      print("1. Display library book ");
      print("2. Search for book");
      print("3. Add new book to library ");
      print("4. Delete book from library");
      print("5. Update book data");
      print("6. Buy a book");
      print("Q. Exit");

      userChoise = stdin.readLineSync();

      if (userChoise == "1") {
        DisplayBook display = DisplayBook();
        display.dispalylibrary(libraryBook);
      } else if (userChoise == "2") {
        Search search = Search();
        search.listOfSearch();
      } else if (userChoise == "3") {
        AddBook addBook = AddBook();
        addBook.addNewBook();
      } else if (userChoise == "4") {
        DeleteBook deleteBook = DeleteBook();
        deleteBook.listOfDelete(libraryBook, numberOfIndex);
      } else if (userChoise == "5") {
        UpdateBookInfo update = UpdateBookInfo();
        update.listUpdate();
      } else if (userChoise == "6") {
        Purches buybook = Purches();
        buybook.purcheslist();
      } else if (userChoise?.toLowerCase() == "q") {
        runProgram = false;
      } else {
        print("\n Incorrect entry -_- \n please try again \n");
      }
    }
  }
}
