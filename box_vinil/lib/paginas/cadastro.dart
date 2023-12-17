import 'package:flutter/material.dart';
import './componentes/campoForm.dart';
import './componentes/botao_entrar_cadastrar.dart';
import './componentes/hiperlink.dart';
import './componentes/label_form_cadastro.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _senha = TextEditingController();
  final _confirmaSenha = TextEditingController();
  final _nome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 154,
              ),

              const Label(label: 'Digite seu e-mail'),

              const SizedBox(
                height: 8,
              ),

              // Campo de email
              CampoForm(
                controller: _email,
                obscureText: false,
                hintText: 'Ex.: joao@email.com',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Preencha o campo email';
                  }
                  return null;
                },
              ),

              const SizedBox(
                height: 16,
              ),

              const Label(label: 'Digite sua senha'),

              const SizedBox(
                height: 8,
              ),

              // Campo de senha
              CampoForm(
                controller: _senha,
                obscureText: true,
                hintText: '........',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Preencha o campo senha';
                  }
                  return null;
                },
              ),

              const SizedBox(
                height: 16,
              ),

              const Label(label: 'Confirme sua senha'),

              const SizedBox(
                height: 8,
              ),

              // Campo de confirme sua senha
              CampoForm(
                controller: _confirmaSenha,
                obscureText: true,
                hintText: '........',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Preencha o campo confirme sua senha';
                  }
                  if (value != _senha.text) {
                    return 'As senhas são diferentes';
                  }
                  return null;
                },
              ),

              const SizedBox(
                height: 16,
              ),

              const Label(label: 'Como você gostaria de ser chamado?'),

              const SizedBox(
                height: 8,
              ),

              // Campo de nome
              CampoForm(
                controller: _nome,
                obscureText: false,
                hintText: 'Ex.: Joao',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Preencha o campo nome';
                  }
                  return null;
                },
              ),

              const SizedBox(
                height: 32,
              ),

              // Botão de cadastrar
              BotaoEntrarCadastrar(
                fn: () {},
                texto: 'Cadastrar',
              ),

              const SizedBox(
                height: 16,
              ),

              // Hiperlink
              const Hiperlink(
                texto: 'Já possui conta?',
                caminho: '',
                entrarCadastrar: 'Entrar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
