// ignore_for_file: non_constant_identifier_names
import 'package:calculo_vetores/styles/my_colors.dart';
import 'package:flutter/material.dart';

class Escalar extends StatefulWidget {
  const Escalar({super.key});

  @override
  State<Escalar> createState() => _EscalarState();
}

class _EscalarState extends State<Escalar> {
  TextEditingController AXController = TextEditingController();
  TextEditingController AYController = TextEditingController();
  TextEditingController AZController = TextEditingController();
  TextEditingController BXController = TextEditingController();
  TextEditingController BYController = TextEditingController();
  TextEditingController BZController = TextEditingController();
  TextEditingController CXController = TextEditingController();
  TextEditingController CYController = TextEditingController();
  TextEditingController CZController = TextEditingController();
  TextEditingController KController = TextEditingController();

  final result = <List<double>>[];
  final vetA = <double>[];
  final vetB = <double>[];
  final vetC = <double>[];
  double k = 0;
  String sinal = "";
  void multiPorEscalar() {
    k = double.parse(KController.text.replaceAll(',', '.'));
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
      result.add([k * vetA[i], k * vetB[i], k * vetC[i]]);
    }
    setState(() {
      result;
    });
  }

  void produtoEscalar() {
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
    result.add([
      (vetA[0] * vetB[0]) + (vetA[1] * vetB[1]) + (vetA[2] * vetB[2]),
      (vetB[0] * vetC[0]) + (vetB[1] * vetC[1]) + (vetB[2] * vetC[2]),
      (vetA[0] * vetC[0]) + (vetA[1] * vetC[1]) + (vetA[2] * vetC[2]),
      (vetB[0] * vetA[0]) + (vetB[1] * vetA[1]) + (vetB[2] * vetA[2]),
      (vetC[0] * vetB[0]) + (vetC[1] * vetB[1]) + (vetC[2] * vetB[2]),
      (vetC[0] * vetA[0]) + (vetC[1] * vetA[1]) + (vetC[2] * vetA[2]),
      (vetA[0] * vetA[0]) + (vetA[1] * vetA[1]) + (vetA[2] * vetA[2]),
      (vetB[0] * vetB[0]) + (vetB[1] * vetB[1]) + (vetB[2] * vetB[2]),
      (vetC[0] * vetC[0]) + (vetC[1] * vetC[1]) + (vetC[2] * vetC[2])
    ]);
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
                    _titulo("Multiplicação por K", Colors.black),
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
                    const SizedBox(height: 20),
                    _textField(
                      'K',
                      Icons.arrow_downward,
                      KController,
                      obscure: false,
                      type: TextInputType.number,
                    ),
                    const SizedBox(height: 20),
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
                                  multiPorEscalar();
                                  sinal = "*";
                                }
                              },
                              icon: const Icon(
                                Icons.search_rounded,
                                color: MyColors.white,
                              ),
                              label: const Text(
                                'Multiplicar por K',
                                style: TextStyle(color: MyColors.white),
                              )),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 10),
                    result.isNotEmpty
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Vetor A.x $sinal K = ${result[0][0]}",
                                  style: style),
                              Text("Vetor A.y $sinal K = ${result[1][0]}",
                                  style: style),
                              Text("Vetor A.z $sinal K = ${result[2][0]}",
                                  style: style),
                              const SizedBox(height: 10),
                              Text("Vetor B.x $sinal K = ${result[0][1]}",
                                  style: style),
                              Text("Vetor B.y $sinal K = ${result[1][1]}",
                                  style: style),
                              Text("Vetor B.z $sinal K = ${result[2][1]}",
                                  style: style),
                              const SizedBox(height: 10),
                              Text("Vetor C.x $sinal K = ${result[0][2]}",
                                  style: style),
                              Text("Vetor C.y $sinal K = ${result[1][2]}",
                                  style: style),
                              Text("Vetor C.z $sinal K = ${result[2][2]}",
                                  style: style),
                              const SizedBox(height: 10),
                            ],
                          )
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

class ProdutoEscalar extends StatefulWidget {
  const ProdutoEscalar({super.key});

  @override
  State<ProdutoEscalar> createState() => _ProdutoEscalarState();
}

class _ProdutoEscalarState extends State<ProdutoEscalar> {
  TextEditingController AXController = TextEditingController();
  TextEditingController AYController = TextEditingController();
  TextEditingController AZController = TextEditingController();
  TextEditingController BXController = TextEditingController();
  TextEditingController BYController = TextEditingController();
  TextEditingController BZController = TextEditingController();
  TextEditingController CXController = TextEditingController();
  TextEditingController CYController = TextEditingController();
  TextEditingController CZController = TextEditingController();
  TextEditingController KController = TextEditingController();

  final result = <List<double>>[];
  final vetA = <double>[];
  final vetB = <double>[];
  final vetC = <double>[];
  double k = 0;
  String sinal = "";

  void produtoEscalar() {
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
    result.add([
      (vetA[0] * vetB[0]) + (vetA[1] * vetB[1]) + (vetA[2] * vetB[2]),
      (vetB[0] * vetC[0]) + (vetB[1] * vetC[1]) + (vetB[2] * vetC[2]),
      (vetA[0] * vetC[0]) + (vetA[1] * vetC[1]) + (vetA[2] * vetC[2]),
      (vetB[0] * vetA[0]) + (vetB[1] * vetA[1]) + (vetB[2] * vetA[2]),
      (vetC[0] * vetB[0]) + (vetC[1] * vetB[1]) + (vetC[2] * vetB[2]),
      (vetC[0] * vetA[0]) + (vetC[1] * vetA[1]) + (vetC[2] * vetA[2]),
      (vetA[0] * vetA[0]) + (vetA[1] * vetA[1]) + (vetA[2] * vetA[2]),
      (vetB[0] * vetB[0]) + (vetB[1] * vetB[1]) + (vetB[2] * vetB[2]),
      (vetC[0] * vetC[0]) + (vetC[1] * vetC[1]) + (vetC[2] * vetC[2])
    ]);
    print(result.toString());
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: formKey2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _titulo("Produto Escalar", Colors.black),
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
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          decoration: const BoxDecoration(
                              color: MyColors.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: TextButton.icon(
                              onPressed: () {
                                if (formKey2.currentState!.validate()) {
                                  vetA.clear();
                                  vetB.clear();
                                  vetC.clear();
                                  result.map((element) {
                                    element.clear();
                                  });
                                  result.clear();
                                  produtoEscalar();
                                  sinal = "*";
                                }
                              },
                              icon: const Icon(
                                Icons.search_rounded,
                                color: MyColors.white,
                              ),
                              label: const Text(
                                'Produto',
                                style: TextStyle(color: MyColors.white),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    result.isNotEmpty
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "Vetor A.x${sinal}Vetor B.x + Vetor A.y${sinal}Vetor B.y + Vetor A.z${sinal}Vetor B.z = ${result[0][0]}",
                                  style: style),
                                  Text(
                                  "Vetor B.x${sinal}Vetor C.x + Vetor B.y${sinal}Vetor C.y + Vetor B.z${sinal}Vetor C.z = ${result[0][1]}",
                                  style: style),
                                  Text(
                                  "Vetor A.x${sinal}Vetor C.x + Vetor A.y${sinal}Vetor C.y + Vetor A.z${sinal}Vetor C.z = ${result[0][2]}",
                                  style: style),
                                  Text(
                                  "Vetor B.x${sinal}Vetor A.x + Vetor B.y${sinal}Vetor A.y + Vetor B.z${sinal}Vetor A.z = ${result[0][3]}",
                                  style: style),
                                  Text(
                                  "Vetor C.x${sinal}Vetor B.x + Vetor C.y${sinal}Vetor B.y + Vetor C.z${sinal}Vetor B.z = ${result[0][4]}",
                                  style: style),
                                  Text(
                                  "Vetor C.x${sinal}Vetor A.x + Vetor C.y${sinal}Vetor A.y + Vetor C.z${sinal}Vetor A.z = ${result[0][5]}",
                                  style: style),
                                  Text(
                                  "Vetor A.x${sinal}Vetor A.x + Vetor A.y${sinal}Vetor A.y + Vetor A.z${sinal}Vetor A.z = ${result[0][6]}",
                                  style: style),
                                  Text(
                                  "Vetor B.x${sinal}Vetor B.x + Vetor A.y${sinal}Vetor B.y + Vetor B.z${sinal}Vetor B.z = ${result[0][7]}",
                                  style: style),
                                  Text(
                                  "Vetor C.x${sinal}Vetor C.x + Vetor C.y${sinal}Vetor C.y + Vetor C.z${sinal}Vetor C.z = ${result[0][8]}",
                                  style: style),
                              
                              const SizedBox(height: 10),
                            ],
                          )
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
