import 'package:calculo_vetores/Screens/views.dart';
import 'package:calculo_vetores/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cálculo Vetorial',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primary),
          primarySwatch: MaterialColor(
            MyColors.primary.value,
            const <int, Color>{
              50: MyColors.primary,
              100: MyColors.primary,
              200: MyColors.primary,
              300: MyColors.primary,
              400: MyColors.primary,
              500: MyColors.primary,
              600: MyColors.primary,
              700: MyColors.primary,
              800: MyColors.primary,
              900: MyColors.primary,
            },
          )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      animationDuration: const Duration(milliseconds: 500),
      child: Scaffold(
        backgroundColor: MyColors.white,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: MyColors.primary,
              statusBarIconBrightness: Brightness.light,
              systemNavigationBarDividerColor: MyColors.white,
              ),
          shadowColor: MyColors.gray1,
          title: const Text(
            'Cálculo de Vetores',
            style: TextStyle(color: MyColors.white),
          ),
          backgroundColor: MyColors.primary,
          bottom: const TabBar(
              labelColor: MyColors.white,
              unselectedLabelColor: MyColors.gray1,
              indicatorColor: MyColors.primary,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.looks_one_rounded),
                  text: 'Simples',
                ),
                Tab(
                  icon: Icon(Icons.looks_3_rounded),
                  text: 'Escalar',
                ),
                Tab(
                  icon: Icon(Icons.looks_3_rounded),
                  text: 'Módulo',
                ),
                Tab(
                  icon: Icon(Icons.looks_3_rounded),
                  text: 'Ângulo',
                ),
              ]),
        ),
        body: const TabBarView(
          children: [
            Tab2(),
            Tab1(),
            Tab1(),
            Tab1(),
          ],
        ),
      ),
    );
  }
}
