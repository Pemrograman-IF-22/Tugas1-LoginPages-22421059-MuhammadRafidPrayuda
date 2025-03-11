import 'package:flutter/material.dart';
import 'package:login/auth/components/components_form_login.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      padding: const EdgeInsets.all(5.0),
      children: [
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          'Login Your Account',
          maxLines: null,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        const ComponentsFormLogin()
      ],
    );
  }
}
