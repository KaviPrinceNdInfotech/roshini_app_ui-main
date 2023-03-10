import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:roshini/constants/app_theme/app_color.dart';
import 'package:roshini/controllers/signup_controller/signup_controler.dart';
import 'package:roshini/modules/login_password/login_passwords_page.dart';

//class SignUpPage extends GetView<SignUpController> {

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
String gender = "male";

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  SignUpController _signUpController = Get.put(SignUpController());

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyTheme.t1navbar1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 16, right: 16),
          width: context.width,
          height: context.height,
          child: SingleChildScrollView(
            child: Form(
              key: _signUpController.SignupFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.136,
                    width: size.width * 0.6,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'lib/assets/images/JK_ROSHINI_png.png'),
                            fit: BoxFit.fitWidth)),
                  ),
                  const SizedBox(
                    height: 00,
                  ),
                  Text(
                    "SignUp with us!",
                    style: GoogleFonts.alegreyaSc(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyTheme.t1Iconcolor),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: MyTheme.t1bacgroundcolors1,
                            hintText: 'Name',
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 4.0, top: 16.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.green),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Colors.transparent),
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // labelText: "Password",
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.012,
                                  horizontal: size.width * 0.02),
                              child: Image.asset(
                                'lib/assets/images/profile.png',
                                color: MyTheme.t1Iconcolor,
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          controller: _signUpController.Name,
                          validator: (value) {
                            return _signUpController.validateName(value!);
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: MyTheme.t1bacgroundcolors1,
                            hintText: 'Phone',
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 4.0, top: 16.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.green),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Colors.transparent),
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.012,
                                  horizontal: size.width * 0.02),
                              child: Image.asset(
                                'lib/assets/images/smartphone.png',
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                          controller: _signUpController.Phone,
                          validator: (value) {
                            return _signUpController.validatemobile(value!);
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: MyTheme.t1bacgroundcolors1,
                            hintText: 'Shop name',
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 4.0, top: 16.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.green),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Colors.transparent),
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.012,
                                  horizontal: size.width * 0.02),
                              child: Image.asset(
                                'lib/assets/images/store.png',
                                //color: MyTheme.t1Iconcolor,
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.name,
                          controller: _signUpController.ShopName,
                          validator: (value) {
                            return _signUpController.validateShopname(value!);
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: TextFormField(
                        //maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: MyTheme.t1bacgroundcolors1,
                          hintText: 'Address',
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 4.0, top: 16.0),
                          focusedBorder: OutlineInputBorder(
                            borderSide: new BorderSide(color: Colors.green),
                            borderRadius: new BorderRadius.circular(10),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                new BorderSide(color: Colors.transparent),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.red, width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.012,
                                horizontal: size.width * 0.02),
                            child: Image.asset(
                              'lib/assets/images/home.png',
                              color: MyTheme.t1Iconcolor,
                              height: 10,
                              width: 10,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.streetAddress,
                        //obscureText: true,
                        controller: _signUpController.Address,
                        validator: (value) {
                          return _signUpController.validateAddress(value!);
                        },
                      ),
                    ),
                  ),

                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: MyTheme.t1bacgroundcolors1,
                            hintText: 'Aadhaar No',
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 4.0, top: 16.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.green),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Colors.transparent),
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // labelText: "Password",
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.012,
                                  horizontal: size.width * 0.02),
                              child: Image.asset(
                                'lib/assets/images/credit-card.png',
                                //color: MyTheme.t1Iconcolor,
                                height: 10,
                                width: 10,
                              ),
                            ),
                            suffixIcon: IconButton(
                                onPressed: (){
                                 _modelBottomSheet(context);
                                },
                                icon: Icon(Icons.camera_alt_sharp))
                          ),
                          keyboardType: TextInputType.phone,
                          controller: _signUpController.AadharNo,
                          // onSaved: (value) {
                          //   _signUpController.aadhar = value!;
                          // },
                          validator: (value) {
                            return _signUpController.validateaadharcard(value!);
                          },
                        ),
                      ),
                    ),
                  ),
                  Obx(()=> _signUpController.selectedImagePath.value=='' ?
                      Container(height:  size.height * 0.03) :
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                        height: 80,width: 80,
                        color: Colors.white,
                          child: Image.file(File(_signUpController.selectedImagePath.value),fit: BoxFit.cover,),
                        ),
                      )
                  ),
                  Container(
                    width: size.width,
                    height: size.height * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: MyTheme.t1bacgroundcolors1,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.4,
                          child: Row(
                            children: [
                              Obx(
                                () => Radio(
                                  // title: Text("Male"),
                                  value: "Repair",
                                  groupValue:
                                      _signUpController.selectedService.value,
                                  onChanged: (value) {
                                    _signUpController.onChangeService(value!);
                                    // setState(() {
                                    //   gender = value.toString();
                                    // });
                                  },
                                ),
                              ),
                              Text('Repair')
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.4,
                          child: Row(
                            children: [
                              Obx(
                                () => Radio(
                                  // title: Text("Male"),
                                  value: "Customer",
                                  groupValue:
                                      _signUpController.selectedService.value,
                                  onChanged: (value) {
                                    _signUpController.onChangeService(value!);
                                    // setState(() {
                                    //   gender = value.toString();
                                    // });
                                  },
                                ),
                              ),
                              Text('Sell')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,

                            fillColor: MyTheme.t1bacgroundcolors1,
                            hintText: 'Password',
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 4.0, top: 16.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.green),
                              borderRadius: new BorderRadius.circular(10),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Colors.transparent),
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // labelText: "Password",
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.012,
                                  horizontal: size.width * 0.02),
                              child: Image.asset(
                                'lib/assets/images/lock.png',
                                color: MyTheme.t1Iconcolor,
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          controller: _signUpController.Password,
                          validator: (value) {
                            return _signUpController.validatepassword(value!);
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: context.width),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.t1containercolor),
                        padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                      ),
                      child: Text(
                        "SignUp",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      onPressed: () {
                        print("RadioButton:${_signUpController.selectedService}");
                        _signUpController.checkLogin();
                       // Get.to(() => LoginPasswordPage());
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
_modelBottomSheet(BuildContext context){
    return  showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: new Icon(Icons.camera_alt_sharp),
                title:  const Text('Camera'),
                onTap: () {
                  _signUpController.getImage(ImageSource.camera);
                  Navigator.pop(context);
                },
              ),Divider(),
              ListTile(
                leading: new Icon(Icons.image_outlined),
                title: new Text('Gallery'),
                onTap: () {
                  _signUpController.getImage(ImageSource.gallery);
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
}
}
