void main() {
  
  final Map<String, dynamic> pokemon = { //esto es un mapa
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': { //esto tambie es un mapa
      1: 'elditto',
      2: 'elttrito'
    }
    
  };
  
  print(pokemon);
  print('Name: ${( pokemon['name'] )}');
  print('Name: ${( pokemon['sprites'] )}');
  
  print('Back: ${( pokemon['sprites'][1] )}');
  print('Front: ${( pokemon['sprites'][2] )}');
  
}