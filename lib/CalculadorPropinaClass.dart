import 'package:flutter/material.dart';

class CalculadorPropina extends StatelessWidget {
  double cuentaTotal = 0.0;
  double porcentajePropina = 0.0;

  @override
  Widget build(BuildContext context) {
    //Input de la cuenta total
    TextField txtCuentaTotal = new TextField(
        decoration: InputDecoration(labelText: "Monto de la cuenta"),
        keyboardType: TextInputType.number,
        onChanged: (text) {
          try {
            cuentaTotal = double.parse(text);
          } catch (exception) {
            cuentaTotal = 0.0;
          }
        });

    //Input del procentaje de propina
    TextField txtPorcentajePropina = new TextField(
      decoration: InputDecoration(labelText: "Propina %", hintText: "15"),
      keyboardType: TextInputType.number,
      onChanged: (value) {
        try {
          porcentajePropina = double.parse(value);
        } catch (exception) {
          porcentajePropina = 0.0;
        }
      },
    );

    //Botón
    RaisedButton btnCalcular = new RaisedButton(
        child: new Text("Calcular!"),
        onPressed: () {
          double propinaFinal = cuentaTotal * porcentajePropina / 100.00;
          double total = cuentaTotal + propinaFinal;

          AlertDialog dialog = new AlertDialog(
              content: new Text("Propina: " +
                  propinaFinal.toString() +
                  "soles \n Total: " +
                  total.toString() +
                  " soles"));

          //Mostrar el dialogo

          showDialog(context: context, child: dialog);
        });

    AppBar appBar = new AppBar(title: new Text("Calculadora de propina"));

    Container container = new Container(
      padding: const EdgeInsets.all(16.0),
      child: new Column(
          children: [txtCuentaTotal, txtPorcentajePropina, btnCalcular]),
    );

    Scaffold scaffold = new Scaffold(
      appBar: appBar,
      body: container,
    );

    return scaffold;
  }
}
