import 'package:flutter/material.dart';
import 'package:pak_citizen_portal/widgets/closed_complains.dart';
import 'package:pak_citizen_portal/widgets/gesture_detector.dart';
import 'package:pak_citizen_portal/widgets/open_complains.dart';
import 'package:pak_citizen_portal/widgets/total_complains.dart';

import '../constant.dart';
import '../feed_backs.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme.copyWith(
              color: ktextColor,
            ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'home'.toUpperCase(),
          style: TextStyle(
            color: ktextColor,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.mail,
                color: ktextColor,
              ),
              SizedBox(
                width: 10.0,
              ),
              Icon(
                Icons.notifications_active,
                color: ktextColor,
              ),
            ],
          ),
        ],
      ),
      body: Container(
        decoration:
            BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
        child: Column(
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              margin: EdgeInsets.only(top: 20.0, left: 40.0),
              child: Image(
                color: Colors.deepOrangeAccent,
                image: AssetImage('assets/images/comment.png'),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Complaints',
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: 15.0, top: 15.0, right: 20.0, bottom: 10.0),
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(2.0)),
              child: GestButton(
                onTap: () {
                  print('this is total Complains');
                },
                child: TotalComplains(),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 80.0,
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.only(left: 10.0),
                    decoration: BoxDecoration(color: kopenComplain),
                    child: GestButton(
                      onTap: () {
                        print('this is open complains');
                      },
                      child: OpenComplains(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.only(right: 10.0),
                    height: 80.0,
                    child: GestButton(
                      onTap: () {
                        print('this is closed complains');
                      },
                      child: ClosedComplains(),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                'Feedbacks'.toUpperCase(),
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: <Widget>[
                Feedbacks(
                  text: 'Postive\nFeedbacks',
                  icon: Icons.thumb_up,
                  isColor: true,
                ),
                // SizedBox(width: 10.0,),
                Feedbacks(
                  text: 'Negative\nFeedbacks',
                  icon: Icons.thumb_down,
                  isColor: false,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kopenComplain,
        onPressed: () {
          print('this complain button');
        },
        child: Icon(
          Icons.add,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(120.0),
                      color: Colors.blueAccent
                  ),
                  child: Align(
                      alignment: Alignment.center, child: Text('UserName')),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'.toUpperCase()),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Password'.toUpperCase()),
          ),
          ListTile(
            leading: Icon(Icons.vpn_key),
            title: Text('change username'.toUpperCase()),
          ),
          Divider(
            height: 2.0,
            color: kblackColor,
          ),
          ListTile(
            leading: Icon(Icons.cached),
            title: Text('checked for update'.toUpperCase()),
          ),
          ListTile(
            leading: Icon(Icons.beach_access),
            title: Text('team'.toUpperCase()),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Contact us'.toUpperCase()),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('citizen manual'.toUpperCase()),
          ),
          ListTile(
            leading: Icon(Icons.check_box_outline_blank),
            title: Text('Privacy policy'.toUpperCase()),
          ),
          ListTile(
            leading: Icon(Icons.edit_location),
            title: Text('Logout'.toUpperCase()),
          ),
        ],
      ),
    );
  }
}
