import 'package:flutter/material.dart';
import './componentes/navegacao.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {

  String? nome = '';
  String? email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Olá, $nome!',
                      style: const TextStyle(
                        color: Color.fromRGBO(248, 250, 255, 1),
                        fontFamily: 'Roboto',
                        fontSize: 23,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/lista');
                        },
                        backgroundColor: const Color.fromRGBO(50, 205, 50, 1),
                        child: const Icon(
                          Icons.add,
                          size: 30,
                          color: Color.fromRGBO(24, 24, 24, 1),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  'Suas playlists salvas',
                  style: TextStyle(
                    color: Color.fromRGBO(248, 250, 255, 1),
                    fontFamily: 'Roboto',
                    fontSize: 19.2,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),

          // Barra de navegação
          BarraNavegacao(
            perfilTexto: 'Perfil',
            perfilColorTexto: const Color.fromRGBO(248, 250, 255, 1),
            perfilColorIcon: const Color.fromRGBO(248, 250, 255, 1),
            fnPerfil: () {
              Navigator.pushNamed(context, '/perfil');
            },
            gerarPlayTexto: 'Gerar Playlist',
            gerarPlayColorTexto: const Color.fromRGBO(248, 250, 255, 1),
            gerarPlayColorIcon: const Color.fromRGBO(248, 250, 255, 1),
            fnGerarPlay: () {
              Navigator.pushNamed(context, '/lista');
            },
            playlistsTexto: 'Playlists',
            playlistsColorTexto: const Color.fromRGBO(50, 205, 50, 1),
            playlistsColorIcon: const Color.fromRGBO(50, 205, 50, 1),
            fnPlaylists: () {},
          ),
        ],
      ),
    );
  }
}
