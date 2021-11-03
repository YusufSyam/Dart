void main() {
  String singleQuote = 'Ini adalah String';
  String doubleQuote = "Ini juga String";

  // Kita dapat menggunakan tanda petik dalam string asalkan jenis petik yang digunakan
  // Berbeda dengan tanda petik terluar string, misal
  print('"What do you think of Dart?" he asked');

  // Untuk menghasilkan output seperti ini
  // "I think it's great!" I answered confidently
  // Kita menggunakan metode escape string dengan menambahkan backslash '\' di belakang tanda petik
  print('"I think it\'s great!" I answered confidently');

  // String interpolation
  int nomor = 9;
  String a = '$nomor nomor';

  // String interpolation dengan operasi tertentu, kita cukup menambahkan kurung kurawal
  String b = '${nomor * 2} nomor x 2';

  print(a);
  print(b);

  // ------------------- Operasi String ------------------------
  // Penambahan string
  String s1 = 'ini x';
  String s2 = ' woi!';
  print(s1 + s2);

  // Membandingkan string
  print(s1 == s2);

  // Mendapatkan panjang string
  print(s1.length);

  // Substring
  print(s1.substring(0, 2));

  // Operasi string lainnya
  // toLowerCase()
  // Converts all characters in this string to lower case.

  // toUpperCase()
  // Converts all characters in this string to upper case.

  // 3 	trim()
  // Returns the string without any leading and trailing whitespace.

  // 4 	compareTo()
  // Compares this object to another.

  // 5 	replaceAll()
  // Replaces all substrings that match the specified pattern with a given value.

  // 6 	split()
  // Splits the string at matches of the specified delimiter and returns a list of substrings.

  // 7 	substring()
  // Returns the substring of this string that extends from startIndex, inclusive, to endIndex, exclusive.

  // 8 	toString()
  // Returns a string representation of this object.

  // 9 	codeUnitAt()
  // Returns the 16-bit UTF-16 code unit at the given index.
}
