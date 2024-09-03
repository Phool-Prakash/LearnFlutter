import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_learn/Screen/learnScreen.dart';
import 'package:flutter_learn/statemanagement/provider/ChangeNotifierClass/counterChangeNotifier.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  // Stripe.publishableKey =
  //     "pk_test_51PuoSMRvqmmPIz08UE1KW9kqDuAxsXpmdvfXExHUza44MIoxPF6mF3UBcLaI3dk2KCEFJ3GLZMM912poOJqFuN9Y00aEUcdjXd";
  await dotenv.load(fileName: "assets/.env");
  runApp(ChangeNotifierProvider(
    create: (context) => CounterClass(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Learn Flutter',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LearnScreen());
  }
}
