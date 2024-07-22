import 'package:flutter/material.dart';
import 'package:perpus_mobile/screen/navbar.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isObscurePassword = true;
  bool _isObscureConfirmPassword = true;

  void _toggleObscurePassword() {
    setState(() {
      _isObscurePassword = !_isObscurePassword;
    });
  }

  void _toggleObscureConfirmPassword() {
    setState(() {
      _isObscureConfirmPassword = !_isObscureConfirmPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F3ED),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xFFF8F3ED),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 45.0),
            child: Text(
              'Create New Account',
              style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                fontWeight: FontWeight.w400,
                fontSize: 28,
                color: Color(0xFF000000),
              ),
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              width: 320,
              height: 52,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFDAAA63)),
                borderRadius: BorderRadius.circular(12),                
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
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              width: 320,
              height: 52,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFDAAA63)),
                borderRadius: BorderRadius.circular(12),                
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xFFABA39F),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              width: 320,
              height: 52,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFDAAA63)),
                borderRadius: BorderRadius.circular(12),                
              ),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 12, 40, 12),
                    child: TextField(
                      textAlign: TextAlign.start,
                      obscureText: _isObscurePassword,
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
                      onPressed: _toggleObscurePassword,
                      icon: Icon(
                        _isObscurePassword ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              width: 320,
              height: 52,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFDAAA63)),
                borderRadius: BorderRadius.circular(12),                
              ),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 12, 40, 12),
                    child: TextField(
                      textAlign: TextAlign.start,
                      obscureText: _isObscureConfirmPassword,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
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
                      onPressed: _toggleObscureConfirmPassword,
                      icon: Icon(
                        _isObscureConfirmPassword ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 38),
          Center(
            child: Container(
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
                  'Register',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
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
                width: 240,
                height: 224,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
