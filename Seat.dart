class Seat {
  String? _row;
  int? _col;

  set setRow(String row) => this._row = row;
  set setCol(int col) => this._col = col;

  String? get getRow => this._row;
  int? get getCol => this._col;


//? int? randInt() {
//?   var rng = Random();

//?   var rand = rng.nextInt(20);
//?   return rand;
//? }

//? String randChar() {
//?   final _random = Random();
//?   const _availableChars = 'abcdefghijklmnopqrstuvwxyz';
//?   final randomString = List.generate(1,
//?           (index) => _availableChars[_random.nextInt(_availableChars.length)])
//?       .join();

//?   return randomString;
//? }

//? String seatGenerator() {
//?   var seat = randInt().toString() + randChar();
//?   return seat;
//? }
   
}
