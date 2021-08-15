class BookRoutePath {
  final int id;
  final bool isUnknown;

  BookRoutePath.home()
      : id = -1,
        isUnknown = false;

  BookRoutePath.details(this.id) : isUnknown = false;

  BookRoutePath.unknown()
      : id = -1,
        isUnknown = true;

  bool get isHomePage => id == -1;

  bool get isDetailsPage => id != -1;
}
