import 'package:flutter/material.dart';

class InputWitget extends StatelessWidget {
  const InputWitget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          key: const Key('dniInput'),
          decoration: InputDecoration(label: Text('Cédula')),
        ),
        IconButton(onPressed: (){

        }, icon: Icon(Icons.add))
        
      ],
    );
  }
}
