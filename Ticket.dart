import 'Movie.dart';
import 'Seat.dart';

class Ticket {
  Movie? _movie;
  Seat? _seat;
  String? _duration;
  String? _dateTime;
  double? _price;
  String? _ticketId;

  Ticket(Movie movie, Seat seat, String duration, String dateTime, double price,
      String ticketID) {
    this._movie = movie;
    this._seat = seat;
    this._duration = duration;
    this._dateTime = dateTime;
    this._price = price;
    this._ticketId = ticketID;
  }

  set setMovie(Movie movie) => this._movie = movie;
  set setSeat(Seat seat) => this._seat = seat;
  set setDuration(String duration) => this._duration = duration;
  set setDateTime(String dateTime) => this._dateTime = dateTime;
  set setPrice(double price) => this._price = price;
  set setTicketID(String ticketID) => this._ticketId = ticketID;

  

  Movie? get getMovie => this._movie;
  Seat? get getSeat => this._seat;
  String? get getDuration => this._duration;
  String? get getDateTime => this._dateTime;
  double? get getPrice => this._price;
  String? get getTicketID => this._ticketId;

}
