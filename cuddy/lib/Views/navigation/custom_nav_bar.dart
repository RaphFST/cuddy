import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBar(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {

    var firstNavSelector = 'Home';
    var firstNavTooltip = 'Show home page';
    var secondNavSelector = 'Page 2';
    var secondNavTooltip = 'Show page 2';
    var thirdNavSelector = 'Page 3';
    var thirdNavTooltip = 'Show page 3';
    var fourthNavSelector = 'Page 4';
    var fourthNavTooltip = 'Show page 4';
    var fifthNavSelector = 'Page 5';
    var fifthNavTooltip = 'Show page 5';

    return Container(
      height: 80,
      color: Colors.green,
      child: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        selectedFontSize: 13,
        unselectedFontSize: 12,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.home),
                ],
              ),
              label: firstNavSelector,
              tooltip: firstNavTooltip),
          BottomNavigationBarItem(
              icon: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.abc),
                ],
              ),
              label: secondNavSelector,
              tooltip: secondNavTooltip),
          BottomNavigationBarItem(
            icon: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.abc),
              ],
            ),
            label: thirdNavSelector,
            tooltip: thirdNavTooltip,
          ),
          BottomNavigationBarItem(
            icon: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.abc),
              ],
            ),
            label: fourthNavSelector,
            tooltip: fourthNavTooltip,
          ),
          BottomNavigationBarItem(
            icon: const Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.abc),
                  ],
                ),
              ],
            ),
            label: fifthNavSelector,
            tooltip: fifthNavTooltip,
          ),
        ],
      ),
    );
  }
}
