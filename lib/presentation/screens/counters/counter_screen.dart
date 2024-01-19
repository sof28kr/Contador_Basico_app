import 'package:flutter/material.dart';
// con impm , se aotocompleta a importM

// con stles ya se cra lo de abajo

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      // tambien con ctrl+. se puede poner el const en todo el documento
      // body: Center(child: Text('Counter Screen')),
      body: Center(
        // se puede remover y envoolver en un gidget con el ctrl+.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // este comando funciona como el flebox
          children: [
            Text('$clickCounter',
              style: TextStyle(
                fontSize: 160, fontWeight: FontWeight.w100),),
            // stylos como el java script
            
            //opcion uno para variar por situacion
            
            //Text(
              //'Click${clickCounter==1?'':'s'}',
              //style: const TextStyle(
               // fontSize: 25,
              //),
            //)
            //condicional para poner clicks o click

            if(clickCounter == 1)
              const Text('Click',  style: const TextStyle( fontSize: 25)),
            if(clickCounter != 1)
              const Text('Clicks',  style: const TextStyle( fontSize: 25)),  

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // o podria ser : clickCounter += 1;
          // incluso podria ser clickCounter ++;
          // es el incremento con cada click
          setState(() {
            clickCounter = clickCounter + 1;
          });
        },
        child: const Icon(Icons.plus_one),
        // const porr que el icono no va cambiar
      ),
    );
  }
}
