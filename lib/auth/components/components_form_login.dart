import 'package:flutter/material.dart';

class ComponentsFormLogin extends StatefulWidget {
  const ComponentsFormLogin({super.key});

  @override
  State<ComponentsFormLogin> createState() => _ComponentsFormLoginState();
}

class _ComponentsFormLoginState extends State<ComponentsFormLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 15.0, left: 15.0),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            autofocus: false,
            showCursor: true,
            cursorColor: Colors.teal,
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
        ],
      ),
    );
  }
}
