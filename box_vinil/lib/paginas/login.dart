import 'package:flutter/material.dart';
import './componentes/campoForm.dart';
import 'componentes/botao_entrar_cadastrar.dart';
import './componentes/hiperlink.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _email = TextEditingController();
  final _senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 152.0,
              ),

              // Logo
              SizedBox(
                width: 256.0,
                height: 190.51,
                child: Image.asset("assets/images/logo.png"),
              ),
              const SizedBox(
                height: 80.49,
              ),

              // Campo de email
              CampoForm(
                controller: _email,
                obscureText: false,
                hintText: 'Email',
                validator: (_) => null,
              ),

              const SizedBox(
                height: 32.0,
              ),

              // Campo de senha
              CampoForm(
                controller: _senha,
                obscureText: true,
                hintText: 'Senha',
                validator: (_) => null,
              ),

              const SizedBox(
                height: 32.0,
              ),

              // Botão de entrar
              BotaoEntrarCadastrar(
                fn: () {},
                texto: 'Entrar',
              ),

              const SizedBox(
                height: 16,
              ),

              // Hiperlink
              const Hiperlink(
                texto: 'Não possui uma conta?',
                caminho: '',
                entrarCadastrar: 'Cadastre-se',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
