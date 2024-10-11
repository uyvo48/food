class Product {
  String _name;
  String _image;
  int _price;
  String _description;
  int _count = 0;

  Product(this._image, this._name, this._price, this._description, this._count);

  int get count => _count;

  set count(int value) {
    _count = value;
  }

  int get price => _price;

  set price(int value) {
    _price = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }
}
