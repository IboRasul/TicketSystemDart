//Movie Class
class Movie {
  String? _name; // todo complete
  String? _duration; // todo complete
  String? _genre; // todo complete
  String? _rating; // todo complete
  String? _mpaa; // todo complete

  String? _director; // todo complete
  String? _cast; // todo complete
  String? _description; // todo complete

  Movie(this._name, this._duration, this._genre, this._rating, this._mpaa,
      this._director, this._cast, this._description);

  Movie.empty() {}

  String? get getName => this._name;

  String? get getDuration => this._duration;
  String? get getGenre => this._genre;
  String? get getRating => this._rating;
  String? get getMpaa => this._mpaa;
  String? get getDirector => this._director;
  String? get getCast => this._cast;
  String? get getDescription => this._description;

  set setName(String name) => this._name = name;
  set setDuration(String duration) => this._duration = duration;
  set setGenre(String genre) => this._genre = genre;
  set setRating(String rating) => this._rating = rating;
  set setMpaa(String mpaa) => this._mpaa = mpaa;
  set setDirector(String director) => this._director = director;
  set setCast(String cast) => this._cast = cast;
  set setDescription(String description) => this._description = description;

  // @override
  // String toString() {
  //   // TODO: implement toString
  //   print(this._name);
  //   return super.toString();
  // }

  void playMovie() {
    print("Movie is playing");
  }

  void showMovieInfo() {
    print(
        "Info about movie: \n name: ${this._name} \n Duration: ${this._duration} minutes \n Genre: ${this._genre} \n Rating: ${this._rating} \n Mpaa: ${this._mpaa} \n Director ${this._director} \n Cast: ${this._cast} \n Description: ${this._description}");
  }
}
