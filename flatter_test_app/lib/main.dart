import 'package:flutter/material.dart';
import 'package:flatter_test_app/tracker_load.dart';

void main() async {
  List<User> users = await readCandidatesFromTracker();
  TutorialHome widget = TutorialHome();
  widget.users = users;
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: widget,
  ));
}

String nonNull(Object str) {
  return str == null ? '' : str;
}

class TutorialHome extends StatelessWidget {

  List<User> users;

  @override
  Widget build(BuildContext context)  {
    List<Widget> widgets = List();
    for (User user in this.users) {
      widgets.add(
          SizedBox(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container( // grey box
                      child: Center(
                          child: Text(
                            nonNull(user.clientType),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Georgia",
                                color: Colors.white
                            ),
                          )
                      ),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                      )
                  ),
                  Container( // grey box
                      child: Center(
                          child: Text(
                            nonNull(user.accountType),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Georgia",
                                color: Colors.white
                            ),
                          )
                      ),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                      )
                  ),
                  Container( // grey box
                      child: Center(
                          child: Text(
                            nonNull(user.firstName),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Georgia",
                                color: Colors.white
                            ),
                          )
                      ),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                      )
                  ),
                  Container( // grey box
                      child: Center(
                          child: Text(
                            nonNull(user.secondName),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Georgia",
                                color: Colors.white
                            ),
                          )
                      ),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.lime,
                      )
                  ),
                  Container( // grey box
                      child: Center(
                          child: Text(
                            nonNull(user.surName),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Georgia",
                                color: Colors.white
                            ),
                          )
                      ),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                      )
                  ),
                  Container( // grey box
                      child: Center(
                          child: Text(
                            nonNull(user.emailAddr),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Georgia",
                                color: Colors.white
                            ),
                          )
                      ),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                      )
                  ),
                  Container( // grey box
                      child: Center(
                          child: Text(
                            nonNull(user.agreed ? "agreed" : "not agreed"),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Georgia",
                                color: Colors.white
                            ),
                          )
                      ),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                      )
                  ),                  Container( // grey box
                      child: Center(
                          child: Text(
                            nonNull(user.expertises.toString()),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Georgia",
                                color: Colors.white
                            ),
                          )
                      ),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                      )
                  )
                ],
              )));
    }
    return Scaffold(
        body: Container(
            child: ListView(
                children:  widgets
            ),
            width: 2000,
            margin: EdgeInsets.only(left: 100)
        )
    );
  }
}