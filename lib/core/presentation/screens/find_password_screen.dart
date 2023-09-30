import 'package:app/core/presentation/blocs/blocs.dart';
import 'package:app/core/presentation/widgets/widgets.dart';
import 'package:app/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FindPasswordPage extends StatelessWidget {
  final FindPasswordController controller = Get.put(FindPasswordController());
  final FormController _formController = Get.put(FormController());
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Get the dimensions from the dimension controller.
    final fontSize = DimensionController.getProportionateValue(context, 16.0);
    final padding = DimensionController.getProportionateValue(context, 8.0);
    final margin = DimensionController.getProportionateValue(context, 16.0);

    // Check the screen size.
    final isSmallScreen = ResponsivenessController.isSmallScreen(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Find password logo.
             Hero(
              tag: 'forgot password',
               child: Container(
                width: 80.rw(context),
                child: Center(
                  child: ResponsiveText(
                  text: 'Find Password',
                  textColor: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                         ) ),
                         ),
             ),
         

            //Email address input field.
            Padding(
              padding: EdgeInsets.all(padding),
              child:ReusableTextField(
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

            // Find password button.
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: ReusableButton(
                    text: 'Back To Login',
                    onPressed: (){
                      Get.offNamed('/login');
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(padding),
                  child: ReusableButton(
                    text: 'Find Password',
                    onPressed: (){
                      controller.findPassword();
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
