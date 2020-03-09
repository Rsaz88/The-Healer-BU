import 'package:flutter/material.dart';
import 'AddProblem.dart';
import 'BeHealer.dart';
import 'Notifications.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // build method which will be called each time we make changes in our materialApp inside it
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[200],
          title: Center(
            child: Text('The Healer '),
          ),
        ),
        body: Container(
          child: GridView.count(
            crossAxisCount: 3,
            children: <Widget>[
              Container(),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 30, 5, 3),
                child: Text(
                  ' الرجاء تحديد أحد المجالات التالية  ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(),
              Column(children: <Widget>[
                IconButton(
                  icon: Icon(Icons.devices_other),
                  iconSize: 50,
                  color: Colors.lightBlueAccent[200],
                  onPressed: () {
                    Navigator.of(context).push(
                      // With MaterialPageRoute, you can pass data between pages,
                      // but if you have a more complex app, you will quickly get lost.
                      MaterialPageRoute(
                        builder: (context) => AddProblem(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 15),
                Text(
                  'صيانة الأجهزة',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.bug_report,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'عالم البرمجة',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.router,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'الشبكات',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.color_lens,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'الفنون',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.camera_alt,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'التصوير',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.translate,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'اللغات والترجمة',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.build,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'أعمال الخشب',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.format_paint,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'الطلاء',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.edit,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'التصميم',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.movie_creation,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'صناعة الأفلام',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.book,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'الكتب',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.airplanemode_active,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'احجز لي ',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.kitchen,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'الأجهزة المنزلية',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.local_car_wash,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'السيارات',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              Column(children: <Widget>[
                Icon(
                  Icons.more_horiz,
                  size: 50,
                  color: Colors.lightBlueAccent[200],
                ),
                SizedBox(height: 15),
                Text(
                  'مشاكل أخرى؟',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo-Regular',
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
            ], //gridview related
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.yellow[700],
          backgroundColor: Color.fromARGB(250, 232, 234, 235),
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.devices_other),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              title: Text(
                'لدي مشكلة',
                style: TextStyle(
                  fontFamily: 'Cairo-Regular',
                  fontSize: 10,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.devices_other),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => BeHealer(),
                    ),
                  );
                },
              ),
              title: Text(
                'أستطيع المساعدة',
                style: TextStyle(
                  fontFamily: 'Cairo-Regular',
                  fontSize: 10,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Notifications(),
                    ),
                  );
                },
              ),
              title: Text(
                'التنبيهات',
                style: TextStyle(
                  fontFamily: 'Cairo-Regular',
                  fontSize: 10,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              title: Text(
                'حسابي',
                style: TextStyle(
                  fontFamily: 'Cairo-Regular',
                  fontSize: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Container(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            crossAxisAlignment: CrossAxisAlignment.stretch,
//            children: <Widget>[
//              Container(
//                alignment: Alignment.center,
//                child: Text(
//                  ' الرجاء تحديد أحد المجالات التالية  ',
//                  style: TextStyle(
//                    fontSize: 16,
//                    color: Colors.grey[800],
//                    fontWeight: FontWeight.bold,
//                    fontFamily: 'Cairo-Regular',
//                  ),
//                  textAlign: TextAlign.start,
//                ),
//              ),
