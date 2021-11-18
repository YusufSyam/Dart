// Enums merupakan cara menyimpan banyak nilai konstan di satu tempat dan menanganinya secara bersamaan

// Membuat enum
enum Rainbow { red, orange, yellow, green, blue, indigo, violet }

enum Status { Todo, In_progress, In_Review, Done }

void main() {
  // Menampilkan semua variabel pada sebuah enum
  print(Rainbow.values);

  // Mengakses salah satu nilai dari enum
  print(Status.Todo);

  // Mengakses index pada variabel enum
  print(Rainbow.red.index);
}
