import 'package:flutter/material.dart';
import 'package:test_app/screens/home_screen.dart';
import 'package:test_app/screens/learn_tutorials.dart';
import 'package:test_app/screens/live_translation_screen.dart';

class CustomBottomNavBarWidget extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavBarWidget({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  _CustomBottomNavBarWidgetState createState() =>
      _CustomBottomNavBarWidgetState();
}

class _CustomBottomNavBarWidgetState extends State<CustomBottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            5, // Adjusted for four items: Home, Profile, Settings, Bookmarks
            (index) => InkWell(
              onTap: () => widget.onItemTapped(index),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.selectedIndex == index
                      ? Colors.white
                      : Colors.transparent,
                ),
                child: _buildIcon(index),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIcon(int index) {
    switch (index) {
      case 0:
        return Image.asset(
          "images/home.png",
          color: widget.selectedIndex == index ? Colors.blue : Colors.white,
        );
      case 1:
        return Image.asset(
          "images/Vector.png",
          color: widget.selectedIndex == index ? Colors.blue : Colors.white,
        );
      case 2:
        return Image.asset(
          "images/img_1.png",
          color: widget.selectedIndex == index ? Colors.blue : Colors.white,
        );
      case 3:
        return Image.asset(
          "images/Vector (1).png",
          color: widget.selectedIndex == index ? Colors.blue : Colors.white,
        );
      case 4:
        return Image.asset(
          "images/user.png",
          color: widget.selectedIndex == index ? Colors.blue : Colors.white,
        );

      default:
        return const SizedBox.shrink();
    }
  }
}

//

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          LearnTutorialsScreen(),
          LiveTranslation(),
          LiveTranslation(),
          LiveTranslation(),
          // LiveTextScreen(),
          // LiveTextAndSpeechScreen(),
          // LiveTextAndSpeechScreen2()
        ],
      ),
      bottomNavigationBar: CustomBottomNavBarWidget(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            print(index);
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

//

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;

//   final List<Widget> _children = [
//     HomeScreen(),
//     LearnScreen2(),
//     LearnTutorialsScreen(),
//   ];

//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _children[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: onTabTapped,
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add),
//             label: 'Add',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Notifications',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }

//
//

// class BottomNavBarExample extends StatefulWidget {
//   @override
//   _BottomNavBarExampleState createState() => _BottomNavBarExampleState();
// }

// class _BottomNavBarExampleState extends State<BottomNavBarExample> {
//   int _selectedIndex = 0;

//   static List<Widget> _widgetOptions = <Widget>[
//     // HomeScreen(),
//     // LearnTutorialsScreen(),
//     // LiveTranslation(),
//     // LearnScreen(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _widgetOptions[_selectedIndex],
//       bottomNavigationBar: CustomBottomNavBarWidget2(
//         selectedIndex: _selectedIndex,
//         onItemTapped: _onItemTapped,
//       ),
//     );
//   }
// }

// class CustomBottomNavBarWidget2 extends StatefulWidget {
//   final int selectedIndex;
//   final Function(int) onItemTapped;

//   const CustomBottomNavBarWidget2({
//     required this.selectedIndex,
//     required this.onItemTapped,
//   });

//   @override
//   _CustomBottomNavBarWidget2State createState() =>
//       _CustomBottomNavBarWidget2State();
// }

// class _CustomBottomNavBarWidgetState extends State<CustomBottomNavBarWidget2> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(25),
//           topRight: Radius.circular(25),
//         ),
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: List.generate(
//             5, // Adjusted for four items: Home, Profile, Settings, Bookmarks
//             (index) => InkWell(
//               onTap: () => widget.onItemTapped(index),
//               child: Container(
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: widget.selectedIndex == index
//                       ? Colors.white
//                       : Colors.transparent,
//                 ),
//                 child: _buildIcon2(index),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildIcon2(int index) {
//     switch (index) {
//       case 0:
//         return Image.asset(
//           "images/home.png",
//           color: widget.selectedIndex == index ? Colors.blue : Colors.white,
//         );
//       case 1:
//         return Image.asset(
//           "images/Vector.png",
//           color: widget.selectedIndex == index ? Colors.blue : Colors.white,
//         );
//       case 2:
//         return Image.asset(
//           "images/img_1.png",
//           color: widget.selectedIndex == index ? Colors.blue : Colors.white,
//         );
//       case 3:
//         return Image.asset(
//           "images/Vector (1).png",
//           color: widget.selectedIndex == index ? Colors.blue : Colors.white,
//         );
//       case 4:
//         return Image.asset(
//           "images/user.png",
//           color: widget.selectedIndex == index ? Colors.blue : Colors.white,
//         );

//       default:
//         return const SizedBox.shrink();
//     }
//   }
// }