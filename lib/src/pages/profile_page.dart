import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/pages/register_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 0.6),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        backgroundColor: Colors.white70,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white70,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Stack(
                  fit: StackFit.expand,
                  overflow: Overflow.visible,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/user.png"),
                    ),
                    Positioned(
                      bottom: 0,
                      right: -10,
                      child: SizedBox(
                        width: 46,
                        height: 46,
                        child: FlatButton(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: BorderSide(color: Colors.white),
                            ),
                            color: Color(0xFFF5F6F9),
                            onPressed: () {},
                            child: Icon(
                              Icons.camera_alt,
                              size: 20,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color(0xFFF5F6F9),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.orange,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'My Acoount',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color(0xFFF5F6F9),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.help_outline,
                        color: Colors.orange,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Help Center',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: FlatButton(
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Color(0xFFF5F6F9),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.login_outlined,
                        color: Colors.orange,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Log Out',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
