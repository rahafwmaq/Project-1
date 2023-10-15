import 'dart:io';
import 'databook.dart';
import 'displaybook.dart';

//class AddBook => o add new book
// it inheritance methods from DisplayBook
// contain one method addNewBook()

class AddBook extends DisplayBook {
  void addNewBook() {
    try {
      print("Kindly insert book info");
      print("New ID :");
      String? newIDBook = stdin.readLineSync();
      print("Book title :");
      String? addBooktitle = stdin.readLineSync();
      print("Author :");
      String? addAuthor = stdin.readLineSync();
      print("Copies :");
      int? addCopies = int.parse(stdin.readLineSync()!);
      print("Price :");
      double? addNewPrice = double.parse(stdin.readLineSync()!);
      print("Category :");
      String? addcategory = stdin.readLineSync();

      libraryBook.add({
        "bookID": newIDBook,
        "bookTitle": addBooktitle,
        "bookAuthor": addAuthor,
        "bookCopies": addCopies,
        "bookPrice": addNewPrice,
        "category": addcategory,
      });
      print("\nThe book has been add successfully");
      diplayNewBook(libraryBook, newIDBook);
    } catch (error) {
      print(
          "\ninvalid input :( \nPlese enter a number in Copies and Price\nTry again\n");
      addNewBook();
    }
  }
}
