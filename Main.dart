import 'dart:async';
import 'dart:io';
import 'dart:math' show Random;
// import 'dart:html_common';

//import 'User.dart';
//import 'Theater.dart';

import 'Movie.dart';
import 'Seat.dart';
import 'Ticket.dart';

Movie movie1 = new Movie.empty();
Movie movie2 = new Movie.empty();
Movie movie3 = new Movie.empty();

//List<String?> movieList = [];
List<Movie?> movieListTemp = [];
List<Ticket?> ticketListTemp = [];

Ticket t1 = new Ticket.empty();
List<String?> ticketList = [];

var i = 0;

void main() {
  // ! ADD FLUTTER!

  // todo Store each newly created seat into this LIST
  // todo when a newly created seat is made Check this LIST and
  // todo if repeated values are present ReCreate the Seat value

  //! List seatList = [];

  // todo User -> Movie -> Ticket ->
  // * View-ticket   Add-ticket   Update-ticket   Remove-ticket    Exit-System

//* we made the list and the objects outside of the main function ^ V

  // Movie movie1 = new Movie.empty();
  // Movie movie2 = new Movie.empty();
  // Movie movie3 = new Movie.empty();
  if (i == 0) {
    movie1.setName = "Matrix";
    movie2.setName = "The Quiet Place";
    movie3.setName = "The Grave Of The FireFlies";
    movie1.setDuration = "${Random().nextInt(300)}";
    movie2.setDuration = "${Random().nextInt(300)}";
    movie3.setDuration = "${Random().nextInt(300)}";
    movieListTemp = [movie1, movie2, movie3];
    i++;
  }
  // movie1.setName2("Matrix");
  // movie2.setName2("The Quiet Place");
  // movie3.setName2("The Grave Of The FireFlies");

  t1.setTicketID = 'Testing';
  ticketListTemp = [t1];

  ticketList = [t1.getTicketID];

  // List<String?> movieList = [movie1.getName, movie2.getName, movie3.getName];

  //movieList = [movie1.getName, movie2.getName, movie3.getName];
  //object-field-name

  //objects

  // for (var i = 0; i < movieList.length; i++) {}
  List<String> seatList = [];

  while (true) {
    // DateTime.now ().runtimeType;
    print(
        "\n Please Select One Of The Options Below: \n 1. Movie \n 2. Ticket \n 0. Exit ");

    String? input1 = stdin.readLineSync();

    if (input1 == 'Movie' || input1 == '1') {
      print(
          "\n Please Select One Of The Options Below: \n 1. Add \n 2. Remove \n 3. Update  \n 4. Show \n 0. Main ");
      var inputMovie = stdin.readLineSync();

      if (inputMovie == '1' || inputMovie == 'Add') {
        //movieFieldInput();

        //print(movieFieldInput().getName);
        movieListTemp.add(movieFieldInput());

        //print(movieListTemp);
        //print("\n");

        movieListPrint();
      } else if (inputMovie == '2' || inputMovie == 'Remove') {
        print('which movie would you like to remove? Enter it\'s number');
        print('press \'0\' to go back');

        movieListPrint();
        print("\n");
        //print(movieList);

        if (movieListTemp.isEmpty) {
          print('List is empty. EXITING FUNCTION\n');

          sleep(Duration(seconds: 2));
          print('-----------------------------------------------------------');
        } else {
          int index = int.parse(stdin.readLineSync() ?? '0');
          if (index > 0 && index <= movieListTemp.length) {
            movieListTemp.removeAt(index - 1);
          } else {
            print('invalid value');
            main();
          }
        }
        //remove: text
        //RemoveAt: index

      } else if (inputMovie == '3' || inputMovie == 'Update') {
        print('which movie would you like to update?');

        movieListPrint();

        late var index = int.parse(stdin.readLineSync() ?? '0');
        var upIndex = index - 1;
        late String updateIndex = movieListTemp.elementAt(index - 1).toString();
        print('Updating ' + updateIndex.toString());

        print("What would you like to update about " + updateIndex.toString());
        // ? dynamic newValue = updateMovie();
        // ? Do I need this anymore? ^^

        var x;
        do {
          var newValue;
          // Movie? newMovieValues;
          print('what would you like to update?');
          print(
              '1:-Name \n 2:-Duration \n 3:-Genre \n 4:-Rating \n 5:-MPPA \n 6:-Director \n 7:-Cast \n 8:-Description \n 0:-Exit');

          var updateInput = stdin.readLineSync();
          if (updateInput == 'name' || updateInput == '1') {
            print('Enter the new name');
            newValue = stdin.readLineSync();
            movieListTemp[upIndex]?.setName = newValue;
          } else if (updateInput == 'duration' || updateInput == '2') {
            print('Enter the new duration');
            newValue = stdin.readLineSync();
            movieListTemp[upIndex]?.setDuration = newValue;
          } else if (updateInput == 'genre' || updateInput == '3') {
            print('Enter the new genre');
            newValue = stdin.readLineSync();
            movieListTemp[upIndex]?.setGenre = newValue;
          } else if (updateInput == 'rating' || updateInput == '4') {
            print('Enter the new rating');
            newValue = stdin.readLineSync();
            movieListTemp[upIndex]?.setRating = newValue;
          } else if (updateInput == 'mppa' || updateInput == '5') {
            print('Enter the new mppa');
            newValue = stdin.readLineSync();
            movieListTemp[upIndex]?.setMpaa = newValue;
          } else if (updateInput == 'director' || updateInput == '6') {
            print('Enter the new director');
            newValue = stdin.readLineSync();
            movieListTemp[upIndex]?.setDirector = newValue;
          } else if (updateInput == 'cast' || updateInput == '7') {
            print('Enter the new cast');
            newValue = stdin.readLineSync();
            movieListTemp[upIndex]?.setCast = newValue;
          } else if (updateInput == 'description' || updateInput == '8') {
            print('Enter the new description');
            newValue = stdin.readLineSync();
            movieListTemp[upIndex]?.setDescription = newValue;
          } else if (updateInput == '0' || updateInput == 'Exit') {
            x = '0';
            //exit(0);
            break;
          }
          print("Would you like to update again? press 1");

          x = stdin.readLineSync() ?? '0';
        } while (x != '0');

        // movieListTemp.elementAt(int.parse(updateIndex));
      } else if (inputMovie == '4' || inputMovie == 'Show') {
        movieListPrint();
        print("Which Movie would you like get Info");
        int moviechosse = int.parse(stdin.readLineSync() ?? '0');
        if (moviechosse > 0 && moviechosse <= movieListTemp.length) {
          movieListTemp[moviechosse - 1]?.showMovieInfo();
        } else {
          print("invalid number");
          main();
        }
      } else if (inputMovie == '0') {
        main();
      } else if (inputMovie == '999') {
        while (true) {}
      }
      /** print("\n Which Movie would you like to watch? \n $movieList");

update for both 
register for Ticket

            var input2 = stdin.readLineSync();

            // todo if user inputs String then get that movie >-> contains() ???
            // todo if user inputs number then get that movie >-> index()-1

            if (input2 == null) {
              //* empty
            } else if (input2 == '1' /* || input2 == 'matrix' */
    ) {
      var index = int.parse(input2) - 1;
      print(movieList.elementAt(index));
    } // * If user inputs text (perfectly) shows index I THINK */
    else if (input2 == movieList.contains(input2)) {
      print(movieList.indexOf(input2));
      print(movieList.contains(input2));

      // ! If text input
      // ! return / Print either index or element

    }
    */
      //ticket part of the code
    } else if (input1 == '2' || input1 == 'Ticket') {
      print(
          "\n Please Select One Of The Options Below: \n 1. Register \n 2. Remove \n 3. Update \n 4. Show \n 0. Return to Main");
      String? inputTicket = stdin.readLineSync();
      if (inputTicket == '1' || inputTicket == 'Register') {
        ticketListTemp.add(ticketFieldInput());

        /**
        Ticket temp = new Ticket(movie, seat, duration, dateTime, price, ticketID)

        for (var i = 0; i < 6; i++) {

          var inputTicketField = stdin.readLineSync();
           
        if (i == 0) {
          print("Please Enter the Movie name you'd wish to watch");
        } else if () {
          
        } else if () {
          
        } else if(){
        } else if(){
        } else if(){
        }
 */
        // var movie;
        // var seat;
        // var duration;
        // var dateTIme;
        // var price;
        // var ticketID;
      } else if (inputTicket == '2' || inputTicket == 'Remove') {
        print('which Ticket would you like to remove? Enter it\'s number');
        print('press \'0\' to go back');

        for (var i = 1; i <= ticketList.length; i++) {
          print(i.toString() + ". " + ticketList[i - 1].toString());
        }

        if (ticketList.isEmpty) {
          print('List is empty. EXITING FUNCTION\n');

          sleep(Duration(seconds: 2));
          print('-----------------------------------------------------------');
        } else {
          int index = int.parse(stdin.readLineSync() ?? '0');
          if (index > 0 && index <= ticketListTemp.length) {
            ticketListTemp.removeAt(index - 1);
          } else {
            print("invalid number");
            main();
          }
        }
      } else if (inputTicket == '3' || inputTicket == 'Update') {
        var newValue;
        print("What Ticket would you like to update?");

        for (var i = 1; i <= ticketListTemp.length; i++) {
          print(i.toString() +
              ". " +
              (ticketListTemp[i - 1]?.getTicketID).toString());
        }
        //int updTicketIndex = stdin.readByteSync();
        int updTicketIndex = int.parse(stdin.readLineSync() ?? '0');
        //ticketList.elementAt(updTicketIndex - 1);

        print('what would you like to update?');
        print(' 1:-Seat \n 2:-Date \n 0:-Exit');

        var updateInput = stdin.readLineSync();
        if (updateInput == 'Seat' || updateInput == '1') {
          print('Enter the new Seat');
          newValue = stdin.readLineSync();
          ticketListTemp[updTicketIndex - 1]?.setSeat = newValue;
        } else if (updateInput == 'date' || updateInput == '2') {
          print('Enter the new Date ');
          newValue = stdin.readLineSync();
          ticketListTemp[updTicketIndex - 1]?.setDateTime = newValue;
        }
        print("Would you like to update again? press 1");
      } else if (inputTicket == "4" || inputTicket == "show") {
        for (var i = 1; i <= ticketList.length; i++) {
          print(i.toString() + ". " + ticketList[i - 1].toString());
        }

        print("Which Ticket would you like get InFo");
        int ticketChoose = int.parse(stdin.readLineSync() ?? '0');

        ticketListTemp[ticketChoose - 1]?.showTicketInfo();
      } else if (inputTicket == "0" || inputTicket == "exit") {
        main();
      }
    } else if (input1 == '0' || input1 == 'exit') {
      exit(0);
    }
  }

  /* 
      var seat = seatGenerator();
      print("Before adding to \"seatList\" ${seatList}");
      seatList.add(seat);
      print("AFTER adding to \"seatList\" ${seatList} ");
      */
  //todo seatList.forEach((element) {
  //todo   element == seat;
  //todo });
  //todo seatList.add(seat);
  //todo print("Your seat is ${seat}");

  //int i = 0;

  // while (i < seatList.length){
  //   seatList.
  // }

  // Random number // Random letter

// * List<Movie> objList = [];
// * Set<Movie> objSet = {};

// * objList.add(Movie());
// * print(objList);

// * Would you like to make a new ticket?
// * Yes / No ->
// * if (yes){
// * }
}

int? randInt() {
  var rng = Random();
  var rand = rng.nextInt(16);
  return rand;
}

// ? IDK I copied it From the internet
// * https://www.kindacode.com/article/flutter-dart-ways-to-generate-random-strings/    https://www.lct.org/media/filer_public/bf/fd/bffd2e36-3b83-48df-8ddc-ec494d8477ff/powerstripseatingchart.jpg
String randChar() {
  final _random = Random();
  const _availableChars = 'abcdefg';
  final randomString = List.generate(1,
          (index) => _availableChars[_random.nextInt(_availableChars.length)])
      .join();

  return randomString;
}

Ticket ticketFieldInput() {
  //! Make a gobal list for the movies

  dynamic movie;
  var seat = seatGenerator();
  DateTime _now = DateTime.now();
  String dateTime =
      ('Hour: ${_now.hour + 1} Minute: ${_now.minute}').toString();
  dynamic price = randInt();

  // random int generator trying to make it a double
  var ticketId = ticketIdGen();
  // get make a global movie list
  movieListPrint();
  print(" Please enter the Movie you would like to watch \n ");

//! if 1 == 1
//! movie = 1
  int index = int.parse(stdin.readLineSync() ?? '0');
  movie = movieListTemp[index - 1];

  print(
      "Movie ${movie.getName} ,Seat Number: $seat ,Time: $dateTime , $price , $ticketId");
  ticketList.add(ticketId);

  return Ticket(
      movie, seatGenerator(), movie.getDuration, dateTime, price, ticketId);
}

String ticketIdGen() {
  late String ticketId;
  //late String temp;

  for (var i = 0; i < 3; i++) {
    ticketId = randChar() + randInt().toString();
  }
  return ticketId;
}

Movie movieFieldInput() {
  var name;
  var duration;
  var genre;
  var rating;
  var mppa;
  var director;
  var cast;
  var description;

  print(" Please enter the Name of the movie\n");
  name = stdin.readLineSync();

  print(" Please enter the Duration of the movie\n");
  duration = stdin.readLineSync();

  print(" Please enter the Genre of the movie\n");
  genre = stdin.readLineSync();

  print(" Please enter the Rating of the movie\n");
  rating = stdin.readLineSync();

  print(" Please enter the MPAA of the movie\n");
  mppa = stdin.readLineSync();

  print(" Please enter the Director of the movie\n");
  director = stdin.readLineSync();

  print(" Please enter the Cast of the movie\n");
  cast = stdin.readLineSync();

  print(" Please enter the Description of the movie\n");
  description = stdin.readLineSync();

  print("Do you wish to add this movie? " +
      name +
      ' ' +
      duration +
      ' ' +
      genre +
      ' ' +
      rating +
      ' ' +
      mppa +
      ' ' +
      director +
      ' ' +
      cast +
      ' ' +
      description +
      " if yes press 'y' or '1' else press anything else ");

  var input0 = stdin.readLineSync();

  return Movie(
      name, duration, genre, rating, mppa, director, cast, description);
}

String seatGenerator() {
  var seat = randInt().toString() + randChar();
  return seat;
}

void movieListPrint() {
  for (var i = 1; i <= movieListTemp.length; i++) {
    print(i.toString() + ". " + (movieListTemp[i - 1]?.getName).toString());
  }
}

dynamic updateMovie() {
  var x;
  // Update using Global Movie lIst
  do {
    var newValue;
    // Movie? newMovieValues;
    print('what would you like to update?');
    print(
        '1:-Name \n 2:-Duration \n 3:-Genre \n 4:-Rating \n 5:-MPPA \n 6:-Director \n 7:-Cast \n 8:-Description \n 0:-Exit');

    print("Would you like to update again? press 1");
    x = stdin.readLineSync() ?? "0";
  } while (x != '0');
}
