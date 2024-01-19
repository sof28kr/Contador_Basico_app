import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Function'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                'Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
        ),

        // usamos columna cuando se necesita widgets dentro de widgets
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          // primer boton
          //FloatingActionButton(
          //shape: const StadiumBorder(),
          // cambia la forma del boton
          //onPressed: () {
          //setState(() {
          //clickCounter = clickCounter + 1;
          //});
          //},
          //child: const Icon(Icons.plus_one),
          //),
          const SizedBox(height: 10),
          CustomButon(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter = clickCounter + 1;
              });
            },
          ),

          const SizedBox(height: 10),
          // espacio para separar los botones
          // segundo boton
          CustomButon(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              setState(() {
                if (clickCounter == 0) return;
                // si el contador va en cero  que no muestre negativos
                clickCounter = clickCounter - 1;
              });
            },
          ),

          const SizedBox(height: 10),
          // se pueden crear widgets personalizados con ctrl+. extraer widget, no olvidar poner nombre
          CustomButon(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
        ]));
  }
}

class CustomButon extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButon({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,// sonidito al apretar
      elevation: 10, // la sombra de los botones
      shape: const StadiumBorder(),
      // backgroundColor: Colors.yellow,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}


            


