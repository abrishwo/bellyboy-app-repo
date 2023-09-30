import 'package:app/core/presentation/blocs/blocs.dart';
import 'package:app/core/presentation/widgets/component/reusable_button.dart';
import 'package:app/core/presentation/widgets/component/text_field.dart';
import 'package:app/core/presentation/widgets/widgets.dart';
import 'package:app/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginPage extends StatelessWidget {
  final FormController _formController = Get.put(FormController());
  final LoginController _loginController = Get.put(LoginController());
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // title header
          _buildTitleHeroView(context),
         //main form
         _buildFormFieldView(context),
          //buttons
         _buildButtonView(context),
         ]) ;
      }),
    );
  }


// Title Hero
Widget _buildTitleHeroView(BuildContext context){
  return Hero(
    tag: 'Login', 
    child:  Container(
              width: 80.rw(context),
              child: Center(
                child: ResponsiveText(
                text: 'Log In',
                textColor: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
            ) ),
            ),
         
    );
}

//form fields
Widget _buildFormFieldView(BuildContext context){
  return  Center(
            child: Container(
            height: 300.rh(context),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (_formController.currentTextField.value=='email')
                    Container(
                      padding: EdgeInsets.all(DimensionController.getPadding(context)),
                      width: 290.rw(context),
                    child: ReusableTextField(
                     controller: emailController,
                      onChanged: (value) {
                        if(_formController.validateEmail(value)){
                        _formController.email.value = value;
                        }
                      },
                      errorTextMsg: _formController.isEmailValid.value?'':'please enter valid email',
                      hintText: 'Your Email',
                      labelText: "E-Mail",
                      ),
                    
                    ),
                  if (_formController.currentTextField.value=='password')
                    Container(
                     padding: EdgeInsets.all(DimensionController.getPadding(context)),
                      width: 290.rw(context),
                     child: ReusableTextField(  
                      isObscured: _formController.isPasswordHidden.value,

                      controller: passwordController,
                      isPassword: true,
                      visibilityToggler: (){
                        _formController.togglePasswordVisibility();
                      },
                      onChanged: (value) {
                        if(_formController.validatePassword(value)){
                        _formController.password.value = value;
                        }
                      },
                      errorTextMsg: _formController.isPasswordStrong.value?'':'please enter strong password',
                      hintText: 'Password',
                      labelText: "Password",
                     ),
                    ),
                    SizedBox(height: 1000.rh(context),),
                    Text("Scroll down to read me"),
                     ],
              ),
            ),
        ),
          );
          
}
//call to action buttons
  Widget _buildButtonView(BuildContext context){
    return    Stack(
                children: [
                Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                        Container(
                        padding: EdgeInsets.all(DimensionController.getPadding(context)),
                        width: 290.rw(context),
                        height: 60.rh(context),
                        alignment: Alignment.center,
                
                        child: Row(

                          children: [
                            ReusableTextButton(
                              text: 'Find Email',
                              onPressed: (){
                                Get.offNamed('/find_email');
                              },
                              ),
                              SizedBox(width: 15.rw(context),),
                              Text('|', style: TextStyle(color: Colors.amberAccent, 
                              fontSize: 20.rf(context), fontWeight: FontWeight.w900),),
                              SizedBox(width: 15.rw(context),),
                              ReusableTextButton(
                              text:  'Find Password',
                              onPressed: (){
                                Get.offNamed('/find_password');
                              },
                              ),
                          ],
                        ),
                      
                    ),
                
                SizedBox(height: 20.rh(context),),
              Container(
                padding: EdgeInsets.all(DimensionController.getPadding(context)),
                width: 290.rw(context),
                height: 60.rh(context),
                alignment: Alignment.center,
                decoration: BoxDecoration(  
                color: _formController.getButtonBgColor(),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: ReusableButton(
                  text:  _formController.getButtonLabel(),
                  onPressed: (){
                    if((_formController.currentTextField.value=='email') && (_formController.isEmailValid.value) ){
                    
                      _formController.changeCurrentField('password');
                    }else{
                      if(_formController.isPasswordStrong.value)
                      {
                       _loginController.login(
                        _formController.email.value,
                        _formController.password.value
                       );
                        print('Values are ${_formController.email.value} and ${_formController.password.value}');
                       if(_loginController.isLoggedIn.value){
                           Get.offNamedUntil('/home', (route) => false);
                       }else{
                        Get.offNamedUntil('/login', (route) => false);
                       }
                     
                      }
                    }
                  },
                  ),
              )
          
                  ],
                ),
                )
              ],
            );
  }
}
