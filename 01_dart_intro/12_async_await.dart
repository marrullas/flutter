void main() async{
  
  print('Inicio!!!');
  try{
  final value = await httpGet('Https://algo.com');
  print(value);
  }catch(err){
    print('Houston: $err');
  }
  
  print('Final!!');
}
//uso de async: indica que se retornara un Future
Future<String> httpGet(String url) async{
    
  //await: espero a que se ejecute el codigo
    await Future.delayed(const Duration(seconds: 1));
    
    throw "Error en la petición";
    //return 'Respuesta desde HTTP';

}