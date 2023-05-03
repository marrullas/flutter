void main() { 

  //iterable son un tipo de dato que cuando se imprime se ven los
  //los parentesis: Reversed: (10, 9, 9, 7,8, 6, 5, 5, 5, 4, 3, 2, 1)
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('Lista original $numbers');
  print('tamaño ${numbers.length}');
  print('Index 0: ${numbers}');
  print('Primero: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');
  
  final reversedNumbers = numbers.reversed;
  
  print('Iterable: $reversedNumbers');
  print('Lista: ${numbers.toList()}');
  print('Set: ${numbers.toSet()}'); //los set solo contienen valores unicos

  final numbersGreaterThan5 = numbers.where( (int num) {
    return num > 5;
  });
  
  print('>5: $numbersGreaterThan5');
  print('>5 set: ${numbersGreaterThan5.toSet()}');
  
}