import 'package:flutter/material.dart';
import 'package:whatsup_salmi_app/chat_model.dart';

class CHAT_SCREN extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CHAT_SCRENState();
  }
}

class CHAT_SCRENState extends State<CHAT_SCREN> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: dummy.length,
        itemBuilder: (context, l) => new Column(
          children: <Widget>[
            new Divider(
              height: 10.0,
            ),
            new ListTile(
              leading: new CircleAvatar(
                foregroundColor: Theme.of(context).accentColor,
                backgroundColor: Colors.grey,
                backgroundImage: new NetworkImage(dummy[l].avatarUrl),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    dummy[l].name,
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                  new Text(
                    dummy[l].time,
                    style:
                    new TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: new Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: new Text(dummy[l].message,
                    style:
                    new TextStyle(color: Colors.grey, fontSize: 15.0)),
              ),
              onTap: () => Navigator
                  .of(context)
                  .push(new MaterialPageRoute(builder: (context) {

              })),
            )
          ],
        ));
  }
}