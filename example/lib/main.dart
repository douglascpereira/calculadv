import 'package:flutter/material.dart';
import 'package:calculadv/calculadv.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calcula DV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Calcula DV'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _cpfComDV = "";
  TextEditingController cpfController = new TextEditingController();

  void _calcularDV() {
    String cpf = CalculadorDV().calculaDV(cpfController.text);
    setState(() {
      _cpfComDV = cpf;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: cpfController,
                keyboardType: TextInputType.number,
                maxLength: 9,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Informe um CPF sem DV',
                ),
              ),
            ),
            Text(
              'CPF com DV: ',
            ),
            Text(
              '$_cpfComDV',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _calcularDV,
        tooltip: 'Calcular DV',
        child: Icon(Icons.calculate_outlined),
      ),
    );
  }
}
