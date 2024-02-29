import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:owow/core/constant/gap_constant.dart';
import 'package:owow/core/constant/size_constant.dart';
import 'package:owow/core/extensions/responsive_framwork.dart';
import 'package:owow/src/view/common/background.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../provider/contact_us.dart';

class ContactUsLayout extends StatefulWidget {
  const ContactUsLayout({
    super.key,
    required this.screenSize,
  });
  final Size screenSize;

  @override
  State<ContactUsLayout> createState() => _ContactUsLayoutState();
}

class _ContactUsLayoutState extends State<ContactUsLayout> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _companyController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _detailsController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _companyController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _detailsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HomeBackground(
      child: Form(
        key: _formKey,
        child: SizedBox(
          height: context.isDisplayLargeThanTablet ? 600 : 700,
          child: ResponsiveRowColumn(
            columnMainAxisAlignment: MainAxisAlignment.center,
            columnSpacing: 32,
            rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
            layout: context.isDisplayLargeThanTablet
                ? ResponsiveRowColumnType.ROW
                : ResponsiveRowColumnType.COLUMN,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 2,
                columnOrder: 1,
                child: _leftLayout(context),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 6,
                columnOrder: 2,
                child: _rightLayout(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rightLayout(BuildContext context) {
    return SizedBox(
      height: context.isDisplayLargeThanTablet ? 400 : 530,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: context.isDisplayLargeThanTablet ? 80 : 180,
            child: ResponsiveRowColumn(
              columnMainAxisAlignment: MainAxisAlignment.center,
              columnSpacing: 32,
              rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
              layout: context.isDisplayLargeThanTablet
                  ? ResponsiveRowColumnType.ROW
                  : ResponsiveRowColumnType.COLUMN,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 4,
                  columnOrder: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConstant.p12),
                    child: CustomTextFormField(
                      controller: _nameController,
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
                      hintStyle: Theme.of(context).textTheme.labelLarge!,
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 4,
                  columnOrder: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConstant.p12),
                    child: CustomTextFormField(
                      controller: _companyController,
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
                      hintStyle: Theme.of(context).textTheme.labelLarge!,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: context.isDisplayLargeThanTablet ? 80 : 170,
            child: ResponsiveRowColumn(
              columnMainAxisAlignment: MainAxisAlignment.center,
              columnSpacing: 32,
              rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
              layout: context.isDisplayLargeThanTablet
                  ? ResponsiveRowColumnType.ROW
                  : ResponsiveRowColumnType.COLUMN,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 4,
                  columnOrder: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConstant.p12),
                    child: CustomTextFormField(
                      controller: _emailController,
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
                      hintStyle: Theme.of(context).textTheme.labelLarge!,
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 4,
                  columnOrder: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConstant.p12),
                    child: CustomTextFormField(
                      controller: _phoneController,
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
                      hintStyle: Theme.of(context).textTheme.labelLarge!,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: double.infinity,
              maxHeight: 100,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: SizeConstant.p12),
              child: CustomTextFormField(
                controller: _detailsController,
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
                hintStyle: Theme.of(context).textTheme.labelLarge!,
              ),
            ),
          ),
          GapConstant.h20,
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 250,
              maxHeight: 50,
            ),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  surfaceTintColor: const Color(0xFFE09405),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  shadowColor: Colors.black.withOpacity(.3),
                  elevation: 4,
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    contactUsForm(
                            name: _nameController.text,
                            email: _emailController.text,
                            company: _companyController.text,
                            phone: _phoneController.text,
                            details: _detailsController.text)
                        .then((value) {
                      log(value);
                      _nameController.clear();
                      _emailController.clear();
                      _companyController.clear();
                      _phoneController.clear();
                      _detailsController.clear();
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Data Saved')));
                    });
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
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Let\'s Connect?',
          style: TextStyle(
            color: Color(0xFFFF8E49),
            fontSize: 36,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          '{Book a demo ... }',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
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
    this.enabledBorderColor = const Color(0xFFFF9148),
    this.enabledBorderWidth = 2,
    this.focusedBorderColor = const Color(0xFFFF9148),
    this.focusedBorderWidth = 3,
    this.errorBorderColor = Colors.red,
    this.errorBorderWidth = 2,
    this.focusedErrorBorderColor = Colors.red,
    this.focusedErrorBorderWidth = 3,
    required this.screenSize,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    this.borderRadius = const BorderRadius.all(Radius.circular(15.0)),
    required this.hintStyle,

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
  final EdgeInsetsGeometry contentPadding;
  final BorderRadius borderRadius;
  final TextStyle hintStyle;
  final double enabledBorderWidth;
  final double focusedBorderWidth;
  final double errorBorderWidth;
  final double focusedErrorBorderWidth;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final Color errorBorderColor;
  final Color focusedErrorBorderColor;

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
        hintStyle: hintStyle,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: enabledBorderColor, width: enabledBorderWidth),
            borderRadius: borderRadius),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: focusedBorderColor, width: focusedBorderWidth),
            borderRadius: borderRadius),
        errorStyle: const TextStyle(color: Colors.red, fontSize: 16),
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: errorBorderColor, width: errorBorderWidth),
            borderRadius: borderRadius),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: focusedErrorBorderColor, width: focusedErrorBorderWidth),
            borderRadius: borderRadius),

      ),
    );
  }
}
