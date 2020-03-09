import 'package:flutter/material.dart';
import 'BeHealer.dart';
import 'HomePage.dart';

class Notifications extends StatelessWidget {
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
            child: Center(
          child: Text(
            "عذراً .. لا يوجد لديك أي اشعارات حالياً",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Cairo-Regular',
              color: Colors.grey,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
        )),
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
