import 'package:flutter/material.dart';
class TimePickingExample extends StatefulWidget{
  const TimePickingExample({super.key});
  @override
  State<TimePickingExample> createState()=> _TimePickingExampleState();
}

class _TimePickingExampleState extends State<TimePickingExample>{
 late TimeOfDay selectedTime = TimeOfDay.now();
 
 Future<void> _selectedTime(BuildContext context) async {
  final TimeOfDay? picked= await showTimePicker(
    context: context,
     initialTime: selectedTime);
     if(picked != null && picked != selectedTime){
      setState(() {
        selectedTime=picked;
      });
     }
 }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Picker Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selected time:${selectedTime.format(context)}"),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () => _selectedTime(context),
             child: const Text('Selected Time'),)
          ],
        ),
      ),
    );
  }
}