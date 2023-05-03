void main() {
  
  //final Hero wolverine = Hero('Logal', 'Enojo'); //llamado a funcion sin nombres
  final Hero wolverine = Hero(name:'Logal', power:'Enojo'); //llamado funcion con nombres
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  
  String name;
  String power;
  
  //Hero( this.name, this.power); //inicialización corta
  
  //Inicializacion larga
  //Hero( String pName, String pPower)
  //  : name = pName,
  //    power = pPower;
  
  Hero({
    required this.name,
    this.power = 'Flatulencias'
  });
  
  //sobre escribir metodos
  @override
  String toString(){
    return '$name - $power';
  }
  
  
  
}