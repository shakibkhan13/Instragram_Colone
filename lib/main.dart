import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InstagramProfile(),
    );
  }
}

class InstagramProfile extends StatefulWidget {
  @override
  _InstagramProfileState createState() => _InstagramProfileState();
}

class _InstagramProfileState extends State<InstagramProfile> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ProfileContent(),
    Placeholder(),
    Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instragram Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ' Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  'https://scontent.fdac11-2.fna.fbcdn.net/v/t39.30808-6/394287496_1543231796413607_965185288307610570_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG6i4mnEbu9kaq_h83EK_Vvws4sqVCSEz_CziypUJITPwDmOQ83wYXMDz-sOjidtALVaOQPN2wTLDLVcGfVDhoY&_nc_ohc=JmPds-gPPW0AX8baypx&_nc_ht=scontent.fdac11-2.fna&oh=00_AfCbpXMrQrZcggPLbl5vFA99pXVkjxjDxzVRMoxTZa7YyA&oe=65450E53',
                ),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        'Shakib Khan Sourov',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(width: 16),
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          
                        },
                      ),
                      SizedBox(width: 20),
                      IconButton(
                        icon: Icon(Icons.archive),
                        onPressed: () {
                        
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: <Widget>[
                      Text('  1K', style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 16),
                      Text('           200', style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 16),
                      Text('                300', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('Posts', style: TextStyle(fontSize: 16)),
                      SizedBox(width: 16),
                      Text('Followers', style: TextStyle(fontSize: 16)),
                      SizedBox(width: 16),
                      Text('Following', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: <Widget>[
                Icon(Icons.new_label, size: 36),
                Text('New'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.place, size: 36),
                Text('Places'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.favorite, size: 36),
                Text('Favorites'),
              ],
            ),
          ],
        ),
        Divider(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: <Widget>[
                Icon(Icons.post_add, size: 36),
                Text('Posts'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.save, size: 36),
                Text('Saved'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.bookmark, size: 36),
                Text('Tagged'),
              ],
            ),
          ],
        ),
         Divider(
          height: 20,
        ),
        Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Column(
      children: <Widget>[
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://scontent.fdac11-2.fna.fbcdn.net/v/t39.30808-6/394287496_1543231796413607_965185288307610570_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_eui2=AeG6i4mnEbu9kaq_h83EK_Vvws4sqVCSEz_CziypUJITPwDmOQ83wYXMDz-sOjidtALVaOQPN2wTLDLVcGfVDhoY&_nc_ohc=JmPds-gPPW0AX8baypx&_nc_ht=scontent.fdac11-2.fna&oh=00_AfCbpXMrQrZcggPLbl5vFA99pXVkjxjDxzVRMoxTZa7YyA&oe=65450E53'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text('ME'),
      ],
    ),
    Column(
      children: <Widget>[
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://images.unsplash.com/photo-1525310072745-f49212b5ac6d?auto=format&fit=crop&q=80&w=465&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text('Flower 1'),
      ],
    ),
    Column(
      children: <Widget>[
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://images.unsplash.com/photo-1534211698458-e2be12c1a94c?auto=format&fit=crop&q=80&w=249&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text('Flower 2'),
      ],
    ),
    Column(
      children: <Widget>[
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://images.unsplash.com/photo-1469259943454-aa100abba749?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text('Flower 3'),
      ],
    ),
  ],
)

      ],
    );
  }
}
