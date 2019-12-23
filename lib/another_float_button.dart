import 'package:flutter/material.dart';

//Este es el código para el nuevo Widget del floatButton que va reemplazar el que
//se usa por defecto.
class AnotherFloatButton extends StatelessWidget {
  AnotherFloatButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.amber,
      splashColor: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        child: Row(
          //Se pone el texto y la imagen en una fila.
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.add,
              color: Colors.black,
              size: 50,
            ),
            SizedBox(
              //Separador entre el icono y el texto
              width: 8.0,
            ),
            Text(
              'NUEVA TAREA',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape:
          const StadiumBorder(), //Le da una apariencia al boton con las esquinas redondeadas.
    );
  }
}
