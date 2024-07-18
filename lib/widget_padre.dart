import 'package:flutter/material.dart';
import 'package:flutter20270718_2/widget_hijo.dart';

class WidgetPadre extends StatefulWidget {
  String texto1;
  String textoHijo1 = "";
  String textoHijo2 = "";

  WidgetPadre(this.texto1);

  @override
  State<StatefulWidget> createState() {
    return _WidgetPadre();
  }
}

class _WidgetPadre extends State<WidgetPadre> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: ListView(
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.textoHijo1 = "se hizo click";
                });
              },
              child: Text("boton padre")),
          Text(widget.texto1),
          WidgetHijo(widget.textoHijo1, () {
            setState(() {
              widget.texto1 = "se hizo click en el hijo";
            });
          }, () {
            setState(() {
              widget.textoHijo2 = "click";
            });
          }),
          WidgetHijo(widget.textoHijo2, () {
            setState(() {
              widget.texto1 = "se hizo click en el hijo";
            });
          }, () {
            setState(() {
              widget.textoHijo1 = "click";
            });
          })
        ],
      ),
    );
  }
}
