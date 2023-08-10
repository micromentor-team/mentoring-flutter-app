import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mm_flutter_app/__generated/schema/schema.graphql.dart';
import 'package:mm_flutter_app/constants/app_constants.dart';
import 'package:mm_flutter_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

import '../../../utilities/utility.dart';
import '../../atoms/text_form_field_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  TextEditingController? textController4;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String? firstName;
  String? lastName;
  String? email;
  String? password;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    super.dispose();
  }

  _openHomeScreen(BuildContext context) {
    context.go(Routes.home.path);
  }

  @override
  Widget build(BuildContext context) {
    // TODO use theme on this screen
    // final ThemeData theme = Theme.of(context);
    final userProvider = Provider.of<UserProvider>(context);
    final mediaQuery = MediaQuery.of(context).size;
    final AppLocalizations l10n = AppLocalizations.of(context)!;

    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: SizedBox(
                      width: 360,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 20),
                            child: Image.asset(
                              'assets/images/MicroMentor.png',
                              // height: mediaQuery.height*0.045,
                              fit: BoxFit.contain,
                              width: 180,
                            ),
                          ),
                          Text(
                            'Join the MicroMentor community',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: mediaQuery.height * 0.02,
                          ),
                          Text(
                            'Create an account using your email address',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.02,
                  ),
                  SizedBox(
                    width: 360,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormFieldWidget(
                            textController: textController1,
                            label: "First Name",
                            onPressed: (value) {
                              setState(() {
                                firstName = value;
                              });
                            },
                            obscureText: false),
                        SizedBox(
                          height: mediaQuery.height * 0.01,
                        ),
                        TextFormFieldWidget(
                            textController: textController2,
                            label: "Last Name",
                            onPressed: (value) {
                              setState(() {
                                lastName = value;
                              });
                            },
                            obscureText: false),
                        SizedBox(
                          height: mediaQuery.height * 0.01,
                        ),
                        TextFormFieldWidget(
                            textController: textController3,
                            label: "Email address",
                            onPressed: (value) {
                              setState(() {
                                email = value;
                              });
                            },
                            obscureText: false),
                        SizedBox(
                          height: mediaQuery.height * 0.01,
                        ),
                        TextFormFieldWidget(
                            textController: textController4,
                            label: "Password",
                            onPressed: (value) {
                              setState(() {
                                password = value;
                              });
                            },
                            obscureText: true),
                        SizedBox(
                          height: mediaQuery.height * 0.025,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            debugPrint('Button pressed ...');
                            final router = GoRouter.of(context);
                            final scaffoldManager =
                                ScaffoldMessenger.of(context);

                            final signUpResult = await userProvider.signUpUser(
                              input: Input$UserSignUpInput(
                                fullName: '$firstName $lastName',
                                email: email,
                                password: password,
                                deviceUuid: await AppUtility.getUuid(),
                              ),
                            );
                            final signUpError = signUpResult.gqlQueryResult
                                .exception?.graphqlErrors.firstOrNull?.message;
                            if (signUpError != null) {
                              if (signUpError == 'userAlreadyExists') {
                                scaffoldManager.showSnackBar(
                                  SnackBar(
                                    content: Text(l10n.userAlreadyExists),
                                  ),
                                );
                              } else if (signUpError == 'invalidPhoneNumber') {
                                scaffoldManager.showSnackBar(SnackBar(
                                  content: Text(l10n.askForValidCredentials),
                                ));
                              }
                            } else {
                              router.push(Routes.root.path);
                            }

                            if (context.mounted) {
                              _openHomeScreen(context);
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height * 0.03,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 8),
                        child: Text(
                          'Or sign up using...',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        // mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5, 0, 5, 0),
                            child: SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {
                                  debugPrint('Button pressed ...');
                                },
                                child: const FaIcon(
                                  FontAwesomeIcons.facebookF,
                                  size: 13,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5, 0, 5, 0),
                            child: SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {
                                  debugPrint('Button pressed ...');
                                },
                                child: const FaIcon(
                                  FontAwesomeIcons.google,
                                  size: 13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
