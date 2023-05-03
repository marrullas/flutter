void main() {
  
  //var myName =  'Magola'; //Variable de cualquier tipo
  // final myName; //Variable que no se puede modificar su valor
  // late final myName; //Variable que solo puede modificarse una vez
  String myName = 'Magola'; //Variable de tipo String y no acepta otros valores
  print(myName); //Imprime variable
  print('Hola $myName'); //concatena el texto con la variable
  print('Hola ${myName.toUpperCase()}'); // se usan las llaves para poder contanar
  print('Hola  ${1 + 1}' ); //otro uso de las llaves 
}