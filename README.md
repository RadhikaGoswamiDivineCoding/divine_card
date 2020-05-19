# divinecard

Makes an interesting splash effect when tapping its child widget.

## Getting Started
To use this plugin, add divine_card as a dependency in your pubspec.yaml file.

The color can be set with the splashColor property. The splash size is dependent on the size of the child widget passed in - which is constrained by the minRadius and maxRadius parameters.

##Example
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Color(0xFF4F3C75),
          size: 30,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Choose your problem -',
              style: TextStyle(
                  color: Color(0xFF4F3C75),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'face it.',
              style: TextStyle(
                  color: Color(0xFF4F3C75),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            TabBar(
              labelColor: Color(0xFF4F3C75),
              controller: _tabController,
              unselectedLabelColor: Color(0xFF4F3C75),
              isScrollable: true,
              indicatorColor: Color(0xFF4F3C75),
              tabs: <Widget>[
                Tab(
                  text: "Full list",
                ),
                Tab(
                  text: "Popular",
                ),
                Tab(
                  text: "Rare cases",
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            divineCard(
              buttonText: 'Learn more',
              buttonColor: Colors.black,
              blurRadius: 12.0,
              icon: Icons.arrow_forward_ios,
              iconColor: Colors.black,
              buttonBackground: Colors.white,
              height: 200.0,
              color: Color(0xFF00578D),
              fontSize: 18.0,
              fontColor: Colors.white,
              title: 'Your text goes',
              subtitle: 'Here..',
              img: AssetImage('images/Picture2.png'),
              imgHeight: 200.0,
              imgWidth: 200.0,
              shadowColor: Colors.black38,
            ),
            SizedBox(height: 20.0,),

          ],
        ),
      ),
    );
  }
}
