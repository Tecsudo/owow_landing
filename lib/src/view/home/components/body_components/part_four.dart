import 'package:flutter/material.dart';

class MidPartFour extends StatefulWidget {
  const MidPartFour({
    super.key,
    required this.screenSize,
  });
  final Size screenSize;

  @override
  State<MidPartFour> createState() => _MidPartFourState();
}

class _MidPartFourState extends State<MidPartFour> {
  final _formKey = GlobalKey<FormState>();

  // TextEditingController _name = TextEditingController();

  // TextEditingController _email = TextEditingController();

  // TextEditingController _phone = TextEditingController();

  // TextEditingController _company = TextEditingController();

  // TextEditingController _details = TextEditingController();

  // final List<String> _list = [
  //   'Developer',
  //   'Designer',
  //   'Consultant',
  //   'Student',
  // ];

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
                Expanded(
                  flex: 2,
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
                            onPressed: () {},
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
                Expanded(
                  flex: 6,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: widget.screenSize.height * .05),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'I’m inquiring about:',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // FakeTextField(name: 'Support'),

                              //TODO: fix this dropdown
                              // CustomDropdown<String>(
                              //   hintText: 'Select job role',
                              //   items: _list,
                              //   onChanged: (value) {
                              //     log('changing value to: $value');
                              //   },
                              // )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Container(
                              //   decoration: BoxDecoration(
                              //     color: const Color(0xFFB7CAA9),
                              //     borderRadius: BorderRadius.circular(5.0),
                              //   ),
                              //   child: Padding(
                              //     padding: const EdgeInsets.only(
                              //         left: 15, right: 15, top: 5),
                              //     child: TextFormField(
                              //       controller: _name,
                              //       style: const TextStyle(
                              //         color: Color(0xFF132513),
                              //         fontSize: 18,
                              //         fontWeight: FontWeight.w400,
                              //         height: 0,
                              //       ),
                              //       decoration: InputDecoration(
                              //         border: InputBorder.none,
                              //         hintText: 'user@exapmle.com',
                              //         helperText: 'Email',
                              //         hintStyle: Theme.of(context)
                              //             .textTheme
                              //             .bodyLarge
                              //             ?.copyWith(
                              //               color: const Color(0xFF5E6E59),
                              //             ),
                              //       ),
                              //       validator: (value) {
                              //         if (value == null || value.isEmpty) {
                              //           return 'Please enter your  email';
                              //         }
                              //         // else if (!isEmailOrPhoneNumber(value)) {
                              //         //   return 'Please enter a valid email';
                              //         // }
                              //         return null;
                              //       },
                              //     ),
                              //   ),
                              // ),
                              FakeTextField(name: 'Name'),
                              FakeTextField(name: 'Company'),

                              // Text(
                              //   'name',
                              //   style: TextStyle(
                              //     fontSize: 20,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                              // Text(
                              //   'company',
                              //   style: TextStyle(
                              //     fontSize: 20,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FakeTextField(name: 'Email'),
                              FakeTextField(name: 'Phone'),
                              // Text(
                              //   'email',
                              //   style: TextStyle(
                              //     fontSize: 20,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                              // Text(
                              //   'phone',
                              //   style: TextStyle(
                              //     fontSize: 20,
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: FakeTextField(name: 'Details'),
                          // Text(
                          //   'details',
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
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

class FakeTextField extends StatelessWidget {
  const FakeTextField({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 313,
      height: 50,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 313,
              height: 50,
              decoration: ShapeDecoration(
                color: const Color(0xFFF4AE2C),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 3,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFED7B23),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          Positioned(
            left: 17,
            top: 14,
            child: SizedBox(
              width: 132,
              height: 27,
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
