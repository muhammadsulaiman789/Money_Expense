class Category {
  int _id;
  String _name;
  String _category;
  String _date;
  String _nominal;


  Category(this._name, this._category, this._date, this._nominal);


  Category.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._category = map['category'];
    this._date = map['date'];
    this._nominal = map['nominal'];
  }

  int get id => _id;
  String get name => _name;
  String get category => _category;
  String get date => _date;
  String get nominal => _nominal;

  // setter
  set name(String value) {
    _name = value;
  }

  set phone(String value) {
    _category = value;
  }

  set date(String value) {
    _date = value;
  }

  set nominal(String value) {
    _nominal = value;
  }


  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['category'] = category;
    map['date'] = date;
    map['nominal'] = nominal;
    return map;
  }

}