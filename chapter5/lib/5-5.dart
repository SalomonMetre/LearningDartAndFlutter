// Adding a class interface

abstract class Media {
  late String myId;
  late String myTitle;
  late String myType;

  void setMediaTitle(String mediaTitle);
  String getMediaTitle();

  void setMediaType(String mediaType);
  String getMediaType();

  void setMediaId(String mediaId);
  String getMediaId();
}

class Book implements Media {
  @override
  late String myId;

  @override
  late String myTitle;

  @override
  late String myType;

  @override
  void setMediaTitle(String mediaTitle) {
    myTitle = mediaTitle;
  }

  @override
  String getMediaTitle() => myTitle;

  @override
  void setMediaType(String mediaType) {
    myType = mediaType;
  }

  @override
  String getMediaType() => myType;

  @override
  void setMediaId(String mediaId) {
    myId = mediaId;
  }

  @override
  String getMediaId() => myId;
}

void main(List<String> args) {
  final Book myBook = Book();
  myBook.setMediaTitle("Serverless Computing with Google Cloud");
  myBook.setMediaType("Book");
  myBook.setMediaId("ISBN-1111");
  print(myBook.getMediaTitle());
  print(myBook.getMediaType());
  print(myBook.getMediaId());
}
