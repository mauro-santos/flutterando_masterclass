void main(List<String> args) {
  var person = Person();

  print(person.name);
  changeName(person);
  print(person.name);
}

changeName(Person person) {
  person.name = 'M';
}

class Person {
  String name = 'Mauro';
  String lastName = 'Santos';

  String getFullname() {
    return '$name $lastName';
  }
}
