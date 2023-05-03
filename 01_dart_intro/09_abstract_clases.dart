void main() {
  
  final windPlant = WindPlant(initialEnergy: 500);
  final nuclearPlant = NuclearPlant(energyLeft: 1999);
  
  print(windPlant);
  
  print('wind: ${chargePhone ( windPlant)}');
  print('nuclear: ${chargePhone ( nuclearPlant)}');
}


//ejemplo de implementación de clases que extiendde de una abstracta

double chargePhone ( EnergyPlant plant) {
  if(plant.energyLeft < 10){
    throw Exception('No hay energia suficiente');
  }
  
  return plant.energyLeft - 10;
}

enum PlantType {nuclear, wind, water}

abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type;
  
  EnergyPlant({required this.energyLeft, required this.type});
  
  void consumeEnergy ( double amount );
}

//extends: extender o heredar
class WindPlant extends EnergyPlant {
  
  WindPlant({required double initialEnergy})
    :super(energyLeft: initialEnergy, type: PlantType.wind)
    ;
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
  
  @override
  toString(){
    return '$energyLeft - ${type}';
  }
}

//implementar: hacer implementaciones custom
class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});
  
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= (amount * 0.5); //
  }
  
  
   @override
  toString(){
    return '$energyLeft - $type';
  }

}
