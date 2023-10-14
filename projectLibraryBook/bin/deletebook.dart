import 'dart:io';
import 'search.dart';

//class DeleteBook => to delete book
// it is inheritance methods from Search to serch wich book the user want to delete
//contain two method listOfDelete() and deleteBook()
//listOfDelete() to search for the book want to delete

class DeleteBook extends Search {
  void listOfDelete(List booklist, int numberOfIndex) {
    bool run = true;
    while (run) {
      String? userDeleteby = "0";
      print("\nPlease select a number to delete book by :");
      print("1. ID");
      print("2. Auther");
      print("3. Title");
      print("4. Return to Library Book Menu");

      userDeleteby = stdin.readLineSync();
      if (userDeleteby == "1") {
        numberOfIndex = searchByID();
        deleteBook(booklist, numberOfIndex);
      } else if (userDeleteby == "2") {
        numberOfIndex = searchByAuthor();
        deleteBook(booklist, numberOfIndex);
      } else if (userDeleteby == "3") {
        numberOfIndex = searchByTitle();
        deleteBook(booklist, numberOfIndex);
      } else if (userDeleteby == "4") {
        run = false;
      } else {
        print("\n Incorrect entry -_- \n please try again\n");
      }
    }
  }

  void deleteBook(List list, int indexnumber) {
    list.removeAt(indexnumber);
    print("\nThe Book has been deleted successfully\n");
  }
}
