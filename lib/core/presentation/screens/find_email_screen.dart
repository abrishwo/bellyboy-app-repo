import 'package:app/core/presentation/blocs/blocs.dart';
import 'package:app/core/presentation/widgets/widgets.dart';
import 'package:app/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FindEmailPage extends StatelessWidget {
  final FindEmailController controller = Get.put(FindEmailController());
  final FormController _formController = Get.put(FormController());
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Find password logo.
             Hero(
              tag: 'Forgot Email',
               child: Container(
                width: 80.rw(context),
                child: Center(
                  child: ResponsiveText(
                  text: 'Find E-Mail',
                  textColor: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                         ) ),
                         ),
             ),
         

            //password  input field.
            Padding(
              padding: EdgeInsets.all(12.rw(context)),
              child:ReusableTextField(
                     controller: passwordController,
                      onChanged: (value) {
                        if(_formController.validatePassword(value)){
                        _formController.password.value = value;
                        }
                      },
                      errorTextMsg: _formController.isEmailValid.value?'':'please enter current password',
                      hintText: 'password',
                      labelText: "Current Password",
                      ),
            ),

            // Find password button.
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(12.rw(context)),
                  child: ReusableButton(
                    text: 'Back To Login',
                    onPressed: (){
                      Get.offNamed('/login');
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(12.rw(context)),
                  child: ReusableButton(
                    text: 'Find E-Mail',
                    onPressed: (){
                      controller.findEmail();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
