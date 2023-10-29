import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
   
  final opciones = const['Korn','Slipknot','Mudvayne','SOAD','Limp Bizkit'];
   
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        title: const Text('ListView2'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
            leading: const Icon(Icons.headset),
            title: Text(opciones[index]),
            trailing: const Icon(Icons.music_note_outlined, color:Color.fromARGB(255, 136, 15, 78)),
            onTap: () {
              final opt = opciones[index];
              print(opt);
            },
          ), 
        separatorBuilder:(context, index) => const Divider(), 
        itemCount: opciones.length)
      );  
  }
}