import 'package:flutter/material.dart';

//excercise 2
//2.1
class InputControlsDemo extends StatefulWidget {
  const InputControlsDemo({super.key});

  @override
  State<InputControlsDemo> createState() => InputControlsDemoState();
}

class InputControlsDemoState extends State<InputControlsDemo> {
  double rating = 50;
  bool isActive = false;
  String? genre;
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Excercise 2 - Input Widgets")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //slider
          Text(
            "Rating (Slider)",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Slider(
            value: rating,
            min: 0,
            max: 100,
            divisions: 100,
            onChanged: (value) {
              setState(() {
                rating = value;
              });
            },
          ),
          Text(
            'Curent value: ${rating.round()}',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          //Switch
          Text(
            "Active (Switch)",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SwitchListTile(
            title: Text("Is movie active?"),
            value: isActive,
            onChanged: (value) {
              setState(() {
                isActive = value;
              });
            },
          ),
          const SizedBox(height: 20),
          //Radio button
          Text(
            "Genre (RadioListTitte)",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          //radio 1
          RadioListTile<String>(
            title: Text('Action'),
            value: 'Action',
            groupValue: genre,
            onChanged: (value) {
              setState(() {
                genre = value;
              });
            },
          ),
          //radio 2
          RadioListTile<String>(
            title: Text('Comedy'),
            value: 'Comedy',
            groupValue: genre,
            onChanged: (value) {
              setState(() {
                genre = value;
              });
            },
          ),
          Text('Selected genre: ${genre}', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 20),
          //Datepicker
          ElevatedButton(
            onPressed: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2050),
              );
              if (date != null) {
                setState(() {
                  selectedDate = date;
                });
              }
            },
            child: Text('Open Date Picker'),
          ),
          Text(
            selectedDate == null
                ? 'Invalid date'
                : 'Selected date : ${selectedDate!.toLocal().toString()}',
          ),
        ],
      ),
    );
  }
}
