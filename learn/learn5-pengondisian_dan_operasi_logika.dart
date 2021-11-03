void main() {
  var a = 8;
  var b = 9;

  // ------------------ Pengondisian ------------------
  // If
  if (a < b) {
    print('kecil');
  } else if (a == b) {
    print('sama');
  } else {
    print('besar');
  }

  // Switch case
  var kota = 'Jakarta';

  switch (kota) {
    case 'Jakarta':
      {
        print('Kota Jakarta');
      }
      break;
    case 'Makassar':
      {
        print('Kota Makassar');
      }
      break;
  }

  // Ternary
  bool boolean = true;

  print(boolean ? 'Bernilai true' : 'Bernilai false');

  // ------------------ Operator perbandingan ------------------
  // ==	Sama dengan
  // !=	Tidak sama dengan
  // >	Lebih dari
  // <	Kurang dari
  // >=	Lebih dari sama dengan
  // <=	Kurang dari sama dengan

  // ------------------ Operator logika ------------------
  // ||	OR
  // &&	AND
  // ! NOT
}
