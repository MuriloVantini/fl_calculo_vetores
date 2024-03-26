// ignore_for_file: unused_local_variable
import 'package:calculo_vetores/my_colors.dart';
import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  const Tab1({super.key});

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  TextEditingController number3Controller = TextEditingController();

  double result = 0;
  void soma() {
    double number1 = double.parse(number1Controller.text);
    double number2 = double.parse(number2Controller.text);
    double number3 = double.parse(number3Controller.text);
    setState(() {
      result = number1 + number2 + number3;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _textField(
                    'Vetor A',
                    Icons.numbers,
                    number1Controller,
                    obscure: false,
                    type: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  _textField(
                    'Vetor B',
                    Icons.numbers,
                    number2Controller,
                    obscure: false,
                    type: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  _textField(
                    'Vetor C',
                    Icons.numbers,
                    number3Controller,
                    obscure: false,
                    type: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                                soma();
                              }
                            },
                            icon: const Icon(
                              Icons.search_rounded,
                              color: MyColors.white,
                            ),
                            label: const Text(
                              'Calcular',
                              style: TextStyle(color: MyColors.white),
                            )),
                      ),
                      const SizedBox(width: 25),
                      Container(
                          height: 40,
                          width: 164,
                          decoration: const BoxDecoration(
                              color: MyColors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border(
                                bottom: BorderSide(color: MyColors.black),
                                top: BorderSide(color: MyColors.black),
                                left: BorderSide(color: MyColors.black),
                                right: BorderSide(color: MyColors.black),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              result.toString(),
                              style: const TextStyle(
                                color: MyColors.primary,
                                fontSize: 18,
                              ),
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  TextEditingController number3Controller = TextEditingController();

  double result = 0;
  void soma() {
    double number1 = double.parse(number1Controller.text);
    double number2 = double.parse(number2Controller.text);
    double number3 = double.parse(number3Controller.text);
    setState(() {
      result = number1 + number2 + number3;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _textField(
                    'Vetor A',
                    Icons.numbers,
                    number1Controller,
                    obscure: false,
                    type: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  _textField(
                    'Vetor B',
                    Icons.numbers,
                    number2Controller,
                    obscure: false,
                    type: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  _textField(
                    'Vetor C',
                    Icons.numbers,
                    number3Controller,
                    obscure: false,
                    type: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                                soma();
                              }
                            },
                            icon: const Icon(
                              Icons.search_rounded,
                              color: MyColors.white,
                            ),
                            label: const Text(
                              'Calcular',
                              style: TextStyle(color: MyColors.white),
                            )),
                      ),
                      const SizedBox(width: 25),
                      Container(
                          height: 40,
                          width: 164,
                          decoration: const BoxDecoration(
                              color: MyColors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border(
                                bottom: BorderSide(color: MyColors.black),
                                top: BorderSide(color: MyColors.black),
                                left: BorderSide(color: MyColors.black),
                                right: BorderSide(color: MyColors.black),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              result.toString(),
                              style: const TextStyle(
                                color: MyColors.primary,
                                fontSize: 18,
                              ),
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _textField(String label, IconData icon, TextEditingController controller,
    {TextInputType? type, bool obscure = false}) {
  return TextFormField(
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
        borderSide: BorderSide(color: Color.fromRGBO(227, 227, 227, 1)),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
  );
}
