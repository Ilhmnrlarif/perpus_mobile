import 'package:flutter/material.dart';
import 'package:perpus_mobile/auth/forgotpass1.dart';
import 'package:perpus_mobile/auth/register.dart';
import 'package:perpus_mobile/screen/navbar.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CustomContainer(),
        ),
      ),
    );
  }
}

class CustomContainer extends StatefulWidget {
  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF8F3ED),
        borderRadius: BorderRadius.circular(37),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 156, 1, 143),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(16, 0, 8, 19),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'images/velook_logo.jpg',
                          ),
                        ),
                      ),
                      child: Container(
                        width: 307,
                        height: 291,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(32, 32, 32, 32),
                    width: 250,
                    height: 52,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFDAAA63)),
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFF8F3ED),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Color(0xFFABA39F),
                          ),
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 33),
                    width: 250,
                    height: 52,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFDAAA63)),
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFF8F3ED),
                    ),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 12, 40, 12),
                          child: TextField(
                            textAlign: TextAlign.start,
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color(0xFFABA39F),
                              ),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 12,
                          child: IconButton(
                            onPressed: _toggleVisibility,
                            icon: Icon(
                              _obscureText ? Icons.visibility_off : Icons.visibility,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 26),
                    width: 120,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Nav()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xE8DAAA63),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => forgotPage()),
                        );
                      },
                      child: 
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 4.4, 4),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                            color: Color(0x941E1E1E),
                          ),
                        ),
                      ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 5.7, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 3.5, 0),
                          child: Text(
                            'No account? ',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                              color: Color(0x941E1E1E),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RegisterPage()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 1, 0, 1),
                            child: Text(
                              'Create One',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w800,
                                fontSize: 11,
                                color: Color(0x8C00B3FF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                    child: SizedBox(
                      width: 93,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 6, 13, 4),
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 35,
                                height: 35,
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://cdn.icon-icons.com/icons2/4029/PNG/512/twitter_x_new_logo_x_rounded_icon_256078.png',
                                ),
                              ),
                            ),
                            child: Container(
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
