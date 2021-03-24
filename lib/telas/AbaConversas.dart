import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/model/Conversa.dart';

class AbaConversas extends StatefulWidget {
  @override
  _AbaConversasState createState() => _AbaConversasState();
}

class _AbaConversasState extends State<AbaConversas> {

  List<Conversa> listaConversas = [
      Conversa(
        "Anna",
        "Bom dia, tudo bem?",
        "https://firebasestorage.googleapis.com/v0/b/whatsapp-26ec3.appspot.com/o/perfil%2Fperfil1.jpg?alt=media&token=a794a066-441d-452a-a84b-f33f92503a07"
      ),
    Conversa(
        "Lucas",
        "e ai man",
        "https://firebasestorage.googleapis.com/v0/b/whatsapp-26ec3.appspot.com/o/perfil%2Fperfil2.jpg?alt=media&token=5192f14e-6d41-4997-9d57-122a385a132c"
    ),
    Conversa(
        "Clara",
        "Bom dia, tudo bem.. lembra de mim?",
        "https://firebasestorage.googleapis.com/v0/b/whatsapp-26ec3.appspot.com/o/perfil%2Fperfil3.jpg?alt=media&token=13b0895f-a3a0-44ef-adcb-cd995ce14993"
    ),
    Conversa(
        "Felipe",
        "e ai cara, beleza?",
        "https://firebasestorage.googleapis.com/v0/b/whatsapp-26ec3.appspot.com/o/perfil%2Fperfil4.jpg?alt=media&token=62d2522f-4c79-4131-890f-5fb3689293e1"
    ),
    Conversa(
        "Jamilton",
        "opa, tudo bem?",
        "https://firebasestorage.googleapis.com/v0/b/whatsapp-26ec3.appspot.com/o/perfil%2Fperfil5.jpg?alt=media&token=7bea39ec-73fb-4d9a-b602-8d406c5dfe98"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaConversas.length,
        itemBuilder: (context, indice) {

        Conversa conversa = listaConversas[indice];

        return ListTile(
          contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          leading: CircleAvatar(
            maxRadius: 35,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(conversa.caminhoFoto),
          ),
          title: Text(
            conversa.nome,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
          subtitle: Text(
            conversa.mensagem,
            style: TextStyle(
            color: Colors.grey,
          fontSize: 14
          ),
        ),
        );
        }
    );
  }
}
