import 'package:flutter/material.dart';
import 'package:cupertino_text_button/cupertino_text_button.dart';

class ComponentsFormLogin extends StatefulWidget {
  const ComponentsFormLogin({super.key});

  @override
  State<ComponentsFormLogin> createState() => _ComponentsFormLoginState();
}

class _ComponentsFormLoginState extends State<ComponentsFormLogin> {
  bool? remember = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            autofocus: false,
            showCursor: true,
            cursorColor: Colors.teal,
            cursorErrorColor: Colors.red,
            textAlign: TextAlign.start,
            keyboardType: TextInputType.text,
            scrollPhysics: const ScrollPhysics(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              alignLabelWithHint: true,
              label: const Text('username'),
              prefixIcon: const Icon(
                size: 30,
                color: Colors.teal,
                Icons.account_box_rounded,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22.0),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            autofocus: false,
            showCursor: true,
            cursorColor: Colors.teal,
            cursorErrorColor: Colors.red,
            textAlign: TextAlign.start,
            scrollPhysics: const ScrollPhysics(),
            keyboardType: TextInputType.visiblePassword,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              alignLabelWithHint: true,
              label: const Text('password'),
              prefixIcon: const Icon(
                size: 30,
                color: Colors.teal,
                Icons.lock_rounded,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22.0),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(1.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: remember,
                      side: const BorderSide(
                        width: 1,
                        color: Color(0xFF393e46),
                      ),
                      activeColor: Colors.teal,
                      onChanged: (value) {
                        setState(
                          () {
                            remember = value;
                          },
                        );
                      },
                    ),
                    const Text(
                      "Tetap Masuk",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                CupertinoTextButton(
                  padding: const EdgeInsets.only(right: 20.0),
                  text: "Lupa Password",
                  onTap: null,
                  softWrap: true,
                  color: Colors.teal,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
