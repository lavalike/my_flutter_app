import 'package:flutter/material.dart';

class ComponentPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ComponentPageState();
}

class ComponentPageState extends State<ComponentPage> {
  String dropdownValue = "One";

  bool isRadioSelected;

  bool isCheckboxChecked = false;

  String checkBoxTip = "请选择";

  bool isSwitchOn = false;

  double currentSliderValue = 0.3;

  bool isExpansionPanel1Expanded = false;

  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Component"),
        leading: new IconButton(
            icon: new Icon(Icons.backspace),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: new ListView(
        children: <Widget>[
          buildDropdown(),
          buildRadio(),
          buildCheckBox(),
          buildSwitch(),
          buildSlider(),
          buildTimePicker(),
          buildDialog(),
          buildExpansionPanel(),
          buildChip(),
          buildTooltip(),
          buildDataTable(),
          buildStepper(),
        ],
      ),
    );
  }

  Widget buildDropdown() {
    return new Row(
      children: <Widget>[
        new DropdownButton(
          hint: new Text("Hint"),
          value: dropdownValue,
          items: <String>["One", "Two", "Three", "Four"].map((String value) {
            return new DropdownMenuItem(
              value: value,
              child: new Text(value),
            );
          }).toList(),
          onChanged: (String value) {
            setState(() {
              dropdownValue = value;
            });
          },
        ),
      ],
    );
  }

  Widget buildRadio() {
    return new Row(
      children: <Widget>[
        new Radio(
            value: false,
            groupValue: isRadioSelected,
            onChanged: (value) {
              setState(() {
                isRadioSelected = value;
              });
            }),
      ],
    );
  }

  Widget buildCheckBox() {
    return new Row(
      children: <Widget>[
        new Checkbox(
            tristate: true,
            value: isCheckboxChecked,
            onChanged: (bool value) {
              setState(() {
                isCheckboxChecked = value;
                checkBoxTip = "Current value is $isCheckboxChecked";
              });
            }),
        new Text(checkBoxTip),
      ],
    );
  }

  Widget buildSwitch() {
    return new Row(
      children: <Widget>[
        new Switch(
            value: isSwitchOn,
            onChanged: (value) {
              setState(() {
                isSwitchOn = value;
              });
            }),
        new Text("$isSwitchOn"),
      ],
    );
  }

  Widget buildSlider() {
    return new Padding(
      padding: new EdgeInsets.only(left: 10.0, right: 10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Slider(
                  activeColor: Colors.red,
                  inactiveColor: Colors.teal,
                  value: currentSliderValue,
                  onChanged: (value) {
                    setState(() {
                      currentSliderValue = value;
                    });
                  })),
          new Text("${(currentSliderValue * 100).toStringAsFixed(0)}%"),
        ],
      ),
    );
  }

  Widget buildTimePicker() {
    return new Row(
      children: <Widget>[
        new MaterialButton(
          onPressed: () {
            showTimePicker(context: context, initialTime: new TimeOfDay.now());
          },
          child: new Column(
            children: <Widget>[
              new Icon(Icons.timer),
              new Text(
                "Time Picker",
                style: new TextStyle(fontSize: 10.0),
              ),
            ],
          ),
        ),
        new MaterialButton(
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now(),
              initialDatePickerMode: DatePickerMode.day,
            );
          },
          child: new Column(
            children: <Widget>[
              new Icon(Icons.calendar_today),
              new Text(
                "Date Picker(未完)",
                style: new TextStyle(fontSize: 10.0),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildDialog() {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new MaterialButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return new SimpleDialog(
                    title: new Text("SimpleDialog"),
                    children: <Widget>[
                      new SimpleDialogOption(
                        onPressed: () {
                          Navigator.pop(context);
                          Scaffold.of(context).showSnackBar(new SnackBar(
                              content: new Text("You clicked CANCEL")));
                        },
                        child: new Text("CANCEL"),
                      ),
                      new SimpleDialogOption(
                        onPressed: () {
                          Navigator.pop(context);
                          Scaffold.of(context).showSnackBar(new SnackBar(
                              content: new Text("You clicked OK")));
                        },
                        child: new Text("OK"),
                      ),
                    ],
                  );
                });
          },
          child: new Text("SimpleDialog"),
        ),
        new MaterialButton(
          onPressed: () {
            showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) {
                  return new AlertDialog(
                    title: new Text("Title"),
                    content: new Text("AlertDialog"),
                    actions: <Widget>[
                      new FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: new Text("CONFIRM")),
                    ],
                  );
                });
          },
          child: new Text("AlertDialog"),
        ),
        new MaterialButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return new Container(
                    height: 250.0,
                    child: new Padding(
                      padding: new EdgeInsets.all(30.0),
                      child: new Text(
                        "BottomSheet",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                });
          },
          child: new Text("BottomSheet"),
        ),
      ],
    );
  }

  Widget buildExpansionPanel() {
    return new Padding(
      padding: new EdgeInsets.all(10.0),
      child: new ExpansionPanelList(
        children: <ExpansionPanel>[
          new ExpansionPanel(
            isExpanded: isExpansionPanel1Expanded,
            headerBuilder: (context, isExpanded) {
              return new InkWell(
                onTap: () {
                  setState(() {
                    isExpansionPanel1Expanded = !isExpanded;
                  });
                },
                child: new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.all(10.0),
                      child: new Icon(
                        Icons.code,
                        color: Colors.blue,
                      ),
                    ),
                    new Text("ExpansionPanel",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0)),
                  ],
                ),
              );
            },
            body: new Padding(
              padding: new EdgeInsets.all(20.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("body",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                  new Container(
                    margin: new EdgeInsets.only(top: 5.0),
                    child: new Text(
                        "The body of the expansion panel that's displayed below the header."),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(top: 10.0),
                    child: new Text("headerBuilder",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0)),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(top: 5.0),
                    child: new Text(
                        "The widget builder that builds the expansion panels' header."),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(top: 10.0),
                    child: new Text("isExpanded",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0)),
                  ),
                  new Container(
                    margin: new EdgeInsets.only(top: 5.0),
                    child: new Text("Whether the panel is expanded."),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildChip() {
    return new Padding(
      padding: new EdgeInsets.all(10.0),
      child: new Chip(
        avatar: new CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: new Text(
            "GIT",
            style: new TextStyle(fontSize: 12.0, color: Colors.white),
          ),
        ),
        label: new Text(
          "https://github.com/lavalike",
          style:
              new TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget buildTooltip() {
    return new MaterialButton(
      onPressed: () {},
      child: new Text("长按显示Tooltip"),
    );
  }

  Widget buildDataTable() {
    return new DataTable(
      sortColumnIndex: 0,
      columns: [
        new DataColumn(label: new Text("Column1")),
        new DataColumn(label: new Text("Column2")),
        new DataColumn(label: new Text("Column3")),
      ],
      rows: [
        new DataRow(cells: [
          new DataCell(new Text("Row1-1")),
          new DataCell(new Text("Row1-2")),
          new DataCell(new Text("Row1-3")),
        ]),
        new DataRow(cells: [
          new DataCell(new Text("Row2-1")),
          new DataCell(new Text("Row2-2")),
          new DataCell(new Text("Row2-3")),
        ]),
        new DataRow(cells: [
          new DataCell(new Text("Row3-1")),
          new DataCell(new Text("Row3-2")),
          new DataCell(new Text("Row3-3")),
        ]),
        new DataRow(cells: [
          new DataCell(new Text("Row4-1")),
          new DataCell(new Text("Row4-2")),
          new DataCell(new Text("Row4-3")),
        ]),
        new DataRow(cells: [
          new DataCell(new Text("Row5-1")),
          new DataCell(new Text("Row5-2")),
          new DataCell(new Text("Row5-3")),
        ]),
      ],
    );
  }

  Widget buildStepper() {
    return new Stepper(
      currentStep: currentStep,
      type: StepperType.vertical,
      onStepTapped: (index) {
        setState(() {
          currentStep = index;
        });
      },
      steps: [
        new Step(
          title: new Text("Step One"),
          content: new Text("一个Material Design 步骤指示器，显示一系列步骤的过程"),
        ),
        new Step(
          title: new Text("Step Two"),
          content: new Text("一个Material Design 步骤指示器，显示一系列步骤的过程"),
        ),
      ],
    );
  }
}
