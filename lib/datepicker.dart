import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget{
  const DatePicker({super.key});

  @override

  State<DatePicker> createState()=> _DatePickerState();
}

class _DatePickerState extends State<DatePicker>{
 DateTime? selectedDate;
 Future<void> _selectedDate(BuildContext comtext) async{
  final DateTime? picked=await showDatePicker(context: context, initialDate: DateTime.now(),firstDate: DateTime(2000), lastDate: DateTime(2101));
  if(picked != null && picked !=selectedDate){
    setState(() {
      selectedDate =picked;
    });
  }
 }
  @override
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(title: 
    Text("Date Picker Example"),),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text(selectedDate != null? 'selected date:${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}': 'no date selected!',
          style: const TextStyle(fontSize: 18),),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: ()=>_selectedDate(context), child: const Text('select date')),

        ],
      ),
    ),
  );
 }
}