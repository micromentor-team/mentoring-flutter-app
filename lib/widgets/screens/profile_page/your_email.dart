import 'package:flutter/material.dart';
import 'package:mm_flutter_app/widgets/atoms/text_form_field_widget.dart';
import 'package:provider/provider.dart';

import '../../../data/models/user/user_provider.dart';

class YourEmail extends StatelessWidget {
   YourEmail({Key? key}) : super(key: key);

  final emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;
    emailController.text = user!.email;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your email'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormFieldWidget(
                  textController: emailController,
                  onPressed: (v) {},
                  label: 'Email',
                  validator: (value) {
                    if (value!.isEmpty) {
                      emailController.text = user.email;
                      return '''Email can't be empty''';
                    }
                  },
                  obscureText: false),
              const SizedBox(
                height: 15,
              ),
              const Expanded(child: SizedBox()),
              Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          await userProvider.updateUserData(
                              email: emailController.text);
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Your email is updated.'),
                          ));
                          Navigator.of(context).pop();
                        }
                      },
                      child: const Text('Save'))),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      )),
    );
  }
}
