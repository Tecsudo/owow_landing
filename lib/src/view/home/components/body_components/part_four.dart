import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:owow/src/view/common/background.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({
    super.key,
    required this.screenSize,
  });
  final Size screenSize;

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final companyController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final detailsController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    companyController.dispose();
    emailController.dispose();
    phoneController.dispose();
    detailsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: Form(
        key: _formKey,
        child: SizedBox(
            height: 600,
            child: Row(
              children: [
                //? title and button
                Expanded(
                  flex: 1,
                  child: _leftLayout(context),
                ),
                //? contact forms
                Expanded(
                  flex: 3,
                  child: _rightLayout(context),
                ),
              ],
            )),
      ),
    );
  }

  Widget _rightLayout(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 400,
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
                  width: 300,
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
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 400,
                  child: CustomTextFormField(
                    controller: emailController,
                    hintText: 'Email',
                    screenSize: widget.screenSize,
                    onChanged: (value) {
                      log(value, name: 'Form|Email');
                    },
                    validator: (String? value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  width: 300,
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
            height: 120,
            width: 800,
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
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  surfaceTintColor: Color(0xFFE09405),
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
                        const SnackBar(content: Text('Processing Data')));
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
                  ),
                )),
          )
        ],
      ),
    );
  }

  Widget _leftLayout(BuildContext context) {
    return const Center(
      child: Text(
        'Let\'s Connect?',
        style: TextStyle(
          color: Color(0xFFFF8E49),
          fontSize: 36,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
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
