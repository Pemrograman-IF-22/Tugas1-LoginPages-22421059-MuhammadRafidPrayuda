import 'package:flutter/material.dart';
import 'package:login/auth/components/components_form_login.dart';

class BodyLogin extends StatefulWidget {
  const BodyLogin({super.key});

  @override
  State<BodyLogin> createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  var isLoading = false;
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : ListView(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            padding: const EdgeInsets.all(5.0),
            children: <Widget>[
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15.0, top: 10.0),
                    child: Image.asset(
                      'assets/images/logo-apps.png',
                      fit: BoxFit.contain,
                      height: 25,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.only(top: 10.0),
                    child: const Text(
                      'MyApp',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              SafeArea(
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          ClipOval(
                            child: Image.asset(
                              'assets/images/logo-apps.png',
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                              errorBuilder: (BuildContext context,
                                  Object exception, StackTrace? stackTrace) {
                                return Image.asset(
                                  'assets/images/logo-apps.png',
                                  height: 120,
                                  width: 120,
                                  fit: BoxFit.cover,
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          const Text(
                            'Silahkan Masuk Akun Anda',
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nunito',
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          const ComponentsFormLogin(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
