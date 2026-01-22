import 'package:flutter/material.dart';

class InputWitget extends StatelessWidget {
  const InputWitget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(decoration: InputDecoration(label: Text('Cédula')));
  }
}
