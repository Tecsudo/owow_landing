import 'dart:developer';

import 'package:flutter/material.dart';

class MidPartFour extends StatefulWidget {
  const MidPartFour({
    super.key,
    required this.screenSize,
    required this.contactUsKey,
  });
  final Size screenSize;
  final GlobalKey contactUsKey;

  @override
  State<MidPartFour> createState() => _MidPartFourState();
}

class _MidPartFourState extends State<MidPartFour> {
  final _formKey = GlobalKey<FormState>();

  // Create a text controller for each field
  final nameController = TextEditingController();
  final companyController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final detailsController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    nameController.dispose();
    companyController.dispose();
    emailController.dispose();
    phoneController.dispose();
    detailsController.dispose();
    super.dispose();
  }

  // final GlobalKey contactUsKey;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Form(
        key: _formKey,
        child: Container(
            height: widget.screenSize.height * .7,
            margin: EdgeInsets.symmetric(
              horizontal: widget.screenSize.width * .03,
            ),
            child: Row(
              children: [
                //? title and button
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'GET IN TOUCH',
                        style: TextStyle(
                          color: Color(0xFFFF8E49),
                          fontSize: 36,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              surfaceTintColor: const Color(0xFFF4AE2C),
                              // surfaceTintColor: Colors.white,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              shadowColor: Colors.black.withOpacity(.3),
                              elevation: 4,
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // If the form is valid, display a Snackbar
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Data')));
                                // Here, you would usually send the data to the server or elsewhere
                              }
                            },
                            child: const Text(
                              'Continue',
                              style: TextStyle(
                                color: Color(0xFFFF9148),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                //? contact forms
                Expanded(
                  flex: 3,
                  child: Container(
                    height: widget.screenSize.height * .35,
                    margin: EdgeInsets.symmetric(
                        horizontal: widget.screenSize.width * .05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: widget.screenSize.height * .1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: widget.screenSize.width * .295,
                                child: CustomTextFormField(
                                  controller: nameController,
                                  hintText: 'Name',
                                  screenSize: widget.screenSize,
                                  onChanged: (value) {
                                    log(value, name: 'Form|Name');
                                  },
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your name';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                width: widget.screenSize.width * .25,
                                child: CustomTextFormField(
                                  controller: companyController,
                                  hintText: 'Company',
                                  screenSize: widget.screenSize,
                                  onChanged: (value) {
                                    log(value, name: 'Form|Company');
                                  },
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your company name';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: widget.screenSize.height * .1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: widget.screenSize.width * .346,
                                child: CustomTextFormField(
                                  controller: emailController,
                                  hintText: 'Email',
                                  screenSize: widget.screenSize,
                                  onChanged: (value) {
                                    log(value, name: 'Form|Email');
                                  },
                                  validator: (String? value) {
                                    if (value!.isEmpty ||
                                        !value.contains('@')) {
                                      return 'Please enter a valid email';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                width: widget.screenSize.width * .2,
                                child: CustomTextFormField(
                                  controller: phoneController,
                                  hintText: 'Phone',
                                  screenSize: widget.screenSize,
                                  onChanged: (value) {
                                    log(value, name: 'Form|Phone');
                                  },
                                  validator: (String? value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter your phone number';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: widget.screenSize.height * .15,
                          width: widget.screenSize.width * .58,
                          child: CustomTextFormField(
                            controller: detailsController,
                            screenSize: widget.screenSize,
                            expands: true,
                            maxLines: null,
                            hintText: 'Details',
                            inputType: TextInputType.multiline,
                            onChanged: (value) {
                              log(value, name: 'Form|Details');
                            },
                            validator: (String? value) {
                              if (value!.isEmpty) {
                                return 'Please enter details';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.validator,
    this.inputType = TextInputType.text,
    this.textAlign = TextAlign.left,
    this.onChanged,
    this.expands = false,
    this.maxLines = 1,
    required this.screenSize,
  });
  final String hintText;
  final FormFieldValidator<String> validator;
  final TextInputType inputType;
  final TextEditingController controller;
  final TextAlign textAlign;
  final Size screenSize;
  final bool expands;
  final int? maxLines;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      textAlign: textAlign,
      validator: validator,
      expands: expands,
      maxLines: maxLines,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelLarge,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFFF9148), width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFFF9148), width: 3.0),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        errorStyle: const TextStyle(
          color: Colors.red,
          fontSize: 16,
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 3,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class MidPartFour extends StatelessWidget {
//   const MidPartFour({
//     super.key,
//     required this.screenSize,
//     required this.contactUsKey,
//   });
//   final Size screenSize;
//   final GlobalKey contactUsKey;

//   // final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomRight,
//       child: Form(
//         key: contactUsKey,
//         child: Container(
//             height: screenSize.height * .7,
//             margin: EdgeInsets.symmetric(
//               horizontal: screenSize.width * .03,
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'GET IN TOUCH',
//                         style: TextStyle(
//                           color: Color(0xFFFF8E49),
//                           fontSize: 36,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       SizedBox(
//                         width: 250,
//                         height: 50,
//                         child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               surfaceTintColor: const Color(0xFFF4AE2C),
//                               // surfaceTintColor: Colors.white,
//                               backgroundColor: Colors.white,
//                               foregroundColor: Colors.black,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10)),
//                               shadowColor: Colors.black.withOpacity(.3),
//                               elevation: 4,
//                             ),
//                             onPressed: () {},
//                             child: const Text(
//                               'Continue',
//                               style: TextStyle(
//                                 color: Color(0xFFFF9148),
//                                 fontSize: 16,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w600,
//                                 height: 0,
//                               ),
//                             )),
//                       )
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   flex: 6,
//                   child: Container(
//                     margin:
//                         EdgeInsets.symmetric(vertical: screenSize.height * .05),
//                     child: const Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         SizedBox(
//                           height: 50,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Text(
//                                 'I’m inquiring about:',
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               // FakeTextField(name: 'Support'),

//                               //TODO: fix this dropdown
//                               // CustomDropdown<String>(
//                               //   hintText: 'Select job role',
//                               //   items: _list,
//                               //   onChanged: (value) {
//                               //     log('changing value to: $value');
//                               //   },
//                               // )
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               // Container(
//                               //   decoration: BoxDecoration(
//                               //     color: const Color(0xFFB7CAA9),
//                               //     borderRadius: BorderRadius.circular(5.0),
//                               //   ),
//                               //   child: Padding(
//                               //     padding: const EdgeInsets.only(
//                               //         left: 15, right: 15, top: 5),
//                               //     child: TextFormField(
//                               //       controller: _name,
//                               //       style: const TextStyle(
//                               //         color: Color(0xFF132513),
//                               //         fontSize: 18,
//                               //         fontWeight: FontWeight.w400,
//                               //         height: 0,
//                               //       ),
//                               //       decoration: InputDecoration(
//                               //         border: InputBorder.none,
//                               //         hintText: 'user@exapmle.com',
//                               //         helperText: 'Email',
//                               //         hintStyle: Theme.of(context)
//                               //             .textTheme
//                               //             .bodyLarge
//                               //             ?.copyWith(
//                               //               color: const Color(0xFF5E6E59),
//                               //             ),
//                               //       ),
//                               //       validator: (value) {
//                               //         if (value == null || value.isEmpty) {
//                               //           return 'Please enter your  email';
//                               //         }
//                               //         // else if (!isEmailOrPhoneNumber(value)) {
//                               //         //   return 'Please enter a valid email';
//                               //         // }
//                               //         return null;
//                               //       },
//                               //     ),
//                               //   ),
//                               // ),
//                               FakeTextField(name: 'Name'),
//                               FakeTextField(name: 'Company'),

//                               // Text(
//                               //   'name',
//                               //   style: TextStyle(
//                               //     fontSize: 20,
//                               //     fontWeight: FontWeight.bold,
//                               //   ),
//                               // ),
//                               // Text(
//                               //   'company',
//                               //   style: TextStyle(
//                               //     fontSize: 20,
//                               //     fontWeight: FontWeight.bold,
//                               //   ),
//                               // ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               FakeTextField(name: 'Email'),
//                               FakeTextField(name: 'Phone'),
//                               // Text(
//                               //   'email',
//                               //   style: TextStyle(
//                               //     fontSize: 20,
//                               //     fontWeight: FontWeight.bold,
//                               //   ),
//                               // ),
//                               // Text(
//                               //   'phone',
//                               //   style: TextStyle(
//                               //     fontSize: 20,
//                               //     fontWeight: FontWeight.bold,
//                               //   ),
//                               // ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: 50,
//                           child: FakeTextField(name: 'Details'),
//                           // Text(
//                           //   'details',
//                           //   style: TextStyle(
//                           //     fontSize: 20,
//                           //     fontWeight: FontWeight.bold,
//                           //   ),
//                           // ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             )),
//       ),
//     );
//   }
// }

// class FakeTextField extends StatelessWidget {
//   const FakeTextField({
//     super.key,
//     required this.name,
//   });

//   final String name;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 313,
//       height: 50,
//       child: Stack(
//         children: [
//           Positioned(
//             left: 0,
//             top: 0,
//             child: Container(
//               width: 313,
//               height: 50,
//               decoration: ShapeDecoration(
//                 color: const Color(0xFFF4AE2C),
//                 shape: RoundedRectangleBorder(
//                   side: const BorderSide(
//                     width: 3,
//                     strokeAlign: BorderSide.strokeAlignCenter,
//                     color: Color(0xFFED7B23),
//                   ),
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 17,
//             top: 14,
//             child: SizedBox(
//               width: 132,
//               height: 27,
//               child: Text(
//                 name,
//                 style: const TextStyle(
//                   color: Colors.black,
//                   fontSize: 18,
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w400,
//                   height: 0,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
