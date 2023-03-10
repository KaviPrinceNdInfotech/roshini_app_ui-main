import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roshini/constants/app_theme/app_color.dart';
import 'package:roshini/controllers/home_controllers/home_controllers.dart';
import 'package:roshini/controllers/login_mobile_controller/login_mobile_controllers.dart';
import 'package:roshini/modules/add_banner/add_banner.dart';
import 'package:roshini/modules/add_technician/add_technicians.dart';
import 'package:roshini/modules/complain_list/complain_lists.dart';
import 'package:roshini/modules/invoice_views/page/pdf_page.dart';
import 'package:roshini/modules/profiles/profiless.dart';
import 'package:roshini/modules/search_page/registration_list.dart';
import 'package:url_launcher/url_launcher.dart';
import '../add_services/add_servicesss.dart';
import '../complaint_view/complaint_page.dart';

final Uri _url = Uri.parse('https://www.instagram.com/');
final Uri _url2 = Uri.parse('https://www.facebook.com/');
final Uri _url3 = Uri.parse('https://twitter.com/');

_launchWhatsapp() async {
  var whatsapp = "+918396000932";
  var whatsappAndroid =
  Uri.parse("whatsapp://send?phone=$whatsapp&text=hello Rahul");
  if (await canLaunchUrl(whatsappAndroid)) {
    await launchUrl(whatsappAndroid);
  } else {
    Get.snackbar(
      "Whats App not installed ",
      "Please install the what's app Prince",
      colorText: Colors.red.shade400,
      backgroundColor: Colors.white10,
      icon: Icon(Icons.person, color: Colors.red),
      snackPosition: SnackPosition.TOP,
    );
    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(
    //     content: Text("WhatsApp is not installed on the device"),
    //   ),
    // );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw 'Could not launch $_url';
  }
}
Future<void> _launchUrl3() async {
  if (!await launchUrl(_url3)) {
    throw 'Could not launch $_url';
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);



  final List<String> productname = [
    'Invoice',
    'Add Technician',
    'Profile',
    'Complaint List',
    'Customer Support',
    'Add Services',
  ];

  final List<String> productimage = [
    'lib/assets/images/invoice.png',
    'lib/assets/images/add-user.png',
    'lib/assets/images/profile.png',
    'lib/assets/images/complaint.png',
    'lib/assets/images/support1.png',
    'lib/assets/images/cloud-computing.png',
    // 'service 7',
    // 'service 8',
  ];

  final List<IconData> producticons = [
    Icons.request_page_rounded,
    Icons.request_quote_outlined,
    Icons.cases,
    Icons.share_outlined,
    Icons.home_work,
    Icons.holiday_village,
    // Icons.card_giftcard_outlined,
    // Icons.card_membership,
  ];

  final List<IconData> product1icons = [
    Icons.logout,
    Icons.backpack,
    Icons.email_outlined,
    Icons.payment,
  ];
  final List<String> productname1 = [
    'Logout',
    'Voucher',
    'Feedback',
    'Support',
  ];
  // _launchURLBrowser() async {
  //   var url = Uri.parse("tel:+91 7019380052");
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  // //from here whats app...............
  // _launchWhatsapp() async {
  //   const url = "https://wa.me/?text=YourTextHere";
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  // void whatsAppOpen() async {
  //   bool whatsapp = await FlutterLaunch.hasApp(name: "whatsapp");
  //
  //   if (whatsapp) {
  //     await FlutterLaunch.launchWhatsapp(
  //         phone: "5534992016100", message: "Hello, flutter_launch");
  //   } else {
  //     print('error');
  //   }
  // }

  // _launchURLEmail() async {
  //   var url = Uri.parse(
  //     //'https://protocoderspoint.com/'
  //       "mailto:rajatrrpalankar@gmail.com?subject=This is Subject Title&body=This is Body of Email");
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
  HomeController _homePageController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int pageIndex = 0;
    GlobalKey<ScaffoldState> _key = GlobalKey();
    var base = 'https://api.gyros.farm/Images/';
    return Scaffold(
      key: _key,
      backgroundColor: MyTheme.t1navbar1,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: MyTheme.t1navbar1,
        automaticallyImplyLeading: false,

        title: Image.asset(
          'lib/assets/images/logo.png',
          fit: BoxFit.cover,scale: 32,
        ),
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.more_vert,color: Colors.black),
              itemBuilder: (context){
                return [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text("Add Banner"),
                  ),
                  const PopupMenuItem<int>(
                    value: 2,
                    child: Text("Logout"),
                  ),
                ];
              },
              onSelected:(value){
                if(value == 0){
                  Get.to(AddBanner());
                  print("My account menu is selected.");
                }else if(value == 1){
                  _homePageController.logout();
                  print("logout");
                }
              }
          ),


        ],
        // actions: [
        //   IconButton(onPressed: (){
        //     _homePageController.logout();
        //   },
        //     icon: Icon(Icons.logout),color: Colors.black,)
        // ],
      ),
      ///drawer: MainDrawer(),
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          color: MyTheme.t1navbar1,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: size.height * 0.25,
                  width: size.width,
                  color: MyTheme.t1navbar1,
                  child: Mycrusial(),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: PhysicalModel(
                    elevation: 2,
                    color: Colors.white,
                    shadowColor: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => ComplaintPage());
                        },
                        child: Container(
                          height: size.height * 0.1,
                          width: size.width,
                          decoration: BoxDecoration(
                            gradient: MyTheme.gradient7,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.03),
                                child: Row(
                                  children: [
                                    Text(
                                      'Complaint Register',
                                      style: GoogleFonts.abhayaLibre(
                                          color: Colors.white,
                                          fontSize: size.height * 0.03,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Spacer(),
                                    IconButton(onPressed: (){
                                      Get.to(()=> const RegistrationList());
                                    },
                                        icon: Icon(Icons.search,color: Colors.white,size: 30,))
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: SizedBox(
                    height: size.height * 0.5,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: size.height * 0.4,
                          childAspectRatio: 4 / 3,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 7,
                          mainAxisExtent: size.height * 0.16,
                        ),
                        itemCount: productname.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return GestureDetector(
                            onTap: () {
                              if (index == 0) {
                                Get.to(() => PdfPage());
                              } else if (index == 1) {
                                Get.to(() => AddTechnician());
                              } else if (index == 2) {
                                Get.to(() => Profoile());
                              } else if (index == 3) {
                                // whatsAppOpen();
                                // _launchWhatsapp();

                                Get.to(() => ComplainList());

                                ///Todo this is showing dark and white mode
                                ///
                                //Get.to(() => TheJwelleryStore());

                                //Get.to(() => CarouselDemo());
                              } else if (index == 4) {
                                Get.defaultDialog(
                                    barrierDismissible: true,
                                    title: "Welcome to JK Roshini",
                                    confirm: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: PhysicalModel(
                                        color: Colors.white,
                                        shadowColor: Colors.blueGrey,
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: InkWell(
                                            onTap: () {
                                              launch('tel:8396000932');
                                            },
                                            child: Container(
                                                height: size.height * 0.04,
                                                width: size.width * 0.3,
                                                color: MyTheme.ThemeColors,
                                                child: Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: [
                                                        const Icon(
                                                          Icons.phone,
                                                          color: Colors.white,
                                                        ),
                                                        SizedBox(
                                                          width: size.width * 0.03,
                                                        ),
                                                        Text(
                                                          'Call',
                                                          style: TextStyle(
                                                            color: MyTheme
                                                                .bacgroundcolors,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ))),
                                          ),
                                        ),
                                      ),
                                    ),
                                    cancel: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: PhysicalModel(
                                        color: Colors.white,
                                        shadowColor: Colors.blueGrey,
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: InkWell(
                                            onTap: () {
                                              _launchWhatsapp();
                                            },
                                            child: Container(
                                                height: size.height * 0.04,
                                                width: size.width * 0.3,
                                                color: MyTheme.ThemeColors,
                                                child: Center(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: [
                                                        Icon(
                                                          Icons.message,
                                                          color: Colors.white,
                                                        ),
                                                        SizedBox(
                                                          width: size.width * 0.03,
                                                        ),
                                                        Text(
                                                          'Whatsapp',
                                                          style: TextStyle(
                                                            color: MyTheme
                                                                .bacgroundcolors,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ))),
                                          ),
                                        ),
                                      ),
                                    ),
                                    middleText:
                                    "We are giving two options to our customer for contact with us.",
                                    backgroundColor: MyTheme.t1containercolor,
                                    titleStyle: GoogleFonts.alatsi(
                                        color: MyTheme.t1Iconcolor,
                                        fontSize: size.height * 0.03,
                                        fontWeight: FontWeight.bold),
                                    middleTextStyle: TextStyle(
                                        color: MyTheme.containercolor5),
                                    radius: 10);
                                // launch('tel:+1 888888888888');
                                //_launchWhatsapp();
                                print('okcasll');
                                //Get.to(() => AssociatePage());
                              } else if (index == 5) {
                                // Get.defaultDialog(
                                //     barrierDismissible: true,
                                //     backgroundColor: MyTheme.t1containercolor,
                                //     title: '',
                                //     content: Column(
                                //       mainAxisSize: MainAxisSize.min,
                                //       children: [
                                //         Directionality(
                                //           textDirection: TextDirection.ltr,
                                //           child: Center(
                                //             child: Padding(
                                //               padding:
                                //                   const EdgeInsets.all(0.0),
                                //               child: TextFormField(
                                //                 decoration: InputDecoration(
                                //                   filled: true,
                                //
                                //                   fillColor: MyTheme
                                //                       .t1bacgroundcolors1,
                                //                   hintText:
                                //                       'Enter Service Name',
                                //                   contentPadding:
                                //                       const EdgeInsets.only(
                                //                           left: 14.0,
                                //                           bottom: 4.0,
                                //                           top: 16.0),
                                //                   focusedBorder:
                                //                       OutlineInputBorder(
                                //                     borderSide: new BorderSide(
                                //                         color: Colors.green),
                                //                     borderRadius:
                                //                         new BorderRadius
                                //                             .circular(10),
                                //                   ),
                                //                   enabledBorder:
                                //                       UnderlineInputBorder(
                                //                     borderSide: new BorderSide(
                                //                         color:
                                //                             Colors.transparent),
                                //                     borderRadius:
                                //                         new BorderRadius
                                //                             .circular(10.0),
                                //                   ),
                                //                   //focusedBorder: InputBorder.none,
                                //                   //enabledBorder: InputBorder.none,
                                //                   // errorBorder: InputBorder.none,
                                //                   // border: InputBorder.none,
                                //
                                //                   border: OutlineInputBorder(
                                //                     borderSide: BorderSide(
                                //                         color: Colors.red,
                                //                         width: 2.0),
                                //                     borderRadius:
                                //                         BorderRadius.circular(
                                //                             10),
                                //                   ),
                                //                   // labelText: "Password",
                                //                   prefixIcon: Padding(
                                //                     padding:
                                //                         EdgeInsets.symmetric(
                                //                             vertical:
                                //                                 size.height *
                                //                                     0.012,
                                //                             horizontal:
                                //                                 size.width *
                                //                                     0.02),
                                //                     child: Image.asset(
                                //                       'lib/assets/images/profile.png',
                                //                       color:
                                //                           MyTheme.t1Iconcolor,
                                //                       height: 10,
                                //                       width: 10,
                                //                     ),
                                //                   ),
                                //                 ),
                                //                 keyboardType: TextInputType
                                //                     .visiblePassword,
                                //                 //obscureText: true,
                                //                 // controller:
                                //                 // _registerComplainController.nameController,
                                //                 // onSaved: (value) {
                                //                 //   _registerComplainController.name = value!;
                                //                 // },
                                //                 // validator: (value) {
                                //                 //   return _registerComplainController
                                //                 //       .validateName(value!);
                                //                 // },
                                //               ),
                                //             ),
                                //           ),
                                //         ),
                                //         // TextField(
                                //         //   //controller: settingsScreenController.categoryNameController,
                                //         //   keyboardType: TextInputType.text,
                                //         //   maxLines: 1,
                                //         //   decoration: InputDecoration(
                                //         //       labelText: 'Service name',
                                //         //       hintMaxLines: 1,
                                //         //       border: OutlineInputBorder(
                                //         //           borderSide: BorderSide(
                                //         //               color: Colors.green,
                                //         //               width: 4.0))),
                                //         // ),
                                //         SizedBox(
                                //           height: 30.0,
                                //         ),
                                //         PhysicalModel(
                                //           color: Colors.white,
                                //           shadowColor: Colors.grey,
                                //           elevation: 4,
                                //           borderRadius:
                                //               BorderRadius.circular(10),
                                //           child: Padding(
                                //             padding: const EdgeInsets.all(3.0),
                                //             child: Container(
                                //               height: size.height * 0.04,
                                //               width: size.width * 0.4,
                                //               decoration: BoxDecoration(
                                //                 color: MyTheme.t1Iconcolor,
                                //                 borderRadius:
                                //                     BorderRadius.circular(10),
                                //               ),
                                //               child: Center(
                                //                 child: Text(
                                //                   'ADD SERVICE',
                                //                   style: TextStyle(
                                //                       color: Colors.white,
                                //                       fontSize: 14.0,
                                //                       fontWeight:
                                //                           FontWeight.w600),
                                //                 ),
                                //               ),
                                //             ),
                                //           ),
                                //         ),
                                //       ],
                                //     ),
                                //     radius: 10.0);
                                ///
                                Get.to(() => ServicesPage());
                              } else if (index == 6) {
                                //Get.to(() => MyHolidayPage());
                              } else if (index == 7) {
                                //Get.to(() => TermsMemberPage());
                              }
                            },
                            child: PhysicalModel(
                              color: Colors.white,
                              elevation: 2,
                              shadowColor: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height:
                                  MediaQuery.of(context).size.height * 0.7,
                                  width:
                                  MediaQuery.of(context).size.width * 0.9,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: SweepGradient(
                                      startAngle: pi * 0.2,
                                      endAngle: pi * 1.8,
                                      colors: [
                                        Colors.blue.shade300,
                                        Colors.yellow.shade500,
                                        Colors.tealAccent,
                                        Colors.green,
                                        Colors.blue.shade300,
                                      ],
                                      stops: <double>[
                                        0.0,
                                        0.25,
                                        0.5,
                                        0.75,
                                        1.0
                                      ],
                                      tileMode: TileMode.clamp,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      PhysicalModel(
                                        elevation: 1,
                                        color: Colors.white,
                                        shadowColor: Colors.blueGrey,
                                        shape: BoxShape.circle,
                                        //borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          height: size.height * 0.105,
                                          width: size.width * 0.21,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            //borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              productimage[index],
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          // Icon(
                                          //   producticons[index],
                                          //   size: size.height * 0.036,
                                          //   color: MyTheme.t1Iconcolor,
                                          // ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.01,
                                      ),
                                      Text(
                                        productname[index],
                                        style: GoogleFonts.alegreya(
                                            color: MyTheme.t1Iconcolor,
                                            fontSize: size.height * 0.015,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // PhysicalModel(
                            //   color: MyTheme.t1containercolor,
                            //   shadowColor: Colors.grey.shade200,
                            //   elevation: 8,
                            //   shape: BoxShape.rectangle,
                            //   borderRadius: BorderRadius.circular(10),
                            //   child: Container(
                            //     height: 100,
                            //     alignment: Alignment.center,
                            //
                            //     //child: Text(myProducts[index]["name"]),
                            //     decoration: BoxDecoration(
                            //         // color: Colors.white,
                            //
                            //         color: MyTheme.t1containercolor,
                            //         borderRadius: BorderRadius.circular(10)),
                            //     child: Column(
                            //       mainAxisAlignment: MainAxisAlignment.center,
                            //       crossAxisAlignment: CrossAxisAlignment.center,
                            //       children: [
                            //         PhysicalModel(
                            //           elevation: 5,
                            //           color: Colors.white,
                            //           shadowColor: Colors.blueGrey,
                            //           borderRadius: BorderRadius.circular(10),
                            //           child: Container(
                            //             height: 60,
                            //             width: 60,
                            //             decoration: BoxDecoration(
                            //               color: Colors.white,
                            //               borderRadius: BorderRadius.circular(10),
                            //             ),
                            //             child: Column(
                            //               mainAxisAlignment:
                            //                   MainAxisAlignment.center,
                            //               crossAxisAlignment:
                            //                   CrossAxisAlignment.center,
                            //               children: [
                            //                 Icon(
                            //                   producticons[index],
                            //                   size: size.height * 0.036,
                            //                   color: MyTheme.t1Iconcolor,
                            //                 ),
                            //                 Text(
                            //                   productname[index],
                            //                   style: TextStyle(
                            //                       color: MyTheme.t1Iconcolor,
                            //                       fontSize: size.height * 0.014,
                            //                       fontWeight: FontWeight.w700),
                            //                 ),
                            //               ],
                            //             ),
                            //           ),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                          );
                        }),
                  ),
                ),
                // SizedBox(
                //   height: 2,
                // ),
                //
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: size.width*0.01),
                //   child: SizedBox(
                //     height: size.height*0.15,
                //     width: size.width,
                //     child: ListView.builder(
                //       shrinkWrap: true,
                //         physics: NeverScrollableScrollPhysics(),
                //         scrollDirection: Axis.horizontal,
                //         itemCount: productname1.length,
                //         itemBuilder: (BuildContext context, int index) {
                //           return Padding(
                //             padding: EdgeInsets.symmetric(
                //                 horizontal: 8, vertical: 0),
                //             child: PhysicalModel(
                //               color: Colors.grey,
                //               shadowColor: Colors.white,
                //               elevation: 7,
                //               shape: BoxShape.rectangle,
                //               borderRadius: BorderRadius.circular(0),
                //               child: InkWell(
                //                 onTap: () {
                //                   if (index == 0) {
                //                     //Get.to(() => ProfilePage());
                //                     //Get.to(() => LoginPage());
                //                     //Get.to(() => WaterTracking());
                //                   } else if (index == 1) {
                //                     //Get.to(() => MyVoucherPage());
                //                   } else if (index == 2) {
                //                     // Get.defaultDialog(
                //                     //     title: "",
                //                     //     //middleText: "",
                //                     //     backgroundColor: Colors.transparent,
                //                     //     // titleStyle:
                //                     //     //     TextStyle(color: Colors.white),
                //                     //     // middleTextStyle:
                //                     //     //     TextStyle(color: Colors.white),
                //                     //     //textConfirm: "Confirm",
                //                     //     //textCancel: "Cancel",
                //                     //     //cancelTextColor: Colors.white,
                //                     //     //confirmTextColor: Colors.white,
                //                     //     //buttonColor: Colors.red,
                //                     //     barrierDismissible: true,
                //                     //     radius: 0,
                //                     //     content: Column(
                //                     //       children: [
                //                     //         Container(
                //                     //           height: size.height*0.05,
                //                     //           width: size.width,
                //                     //           decoration: BoxDecoration(
                //                     //               color: Colors.red,
                //                     //               border: Border.all(
                //                     //                   color:
                //                     //                   MyTheme.ThemeColors,
                //                     //                   width: 3),
                //                     //               image: DecorationImage(
                //                     //                 image: AssetImage(
                //                     //                     'lib/assets/rotate2.jpeg'),
                //                     //                 fit: BoxFit.fill,
                //                     //               )),
                //                     //           child: TextField(
                //                     //             maxLines: 21,
                //                     //             cursorColor:
                //                     //             MyTheme.t1containercolor,
                //                     //             style: TextStyle(
                //                     //                 color: MyTheme.t1containercolor,
                //                     //                 fontSize: 10),
                //                     //             decoration: InputDecoration(
                //                     //               //fillColor: Colors.grey.shade200,
                //                     //               contentPadding:
                //                     //               EdgeInsets.symmetric(
                //                     //                   vertical: 20,
                //                     //                   horizontal: 20),
                //                     //               // border: OutlineInputBorder(
                //                     //               //     borderRadius: BorderRadius.circular(0),
                //                     //               //     borderSide: BorderSide(
                //                     //               //       color: Colors.red,
                //                     //               //       width: 1,
                //                     //               //     )),
                //                     //               hintText: 'Your  Feedback',
                //                     //               hintStyle: TextStyle(
                //                     //                   color: Colors.grey,
                //                     //                   fontSize: 10,
                //                     //                   fontWeight:
                //                     //                   FontWeight.w500),
                //                     //
                //                     //               disabledBorder:
                //                     //               InputBorder.none,
                //                     //               border: InputBorder.none,
                //                     //               filled: true,
                //                     //             ),
                //                     //           ),
                //                     //         ),
                //                     //         InkWell(
                //                     //           onTap: () {
                //                     //             Get.back();
                //                     //           },
                //                     //           child: Container(
                //                     //               height: size.height*0.04,
                //                     //               width: size.width,
                //                     //               decoration: BoxDecoration(
                //                     //                 color: MyTheme.t1containercolor,
                //                     //               ),
                //                     //               child: Center(
                //                     //                   child: Text(
                //                     //                     "Send",
                //                     //                     style: TextStyle(
                //                     //                       color: Colors.white,
                //                     //                     ),
                //                     //                   ))),
                //                     //         ),
                //                     //       ],
                //                     //     ));
                //                     //Get.to(() => HotDeals());
                //                     //Get.to(() => WalkTracking());
                //                   } else if (index == 3) {
                //                     // FlutterPhoneDirectCaller.callNumber(
                //                     //     '+911140193528');
                //                     //launch('tel:7019380053');
                //                     // _launchURLBrowser();
                //                     //launch('tel:+91 7019380052');
                //                     print('call');
                //
                //                     ///Todo this is showing dark and white mode
                //                     ///
                //                     //Get.to(() => TheJwelleryStore());
                //
                //                     //Get.to(() => CarouselDemo());
                //                   }
                //                 },
                //                 child: Container(
                //                   height: size.height*0.12,
                //                   width: size.width*0.2,
                //                   color: Colors.white70,
                //                   child: Column(
                //                     mainAxisAlignment: MainAxisAlignment.center,
                //                     children: [
                //                       Icon(
                //                         product1icons[index],
                //                         color: MyTheme.t1containercolor,
                //                         size: 26,
                //                       ),
                //                       SizedBox(
                //                         height: 20,
                //                       ),
                //                       Text(
                //                         productname1[index],
                //                         style: TextStyle(
                //                             color: Colors.grey.shade600,
                //                             fontSize: 9,
                //                             fontWeight: FontWeight.w500),
                //                       ),
                //                     ],
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           );
                //         }),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Mycrusial extends StatelessWidget {
  final _sliderKey = GlobalKey();
  HomeController _homePageController = Get.put(HomeController());
  Mycrusial({Key? key}) : super(key: key);

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];
  // final List<String> images = [
  //   "https://images.unsplash.com/photo-1625047509248-ec889cbff17f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGFjJTIwcmVwYWlyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  //   "https://images.unsplash.com/photo-1607400201515-c2c41c07d307?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGFjJTIwcmVwYWlyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  //   "https://images.unsplash.com/photo-1621905251918-48416bd8575a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YWMlMjByZXBhaXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
  //   "https://images.unsplash.com/photo-1604754742629-3e5728249d73?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
  //   "https://images.unsplash.com/photo-1513366884929-f0b3bedfb653?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
  //   "https://images.unsplash.com/photo-1577801622187-9a1076d049da?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGFjJTIwcmVwYWlyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  //   "https://images.unsplash.com/photo-1615870123253-f3de8aa89e24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OXxjVlFHYWlJSTI3OHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
  // ];
  final bool _isPlaying = true;

  //get _sliderKey => null;

  @override
  Widget build(BuildContext context) {
    var base = 'https://api.gyros.farm/Images/';
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:
      Obx(()=> (_homePageController.isLoading.value)
          ? Center(child: CircularProgressIndicator())
          : _homePageController.getsliderbaner?.result == null
          ? Center(child: Text('No data'),)
          :
      SizedBox(
        height: size.height * 0.25,
        child: Container(
          height: size.height * 0.25,
          child: CarouselSlider.builder(
            key: _sliderKey,
            unlimitedMode: true,
            autoSliderTransitionTime: Duration(seconds: 1),
            slideBuilder: (index) {
              return
                Container(
                  height: 260,
                  alignment: Alignment.center,
                  child: Container(
                    height: size.height * 0.38,
                    width: size.width,
                    child: Image.network(
                      '${_homePageController.getsliderbaner!.result?[index].image}',
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        //if image not comming in catagary then we have to purchase
                        return Text(
                          'No Image',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        );
                      },
                    ),
                  ),
                );
            },
            slideTransform: DefaultTransform(),
            slideIndicator: CircularSlideIndicator(
              indicatorBorderWidth: 2,
              indicatorRadius: 4,
              itemSpacing: 15,
              currentIndicatorColor: MyTheme.t1Iconcolor,
              padding: EdgeInsets.only(bottom: 3),
            ),
            itemCount: _homePageController.getsliderbaner!.result!.length,
            enableAutoSlider: true,
          ),
        ),
      ),
      ),
    );
  }
}

_makingPhoneCall() async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: "8396000932",
  );
  //var url = Uri.parse("tel:9709878945");
  if (await canLaunch(launchUri.toString())) {
    await launch(launchUri.toString(),
        forceSafariVC: true, //for ios
        forceWebView: true, //for android
        enableJavaScript: true,
        enableDomStorage: true //for
    );
  } else {
    print('The action is not support');
  }
}
