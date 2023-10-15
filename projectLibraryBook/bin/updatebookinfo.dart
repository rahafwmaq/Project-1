import 'dart:io';
import 'databook.dart';
import 'search.dart';

//class UpdateBookInfo => to update book info
//it is inheritance method from Search
//contain four methods listUpdate() => to search for the book the user want to update
//update() => what the user want to update
//addCopies() and DeleteCopies() if the user want to updat the copies of book

class UpdateBookInfo extends Search {
  void listUpdate() {
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
        update();
      } else if (userSearchby == "2") {
        searchByAuthor();
        update();
      } else if (userSearchby == "3") {
        searchByTitle();
        update();
      } else if (userSearchby == "4") {
        searchByCategory();
        update();
      } else if (userSearchby == "5") {
        run = false;
        return;
      } else {
        print("\n Incorrect entry -_- \n please try again\n");
        return;
      }
    }
  }

  void update() {
    bool run1 = true;
    while (run1) {
      String? userUpdate = "0";
      print("\nPlease select a number to update by :");
      print("1. Book title");
      print("2. Author name");
      print("3. Book price");
      print("4. Number of copies");
      print("5. Return to list of search by ");
      userUpdate = stdin.readLineSync();

      if (userUpdate == "1") {
        print("\nEnter new title  :");
        String? newTitle = stdin.readLineSync();

        for (var title in libraryBook) {
          title['bookTitle'] = newTitle;
        }

        print("\nThe book title has been updated successfully");
        displayInfo(numberOfIndex);
        break;
      }
      if (userUpdate == "2") {
        print("Enter new author  :");
        String? newAuthor = stdin.readLineSync();

        for (var author in libraryBook) {
          author['bookAuthor'] = newAuthor;
        }

        print("\nThe book author has been updated successfully");
        displayInfo(numberOfIndex);
      }
      if (userUpdate == "3") {
        print("Enter new price  :");
        int? newPrice = int.parse(stdin.readLineSync()!);

        for (var price in libraryBook) {
          price['bookPrice'] = newPrice;
        }

        print("\nThe book price has been updated successfully");
        displayInfo(numberOfIndex);
      }
      if (userUpdate == "4") {
        print("Do you to ");
        print("1. Add Copies");
        print("2. Delete Copies");
        String? updateCopies = stdin.readLineSync();

        if (updateCopies == "1") {
          print("How many copies do you want to add");
          int newCopies = int.parse(stdin.readLineSync()!);
          addCopies(newCopies);
        }
        if (updateCopies == "2") {
          print("How many copies do you want to delete");
          int deleteCopies = int.parse(stdin.readLineSync()!);
          DeleteCopies(deleteCopies);
        }
      } else if (userUpdate == "5") {
        run1 = false;
        return;
      } else {
        print("\n Incorrect entry -_- \n please try again\n");
        //return;
      }
    }
  }

  void addCopies(int newCopies) {
    int oldCopies = libraryBook[numberOfIndex]["bookCopies"];
    int currentCopies = oldCopies + newCopies;
    libraryBook[numberOfIndex]['bookCopies'] = currentCopies;

    print("\nThe copies has been updated successfully");
    displayInfo(numberOfIndex);
  }

  void DeleteCopies(int deletedCopies) {
    int oldCopies = libraryBook[numberOfIndex]["bookCopies"];
    int currentCopies = oldCopies - deletedCopies;

    libraryBook[numberOfIndex]['bookCopies'] = currentCopies;
    print("\nThe copies has been updated successfully");
    displayInfo(numberOfIndex);
  }
}
