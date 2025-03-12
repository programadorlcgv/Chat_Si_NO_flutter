import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide( color: colors.secondary),
      borderRadius: BorderRadius.circular(20),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          Text("Valor de la caja de texto");
        }, 
        icon: Icon(Icons.send_outlined)
      ),
    );

    return TextFormField(
      decoration:  inputDecoration,
      onFieldSubmitted: (value) {
        print("Enviar valor $value");
      },
      onChanged: (value) {
        print("Cambio: $value");
      },

    );
  }
}