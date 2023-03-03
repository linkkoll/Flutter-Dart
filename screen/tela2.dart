import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Tela2 extends StatefulWidget {
  const Tela2({super.key});

  @override
  State<Tela2> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  TextEditingController _control = TextEditingController();
  bool _show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.all(100),
              child: TextField(
                controller: _control,
                maxLength: 15,
                obscureText: _show,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _show = !_show;
                          });
                        },
                        icon: (_show)
                            ? Icon(Icons.add_moderator_rounded)
                            : Icon(Icons.add_moderator_outlined))),
              ),
             
            ),
             Chip(
                label: Text("ByJoão"),
                avatar: Icon(Icons.person),
                ),
          ],
        ),
      ),
    );
  }
}
