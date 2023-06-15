import 'package:flutter/material.dart';
import 'package:mm_flutter_app/data/models/user/user_provider.dart';
import 'package:mm_flutter_app/widgets/atoms/text_form_field_widget.dart';
import 'package:provider/provider.dart';

class YourName extends StatelessWidget {
  YourName({Key? key}) : super(key: key);

  final nameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final user = userProvider.user;
    nameController.text = user!.fullName;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your name'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormFieldWidget(
                textController: nameController,
                onPressed: (v) {},
                label: 'Name',
                obscureText: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    nameController.text = user.fullName;
                    return '''Name can't be empty''';
                  }
                  return null;
                },
              ),
              const Expanded(child: SizedBox()),
              Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          await userProvider
                              .updateUserData(name: nameController.text)
                              .then((value) => {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text('Your name is updated.'),
                                    )),
                                    Navigator.of(context).pop()
                                  });
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
