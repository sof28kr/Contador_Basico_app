import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counters/counter_functions_screens.dart';
import 'package:hello_world_app/presentation/screens/counters/counter_screen.dart';
// widget importado

void main() {
  runApp(MyApp());
  // cuerpo main
}

// colocando cursos sobre My app y mas un ctrl+. , seleccionamos el overrride y se crea el constructor
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // constructor para el key
// el key al que se hace referncia es una identificacion de del widget dentro del arbol de widgets  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // ctrl + espacio para ver las propiedades
      debugShowCheckedModeBanner: false,
      // quita el letrerito de debug
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed:Colors.purple,
        // crea una paletta basada en ese color como tema
      ) ,
      // el const le dice a la aplicacion que esto no va cambiar , es un elemento estatico
      home: const CounterFunctionScreen()
      
      //home: Center(child: Text('Hola Mundo'))
      // control+. -> wraph with center 
      // esto hace que centre su hijo 
      // se usa para colocar un texto en la pantalla
    );
  }

}

