void main() async{
  
  print('Inicio!!!');
  try{
  final value = await httpGet('Https://algo.com');
  print('Exito: $value');
  } on Exception catch(err){ //Se ejecuta cuando sucede una exception
    print('Se genero una exception: $err');
  }catch(err){ //Solo se ejecuta si no entra en (on)
    print('Houston: $err');
  }finally{//Se ejecuta pase lo que pase
    print('Termino el try - catch');
  }
  
  print('Final!!');
}
//uso de async: indica que se retornara un Future
Future<String> httpGet(String url) async{
    
  //await: espero a que se ejecute el codigo
    await Future.delayed(const Duration(seconds: 1));
  
    throw Exception('Paila todo fallo');
    
    //throw "Error en la petición";
    //return 'Respuesta desde HTTP';

}