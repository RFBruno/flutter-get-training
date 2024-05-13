import 'package:flutter/material.dart';

class NaoEncontradaPage extends StatefulWidget {
  const NaoEncontradaPage({Key? key}) : super(key: key);

  @override
  _NaoEncontradaPageState createState() => _NaoEncontradaPageState();
}

class _NaoEncontradaPageState extends State<NaoEncontradaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rota não encontrada'),
      ),
      body: const Center(
        child: Text("Pagina não existe"),
      ),
    );
  }
}
