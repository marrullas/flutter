void main(){
  
  print('Inicio!!!');
  
  httpGet('Https://algo.com').then((value){
    print(value);
  })
    .catchError((err){
      
    print('Error: $err');
    
  
  });
  
  print('Final!!');
}

Future<String> httpGet(String url){
  
  return Future.delayed(const Duration(seconds: 1), (){
    
    throw 'Error en la petición';
    
    
    //return 'Respuesta desde HTTP';
  });
}