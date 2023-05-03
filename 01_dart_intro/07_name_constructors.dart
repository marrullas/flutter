void main() {
  
  final Map<String, dynamic> rawJson = {
    'name': 'Tony',
    'power': 'Inteligencia',
    'isAlive': true
  };
  //carga desde json con la funcion fromJson
  final ironman = Hero.fromJson(rawJson);
  //carga directa con parametros
  //final ironman = Hero(isAlive: false, power: 'Money', name: 'Tony');

  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'Sin nombre',
        power = json['power'] ?? 'Sin nombre',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '$name - $power - ${isAlive ? 'YES!' : ';)'}';
  }
}
