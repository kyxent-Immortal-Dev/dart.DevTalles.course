main() {

  int a;
  final double b = 10;
  const double c = 10;

  final double z;


  late final double x;
  x = 10;

  print( x );



  
  // Late te permitirá incializarla después
  z = 20;

  // print( 'Resultado: $z');

  // a = 20;
  // b = 20;
  // c = 20;

  // final personasFinal = ['Juan', 'Pedro', 'maria'];
  // const personasConst = ['Juan', 'Pedro', 'maria'];

  final List<String> personasFinal = ['Juan', 'Pedro', 'maria'];
  List<String> personasConst = const['Juan', 'Pedro', 'maria'];

  // personasFinal.add('Maria');
  // personasConst.add('Maria');

  // personasFinal = [];
  

  // print(personasConst);
}