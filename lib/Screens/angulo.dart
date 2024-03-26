// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:calculo_vetores/styles/my_colors.dart';
import 'package:flutter/material.dart';

class Angulo extends StatefulWidget {
  const Angulo({super.key});

  @override
  State<Angulo> createState() => _AnguloState();
}

class _AnguloState extends State<Angulo> {
  TextEditingController AXController = TextEditingController();
  TextEditingController AYController = TextEditingController();
  TextEditingController AZController = TextEditingController();
  TextEditingController BXController = TextEditingController();
  TextEditingController BYController = TextEditingController();
  TextEditingController BZController = TextEditingController();
  TextEditingController CXController = TextEditingController();
  TextEditingController CYController = TextEditingController();
  TextEditingController CZController = TextEditingController();

  final result = <List<double>>[];
  final listResultAngulo = <List<num>>[];
  final vetA = <double>[];
  final vetB = <double>[];
  final vetC = <double>[];
  String sinal = "";
  num? resultAngulo,
      angulo,
      prodEscalar,
      modulo1,
      modulo2,
      cosAngulo,
      resultAngulo2,
      angulo2,
      prodEscalar2,
      modulo3,
      modulo4,
      cosAngulo2;

  void anguloFunc() {
    vetA.addAll([
      double.parse(AXController.text),
      double.parse(AYController.text),
      double.parse(AZController.text)
    ]);
    vetB.addAll([
      double.parse(BXController.text),
      double.parse(BYController.text),
      double.parse(BZController.text)
    ]);
    vetC.addAll([
      double.parse(CXController.text),
      double.parse(CYController.text),
      double.parse(CZController.text)
    ]);

    prodEscalar = (vetA[0] * vetB[0]) + (vetA[1] * vetB[1]) + (vetA[2] * vetB[2]);
        modulo1 = sqrt(pow(vetA[0], 2) + pow(vetA[1], 2) + pow(vetA[2], 2));
        modulo2 = sqrt(pow(vetB[0], 2) + pow(vetB[1], 2) + pow(vetB[2], 2));
        resultAngulo =  acos(prodEscalar! / (modulo1! * modulo2!));
        cosAngulo = 180 * resultAngulo! / 3.14;

      prodEscalar2 = (vetB[0] * vetC[0]) + (vetB[1] * vetC[1]) + (vetB[2] * vetC[2]);
        modulo3 = sqrt(pow(vetB[0], 2) + pow(vetB[1], 2) + pow(vetB[2], 2));
        modulo4 = sqrt(pow(vetC[0], 2) + pow(vetC[1], 2) + pow(vetC[2], 2));
        resultAngulo2 = acos(prodEscalar2! / (modulo3! * modulo4!));
        cosAngulo2 = 180 * resultAngulo2! / 3.14;

    listResultAngulo.add([cosAngulo!, cosAngulo2!]);
    setState(() {
      listResultAngulo;
    });
  }

  void modulo() {
    vetA.addAll([
      double.parse(AXController.text),
      double.parse(AYController.text),
      double.parse(AZController.text)
    ]);
    vetB.addAll([
      double.parse(BXController.text),
      double.parse(BYController.text),
      double.parse(BZController.text)
    ]);
    vetC.addAll([
      double.parse(CXController.text),
      double.parse(CYController.text),
      double.parse(CZController.text)
    ]);

    for (int i = 0; i < 3; i++) {
      result.add([
        vetA[i] + vetB[i],
        vetB[i] + vetA[i],
        vetB[i] + vetC[i],
        vetC[i] + vetB[i],
        vetC[i] + vetA[i],
        vetA[i] + vetC[i]
      ]);
    }
    setState(() {
      result;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _titulo("Ângulo e Módulo", Colors.black),
                    const SizedBox(height: 10),
                    Wrap(
                      runSpacing: 10,
                      spacing: 5,
                      children: [
                        _textField(
                          'A.x',
                          Icons.numbers,
                          AXController,
                          obscure: false,
                          type: TextInputType.number,
                        ),
                        _textField(
                          'A.y',
                          Icons.numbers,
                          AYController,
                          obscure: false,
                          type: TextInputType.number,
                        ),
                        _textField(
                          'A.z',
                          Icons.numbers,
                          AZController,
                          obscure: false,
                          type: TextInputType.number,
                        ),
                        const SizedBox(height: 10),
                        _textField(
                          'B.x',
                          Icons.numbers,
                          BXController,
                          obscure: false,
                          type: TextInputType.number,
                        ),
                        _textField(
                          'B.y',
                          Icons.numbers,
                          BYController,
                          obscure: false,
                          type: TextInputType.number,
                        ),
                        _textField(
                          'B.z',
                          Icons.numbers,
                          BZController,
                          obscure: false,
                          type: TextInputType.number,
                        ),
                        const SizedBox(height: 10),
                        _textField(
                          'C.x',
                          Icons.numbers,
                          CXController,
                          obscure: false,
                          type: TextInputType.number,
                        ),
                        _textField(
                          'C.y',
                          Icons.numbers,
                          CYController,
                          obscure: false,
                          type: TextInputType.number,
                        ),
                        _textField(
                          'C.z',
                          Icons.numbers,
                          CZController,
                          obscure: false,
                          type: TextInputType.number,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          decoration: const BoxDecoration(
                              color: MyColors.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextButton.icon(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  vetA.clear();
                                  vetB.clear();
                                  vetC.clear();
                                  result.map((element) {
                                    element.clear();
                                  });
                                  result.clear();

                                  sinal = "+";
                                }
                              },
                              icon: const Icon(
                                Icons.search_rounded,
                                color: MyColors.white,
                              ),
                              label: const Text(
                                'Módulo',
                                style: TextStyle(color: MyColors.white),
                              )),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          decoration: const BoxDecoration(
                              color: MyColors.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextButton.icon(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  vetA.clear();
                                  vetB.clear();
                                  vetC.clear();
                                  listResultAngulo.map((element) {
                                    element.clear();
                                  });
                                  listResultAngulo.clear();
                                  anguloFunc();
                                }
                              },
                              icon: const Icon(
                                Icons.search_rounded,
                                color: MyColors.white,
                              ),
                              label: const Text(
                                'Ângulo',
                                style: TextStyle(color: MyColors.white),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    listResultAngulo.isNotEmpty
                        ? Wrap(runSpacing: 10, spacing: 5, children: [
                            Text("Ângulo 1: ${listResultAngulo[0][0]}",
                                style: style),
                                Text("Ângulo 2: ${listResultAngulo[0][1]}",
                                style: style),
                            const SizedBox(height: 10),
                          ])
                        : const SizedBox()
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

Widget _titulo(String label, Color cor) {
  return Text(
    label,
    style: TextStyle(color: cor, fontSize: 22, overflow: TextOverflow.clip),
  );
}

TextStyle style = const TextStyle(color: MyColors.black, fontSize: 16);

Widget _textField(String label, IconData icon, TextEditingController controller,
    {TextInputType? type, bool obscure = false}) {
  return SizedBox(
    width: 100,
    child: TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: obscure,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Este campo é obrigatório';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: label,
        hintStyle: const TextStyle(color: MyColors.gray2),
        prefixIcon: Icon(
          icon,
          color: MyColors.gray1,
          size: 25,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(227, 227, 227, 1)),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.primary),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    ),
  );
}
