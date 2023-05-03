import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  //propiedad que permite reutilizar el widget de field box en otros lugares
  // solo hay que enviar el valor de la propiedad onValue
  final ValueChanged<String> onValue;

  const MessageFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;

    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outLineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(20),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outLineInputBorder,
      focusedBorder: outLineInputBorder,
      filled: true,
      //fillColor: colors.secondary,
      hintText: 'Escribe un mensaje',
      border: InputBorder.none,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          final textValue = textController.text;
          textController.clear();
          onValue(textValue);
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        print('onTapOutside');
        focusNode.unfocus();
      },
      focusNode: focusNode, //contra el foco en el campo de texto
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus(); //deja el foco en el campo de texto
        onValue(value);
      },
    );
  }
}
