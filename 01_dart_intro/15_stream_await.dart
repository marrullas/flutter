//async* retorna un stream de forma asincrona

void main(){
  
  emitNumbers()
    .listen((value){
      print('Strema value: $value');
    });
}

Stream<int> emitNumbers() async*{
  
  final valuesToEmit = [1,2,3,4,5,6];
  
  for (int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    yield i; //Entrega el valor
  }
  
}