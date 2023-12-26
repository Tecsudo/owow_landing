import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Form',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Get in Touch'),
        ),
        body: ContactForm(),
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                // Add other styling properties as needed
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: companyController,
              decoration: const InputDecoration(
                labelText: 'Company',
                // Add other styling properties as needed
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your company name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                // Add other styling properties as needed
              ),
              validator: (value) {
                if (value!.isEmpty || !value.contains('@')) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
            TextFormField(
              controller: phoneController,
              decoration: const InputDecoration(
                labelText: 'Phone',
                // Add other styling properties as needed
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
            ),
            TextFormField(
              controller: detailsController,
              decoration: const InputDecoration(
                labelText: 'Details',
                // Add other styling properties as needed
              ),
              maxLines: 5, // Makes it a multi-line text field for details
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter details';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a Snackbar
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Processing Data')));
                    // Here, you would usually send the data to the server or elsewhere
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
