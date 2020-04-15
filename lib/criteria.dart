import 'package:flutter/material.dart';

class Criterias extends StatefulWidget {
  CriteriaState createState() => new CriteriaState();
}

class NewItem {
  bool isExpanded;
  final String header;
  final Widget body;
  final Icon iconpic;
  NewItem(this.isExpanded, this.header, this.body, this.iconpic);
}

double discretevalue = 2.0;
double hospitaldiscretevalue = 25.0;

class CriteriaState extends State<Criterias> {
  List<NewItem> items = <NewItem>[
    new NewItem(
      false,
      'Schools',
      new Padding(
        padding: new EdgeInsets.all(20.0),
        child: new Column(
          children: <Widget>[
            Text('data'),
            Text('data'),
            Text('data'),
            Radio(value: null, groupValue: null, onChanged: null)  //put the children here
          ]
        )
      ),
      new Icon(Icons.add)
    ),
  ];

  ListView List_Criteria;
  Widget build(BuildContext context) {
    List_Criteria = new ListView(
      children: [
        new Padding(
          padding: new EdgeInsets.all(10.0),
          child: new ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                items[index].isExpanded = !items[index].isExpanded;
              });
            },
            children: items.map((NewItem item) {
              return new ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return new ListTile(
                      leading: item.iconpic,
                      title: new Text(
                        item.header,
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ));
                },
                isExpanded: item.isExpanded,
                body: item.body,
              );
            }).toList(),
          ),
        )
      ],
    );

    Scaffold scaffold = new Scaffold(
      appBar: new AppBar(
        title: new Text("Criteria Selection"),
      ),
      body: List_Criteria,
      persistentFooterButtons: <Widget>[
        new ButtonBar(children: <Widget>[
          new FlatButton(
            color: Colors.blue,
            onPressed: null,
            child: new Text(
              'Apply',
              textAlign: TextAlign.left,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ])
      ],
    );
    return scaffold;
  }
}