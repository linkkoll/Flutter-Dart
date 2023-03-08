import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController _control = TextEditingController();
  String? _seg;
  int _radioSeg = 0;
  bool _testemunhas = false,
       _contratada = false,
       _contratante = false,
       _vip = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text ("SEGUROS"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
      
            Text(
            "Registro de seguro",
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 22
              ),
          ),
      
          TextField(
            decoration: InputDecoration(
              label: Text("Nome do Seguro")
            ),
          ),
      
          Container(
            width: double.infinity,
            child: DropdownButton(
              isExpanded: true,
              hint: Text("Selecione o tipo de seguro"),
              value: _seg,
              items: [
                DropdownMenuItem(
                  value: "Vida",
                  child: Text("Seguro de vida"),
                  onTap: () => _seg = "Vida",
                  ),
                  DropdownMenuItem(
                  value: "casa",
                  child: Text("Seguro Residencial"),
                  onTap: () => _seg = "casa",
                  ),
                  DropdownMenuItem(
                  value: "Desemprego",
                  child: Text("Seguro desemprego"),
                  onTap: () => _seg = "Desemprego",
                  ),DropdownMenuItem(
                  value: "carro",
                  child: Text("Seguro veicular"),
                  onTap: () => _seg = "carro",
                  ),DropdownMenuItem(
                  value: "Roubos e furtos",
                  child: Text("Seguro contra roubos e furtos"),
                  onTap: () => _seg = "Roubos e furtos",
                  )
              ],
              onChanged: (obj) => setState(() {})
            ),
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Radio(
                value: 0,
                groupValue: _radioSeg,
                onChanged: (val) => setState(() {
                  _radioSeg = 0;
                })
                ),
                Text("Seguro total"),

                SizedBox(width: 20),
      
                 Radio(
                value: 1,
                groupValue: _radioSeg,
                onChanged: (val) => setState(() {
                  _radioSeg = 1;
                })
                ),
                Text("Seguro parcial"),

                SizedBox(width: 20),
      
                 Radio(
                value: 2,
                groupValue: _radioSeg,
                onChanged: (val) => setState(() {
                  _radioSeg = 2;
                })
                ),
                Text("Seguro sazonal"),

                SizedBox(width: 20),
            ],
          ),
      
          Text(
            "Assinatura de contrato",
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 22
              ),
          ),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                value: _contratante,
                 onChanged: (val) => setState(() {
                   _contratante = !_contratante;
                 })
                 ),
                 Text("Contratante"),

                 SizedBox(width: 20),
      
                 Checkbox(
                value: _contratada,
                 onChanged: (val)  => setState(() {
                   _contratada = !_contratada;
                 })
                 ),
                 Text("Contratada"),

                 SizedBox(width: 20),
      
                 Checkbox(
                value: _testemunhas,
                 onChanged: (val) => setState(() {
                   _testemunhas = !_testemunhas;
                 })
                 ),
                 Text("Testemunhas"),

                 SizedBox(width: 20),
            ]
          ),
      
      
          SwitchListTile(
            secondary: Icon(Icons.security_outlined),
            title:  Text("Seguro VIP"),
            value: _vip,
            onChanged: (val) => setState(() {
               _vip = !_vip;
             })
      
            ),
      
            Container(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(top: 20, bottom: 20))
                ),
                onPressed: (){},
                icon: Icon(Icons.receipt_long_sharp),
                label: Text(
                  "Registrar",
                  style: TextStyle(
                    fontSize: 24,
                    
                    ),
                  )
                ),
            )
             
            
          ],
        ),
      ),
    );
  }
}
