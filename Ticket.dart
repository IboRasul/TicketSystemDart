import 'Movie.dart';
import 'Seat.dart';

class Ticket {
  Movie? _movie;
  //? Seat? _seat;
  String? _seat;
  String? _duration;
  String? _dateTime;
  int? _price;
  String? _ticketId;
/*
  Ticket(Movie movie, Seat seat, String duration, String dateTime, double price,
      String ticketID) {
    this._movie = movie;
    this._seat = seat;
    this._duration = duration;
    this._dateTime = dateTime;
    this._price = price;
    this._ticketId = ticketID;
  }*/
  Ticket(Movie movie, String seat, String duration, String dateTime, int price,
      String ticketID) {
    this._movie = movie;
    this._seat = seat;
    this._duration = duration;
    this._dateTime = dateTime;
    this._price = price;
    this._ticketId = ticketID;
  }
  Ticket.empty();

  set setMovie(Movie movie) => this._movie = movie;
  set setSeat(String seat) => this._seat = seat;
  set setDuration(String duration) => this._duration = duration;
  set setDateTime(String dateTime) => this._dateTime = dateTime;
  set setPrice(int price) => this._price = price;
  set setTicketID(String ticketID) => this._ticketId = ticketID;

  Movie? get getMovie => this._movie;
  //Seat? get getSeat => this._seat;
  String? get getSeat => this._seat;
  String? get getDuration => this._duration;
  String? get getDateTime => this._dateTime;
  int? get getPrice => this._price;
  String? get getTicketID => this._ticketId;


  void showTicketInfo() {
    print(
        "Info about Ticket: \n TicketId: ${this._ticketId} \n Movie: ${this._movie?.getName} \n Duration: ${this.getDuration} minutes\n Time: ${this._dateTime} \n Price: ${this._price}\$ \n Seat: ${this._seat} ");
  }


  //  String toString() {
  //     return "Laptop [getClass()=" + getClass() + ", hashCode()="
  //             + hashCode() + ", toString()=" + super.toString() + "]";
  // }

}
