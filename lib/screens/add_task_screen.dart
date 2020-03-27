import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/tasks.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}
// color: Color.fromRGBO(117, 117, 117, 1.0),

class _AddTaskScreenState extends State<AddTaskScreen> {
  String textField;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      var handleSubmit = ([value = ""]) {
        taskData.addTask(textField);
        Navigator.pop(context);
      };

      return Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.lightBlueAccent),
                  onChanged: (val) {
                    setState(() {
                      textField = val;
                    });
                  },
                  onSubmitted: handleSubmit,
                ),
              ),
              FlatButton(
                onPressed: handleSubmit,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        ),
      );
    });
  }
}
