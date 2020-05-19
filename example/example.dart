import 'package:divine_card/src/divinecard.dart';
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
              'Try DivineCard -',
              style: TextStyle(
                  color: Color(0xFF4F3C75),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Today.',
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
              height: 200.0,
              color: Color(0xFF00578D),
              shadowColor: Colors.black38,
              blurRadius: 12.0,
              img: AssetImage('images/Picture2.png'),
              imgHeight: 200.0,
              imgWidth: 200.0,
              buttonText: 'Your Text',
              buttonColor: Colors.black,
              buttonBackground: Colors.white,
              icon: Icons.arrow_forward_ios,
              iconColor: Colors.black,
              title: 'Your text goes',
              subtitle: 'Here..',
              fontSize: 18.0,
              fontColor: Colors.white,

            ),
          ],
        ),
      ),
    );
  }
}
