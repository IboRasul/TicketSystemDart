class Movie {
  String? _name; // todo complete
  String? _duration; // todo complete
  String? _genre; // todo complete
  String? _rating; // todo complete
  String? _mpaa; // todo complete

  String? _director; // todo complete
  String? _cast; // todo complete
  String? _description; // todo complete

  String? get getName => this._name;

  set setName(String name) => this._name = name;

  void playMovie() {
    print("Movie is playing");
  }

  //void setName(String name) => this._name = name;
}
