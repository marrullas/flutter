void main() {
  
  print( saludaTodos() );
  print('Suma: ${sumarDosNumeros(10, 20)}');
  print('Suma Landa: ${sumarDosNumeros(10, 30)}');
  
  print('El saludo: ${greetPerson(name: "magola",message:"Hello")}');
}
//funcion normal
String saludaTodos(){
  return 'Hola Magolos';  
}
//funcion de flecha, solo permite retornar directamente
String saludaTodos2() => 'Hola Magolos';  
//funcion normal
int sumarDosNumeros( int a, int b) {
  return a + b;
  
}
//funcion de flecha
int sumarDosNumeros2( int a, int b) => a + b;

//funcion normal con valores obligatorias y opcionales
//[int? b] valor opcional sin valor por defecto
//[int b = 0] valor opcional con valor por defecto
int sumarDosNumerosOptional( int a, [int b = 0]) {
  return a + b;
  
}

//funciones con valores x nombre

String greetPerson({required String name, String message = 'Hola, '}){
  
  return '$message $name';
  
}
  
  
  