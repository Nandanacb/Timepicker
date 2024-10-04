import 'package:flutter/material.dart';

class  Switchexample extends StatefulWidget{
  const Switchexample({super.key});

  @override
  State<Switchexample> createState()=> _SwitchexampleState();
}

class _SwitchexampleState extends State<Switchexample>{
  bool _SwitchValue= false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_SwitchValue ? 'switch is on ': 'Switch is off',
            style: const TextStyle(fontSize: 18),),
            const SizedBox(
              height: 20,
            ),
            Switch(value: _SwitchValue, onChanged: (bool newValue){
              setState(() {
                _SwitchValue =newValue;
              });
            })
          ],
        ),
      ),
    );
  }
}