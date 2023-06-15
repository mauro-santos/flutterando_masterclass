void main(List<String> args) {
  final Map<String, String> json = {
    'username': 'drantunes',
    'role': 'admin',
  };

  final {'username': String username} = json;
  print(username);
}
