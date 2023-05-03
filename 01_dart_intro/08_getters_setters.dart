void main(){
  
  final cuadrado = Area(lado: 10);
  
  
  print('Área: ${ cuadrado.area}');
  
  
}

class Area{

  //double lado; //lado * lado
  
  //propiedad privada usando el guión bajo (_)
  double _lado; //lado * lado
  
  
//  Area({required double lado})
//    : _lado = lado;
  //uso de assert para validar 
  Area({required double lado})
    : assert(lado > 0, 'El lado debe ser mayor que cero'),
    _lado = lado;    
  
  //getter para retornar valores
  double get area {
    return _lado * _lado;
  }
  
  //setter sirve para asignar valores dentro de la clase
  set side(double value){
    print('Asginando nuevo valor: $value');
    //valida que el valor sea mayor a cero o retorna un error
    if(value < 0 ) throw 'Valor debe ser mayor que cero';
    
    _lado = value;
    
  }
  
  
  double calcularArea() {
    return _lado * _lado;
  }
}
