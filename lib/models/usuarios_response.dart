// To parse this JSON data, do
//
//     final usuarioResponse = usuarioResponseFromJson(jsonString);

import 'dart:convert';

import 'package:chat_app/models/usuario.dart';

UsuarioResponse usuarioResponseFromJson(String str) =>
    UsuarioResponse.fromJson(json.decode(str));

String usuarioResponseToJson(UsuarioResponse data) =>
    json.encode(data.toJson());

class UsuarioResponse {
  UsuarioResponse({
    this.ok,
    this.usuarios,
    this.desde,
    this.hasta,
  });

  bool ok;
  List<Usuario> usuarios;
  int desde;
  int hasta;

  factory UsuarioResponse.fromJson(Map<String, dynamic> json) =>
      UsuarioResponse(
        ok: json["ok"],
        usuarios: List<Usuario>.from(
            json["usuarios"].map((x) => Usuario.fromJson(x))),
        desde: json["desde"],
        hasta: json["hasta"],
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "usuarios": List<dynamic>.from(usuarios.map((x) => x.toJson())),
        "desde": desde,
        "hasta": hasta,
      };
}
