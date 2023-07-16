import 'package:flutter/material.dart';
import 'package:mustodo/provider/page_notifier.dart';
import 'package:provider/provider.dart';


class Authpage extends Page{

  static final pageName = 'AuthPage';

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
        settings:this, builder: (context)=>const AuthWidget());
  }
  
}

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});


  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _cpasswordController = TextEditingController();

  bool isRegister = false;
  Duration _duration = Duration(milliseconds: 200);
  Curve _curve = Curves.fastOutSlowIn;

  static final double _cornerRadius = 8.0;
  OutlineInputBorder _border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(_cornerRadius),
      borderSide: BorderSide(color: Colors.transparent, width: 0));

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/image.jpg'))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Form(
              key: _formKey,
              child: ListView(
                reverse: true,
                padding: EdgeInsets.all(16),
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 36,
                    child: Image.asset('assets/logo.png'),
                  ),
                  SizedBox(height: 16,),
                  ButtonBar(
                    children: [
                      TextButton(
                          onPressed: (){
                            setState(() {
                              isRegister = false;
                            });
                          },
                          child: Text('Login',
                              style: TextStyle(fontSize: 20,
                              fontWeight: isRegister? FontWeight.w400:FontWeight.w600,
                              color: isRegister?Colors.black54:Colors.black87,
                              ),
                          )),
                      TextButton(
                          onPressed: (){
                            setState(() {
                              isRegister = true;
                            });
                          },
                          child: Text('Register',
                            style: TextStyle(fontSize: 20,
                                fontWeight: isRegister? FontWeight.w600:FontWeight.w400,
                                color: isRegister?Colors.black87:Colors.black54,
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  _buildTextFormField("Email Address", _emailController),
                  SizedBox(height: 8,),
                  _buildTextFormField("Passward", _passwordController),
                  AnimatedContainer(
                      height: isRegister? 8 : 0,
                    duration: _duration,
                    curve: _curve,
                  ),
                  AnimatedContainer(
                    height: isRegister? 60 : 0,
                      duration: _duration,
                      curve: _curve,
                      child: _buildTextFormField("Confirm Password", _cpasswordController)
                  ),
                  SizedBox(height: 16,),
                  TextButton(
                      onPressed: (){
                        if(_formKey.currentState!.validate()){
                          print("모든 입력값이 올바르다.");
                          Provider.of<PageNotifier>(context, listen: false).goToMain();
                        }
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(_cornerRadius),
                        ),
                        backgroundColor: Colors.white54,
                        padding: EdgeInsets.all(16),
                      ),
                      child: Text(isRegister?"Register":"Login")

                  ),
                  Divider(height: 31,thickness: 2, color: Colors.white54, indent: 0, endIndent: 0,)
                ].reversed.toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextFormField _buildTextFormField(String labalText, TextEditingController controller) {
    return TextFormField(
                  cursorColor: Colors.white,
                  controller: controller,
                  validator: (text){
                    if(controller != _cpasswordController && (text == null || text.isEmpty)){
                      return "입력창이 비었습니다.";
                    }
                    if(controller == _cpasswordController && isRegister && (text == null || text.isEmpty)) {
                      return "비밀번호 확인 부분 다시 입력하세요";
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: labalText,
                    filled: true,
                    fillColor: Colors.black45,
                    border: _border,
                    errorBorder: _border.copyWith(borderSide: BorderSide(color: isRegister?Colors.black : Colors.transparent, width: isRegister? 3 : 0)),
                    focusedErrorBorder: _border.copyWith(borderSide: BorderSide(color: isRegister?Colors.black : Colors.transparent, width: isRegister? 3 : 0)),
                    enabledBorder: _border,
                    focusedBorder: _border,
                    errorStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                );
  }
}
