import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:stimulus/pages/menu_principal.dart';

class CadastrarUsuario {
  CadastrarUsuario.cadast(nomeEmpresa, email, senha, context) {
    cadastro(nomeEmpresa, email, senha, context) async {
      var response = await http.post(
          "https://api-project-stimulus-2020.herokuapp.com/api/cadastrar/$nomeEmpresa/$email/$senha");
      var dados = jsonDecode(response.body);

      if (dados['message'] == 'success') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MenuPage(),
          ),
        );
      }
    }

    cadastro(nomeEmpresa, email, senha, context);
  }
}
