class Profile {
  final String id;
  final String name;
  final String lastName;
  final int age;
  final String address;

  Profile({this.id, this.name, this.lastName, this.age, this.address});

  Profile.fromMap(Map<String, dynamic> map)
      : this.id = map['id'],
        this.name = map['name'],
        this.lastName = map['lastName'],
        this.age = map['age'],
        this.address = map['address'];

  Map<String, dynamic> toMap() => {
        'name': this.name,
        'lastName': this.lastName,
        'age': this.name,
        'address': this.address,
      };
}
