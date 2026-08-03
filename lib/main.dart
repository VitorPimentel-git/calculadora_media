import 'package:flutter/material.dart';

// a função main é o ponto de entrada do app
void main(){
  // coloca o app flutter para funcionar
  runApp(const MeuApp());
}
//significa que a classe está herdando as caracteristicas da um StatelessWidget
class MeuApp extends StatelessWidget{
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora de Média Escolar',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: MediaEscolarPage(),
      );
  }
}

class MediaEscolarPage extends StatefulWidget{
  const MediaEscolarPage({super.key});

  @override
  State<MediaEscolarPage> createState() => _MediaEscolarPageState();
}

class _MediaEscolarPageState extends State<MediaEscolarPage>{

final TextEditingController nomeController = TextEditingController();
final TextEditingController nota1Controller = TextEditingController();
final TextEditingController nota2Controller = TextEditingController();
final TextEditingController nota3Controller = TextEditingController();

String nomeAluno = '';
String situacao = '';
double media = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de Média Escolar'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.school, 
              size: 80 
              ),
              const SizedBox(height: 10),

              const Text(
                'Média Escolar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
          ]
          
        )
      )
    );
  }
}

