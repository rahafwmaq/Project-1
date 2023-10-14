import 'databook.dart';
import 'start.dart';

// class DisplayBook => to dispaly the data from databook.dart
// is inheritance from StartApp 
// it contain three method
// 1. dispalylibrary() => to display all the library book
// 2. displayInfo() => display a information for one book by specific index
// 3. diplayNewBook() => display the new book from addbook.dart

class DisplayBook extends StartApp {
  void dispalylibrary(List booklist) {
    for (int i = 0; i < booklist.length; i++) {
      var bookID = booklist[i]['bookID'];
      var booktitle = booklist[i]['bookTitle'];
      var bookAuthor = booklist[i]['bookAuthor'];
      var bookCopies = booklist[i]['bookCopies'];
      var bookPrice = booklist[i]['bookPrice'];
      var bookCategory = booklist[i]['category'];
      int num = i + 1;
      print("\n$num.");
      print("ID : $bookID");
      print("Book title : $booktitle");
      print("Author : $bookAuthor");
      print("Copies of the book : $bookCopies");
      print("Price : $bookPrice SR");
      print("Category : $bookCategory\n");
    }
  }

  void displayInfo(int i) {
    print("\nThe book info : ");
    var bookID = libraryBook[i]['bookID'];
    var booktitle = libraryBook[i]['bookTitle'];
    var bookAuthor = libraryBook[i]['bookAuthor'];
    var bookCopies = libraryBook[i]['bookCopies'];
    var bookPrice = libraryBook[i]['bookPrice'];
    var bookCategory = libraryBook[i]['category'];

    print("ID : $bookID");
    print("Book title : $booktitle");
    print("Author : $bookAuthor");
    print("Copies of the book : $bookCopies");
    print("Price : $bookPrice SR");
    print("Category : $bookCategory \n");
  }

  void diplayNewBook(List booklist, String? id) {
    for (int i = 0; i < booklist.length; i++) {
      if (id == booklist[i]['bookID']) {
        displayInfo(i);
      }
    }
  }
}
