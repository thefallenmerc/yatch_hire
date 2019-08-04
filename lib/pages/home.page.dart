import 'package:flutter/material.dart';
import 'package:yatch_hire/widgets/date_button.widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> dates = [
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
    {"month": "AUG", "date": 12},
  ];

  int activeDate = 0;

  Widget _buildHeaderWithImage(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/dive.jpg'), fit: BoxFit.cover)),
      width: _screenWidth,
      height: _screenWidth + 20.0,
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 25.0,
              right: 25.0,
              child: Icon(
                Icons.menu,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHireButton(BuildContext context) {
    return Positioned(
      left: -15.0,
      top: MediaQuery.of(context).size.width - 60,
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.black12,
                  offset: Offset(2.0, 5.0))
            ],
            color: Theme.of(context).primaryColor,
          ),
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
          child: Text(
            'Private Hire'.toUpperCase(),
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0),
          ),
        ),
      ),
    );
  }

  Widget _buildRestOfTheBody(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.width - 20.0,
      child: Container(
        padding: EdgeInsets.only(left: 30.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 75.0, right: 105.0, bottom: 30.0),
              child: Column(
                children: <Widget>[
                  Text('Capture the moment & seize the oppurtunity',
                      style: TextStyle(
                          fontSize: 32.0,
                          color: Theme.of(context).primaryColor,
                          height: 1.2)),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Whatever shape your dream holiday takes,we have the expertise to arrange it. We know what makes a successful charter, and we know how to help you.",
                    style: TextStyle(height: 1.4, color: Colors.black54),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Your journey begins...'.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xFF5C737C), fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                      height: 105,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: this.dates.length,
                        itemBuilder: (BuildContext context, index) {
                          return InkWell(
                            child: CustomDateButton(
                                this.dates[index]["month"],
                                this.dates[index]["date"],
                                this.activeDate == index ? true : false),
                            onTap: () {
                              setState(() {
                                this.activeDate = index;
                              });
                            },
                          );
                        },
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
              maxHeight: MediaQuery.of(context).size.height * 2),
          child: Stack(
            children: <Widget>[
              _buildHeaderWithImage(context),
              _buildRestOfTheBody(context),
              _buildHireButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
