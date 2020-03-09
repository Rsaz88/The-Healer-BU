import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'start_page.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key key}) : super(key: key);

  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final int _totalPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey[300],
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Container(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              _currentPage = page;
              setState(() {});
            },
            children: <Widget>[
              _buildPageContent(
                  image: 'assets/images/OP-11.PNG',
                  title: '"The Healer" اهلا بك في',
                  body:
                      'حيث تجد لك صديق معالج من كل مجال ، لتعالج المشاكل الصغيرة قبل أن تسبب بمشاكل أكبر'),
              _buildPageContent(
                  image: 'assets/images/OP-22.PNG',
                  title: 'ندعم الجميع',
                  body:
                      'لا نقتصر على مجالٍ معين ، بل يوجد مجالات عديدة ومتنوعة ذا يمكنك اختيار المجال الأنسب ومن ثم مشاركة مشكلتك '),
              _buildPageContent(
                  image: 'assets/images/OP-33.PNG',
                  title: 'اقبل العرض الأنسب لك',
                  body:
                      ' كما يوجد معالجين يساعدونك بمبالغ رمزية ، يوجد ايضاً معالجين متطوعين يساعدون الآخرين بلا مقابل'),
              _buildPageContent(
                  image: 'assets/images/OP-4.PNG',
                  title: 'كُن على اتصال ، أينما كُنت متى  ماشئت',
                  body:
                      'تحدث مع المُعالج الذي سيساعدك مباشرة ، لتقوم بحل مشكلتك بشكل تفاعلي ..خطوة بخطوة! '),
            ],
          ),
        ),
      ),
      bottomSheet: _currentPage != 3
          ? Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(4,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                      setState(() {});
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      'تخطي',
                      style: TextStyle(
                        color: Colors.lightBlueAccent[400],
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Cairo-Regular',
                      ),
                    ),
                  ),
                  Container(
                    child: Row(children: [
                      for (int i = 0; i < _totalPages; i++)
                        i == _currentPage
                            ? _buildPageIndicator(true)
                            : _buildPageIndicator(false)
                    ]),
                  ),
                  FlatButton(
                    onPressed: () {
                      _pageController.animateToPage(_currentPage + 1,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                      setState(() {});
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      'التالي',
                      style: TextStyle(
                        color: Colors.lightBlueAccent[400],
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Cairo-Regular',
                      ),
                    ),
                  )
                ],
              ),
            )
          : InkWell(
              onTap: () {
                // Pushing a route directly, WITHOUT using a named route
                Navigator.of(context).push(
                  // With MaterialPageRoute, you can pass data between pages,
                  // but if you have a more complex app, you will quickly get lost.
                  MaterialPageRoute(
                    builder: (context) => StartPage(),
                  ),
                );
              },
              child: Container(
                height: Platform.isIOS ? 70 : 60,
                color: Colors.lightBlueAccent[200],
                alignment: Alignment.center,
                child: Text(
                  'سجل الآن',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo-Regular',
                  ),
                ),
              ),
            ),
    );
  }

  Widget _buildPageContent({
    String image,
    String title,
    String body,
  }) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image(
                image: AssetImage(image),
                height: 300,
                width: 300,
              ),
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: 'Cairo-Regular',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
            Text(
              body,
              style: TextStyle(
                fontSize: 15,
                height: 2.0,
                fontFamily: 'Cairo-Regular',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
