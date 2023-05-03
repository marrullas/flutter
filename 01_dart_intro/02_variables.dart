void main() {
  
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final abilities = ['impostor', 'real']; //lista
  final sprites = <String>['Impostor', 'real']; //otra forma equivalente de lista
  
  // dynamic == null //es nulo por defecto
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4];
  errorMessage = {1,2,3,4};
  errorMessage = () => true;
  errorMessage = null;
  
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);
  
}