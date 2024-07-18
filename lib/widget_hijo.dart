import 'package:flutter/material.dart';

class WidgetHijo extends StatefulWidget {
  String texto2;
  void Function() funcionClick;
  void Function() fnModificarHermano;
  WidgetHijo(this.texto2,this.funcionClick,this.fnModificarHermano);
  @override
  State<StatefulWidget> createState() {
    return _WidgetHijo();
  }
}
class _WidgetHijo extends State<WidgetHijo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.green,
      child: Column(
        children: [
          ElevatedButton(
              onPressed:widget.funcionClick
              , child: Text("modificar texto 1")),
          ElevatedButton(
              onPressed:widget.fnModificarHermano
              , child: Text("modificar hermano")),
          Text(widget.texto2)
        ],
      ),
    );
  }

}
