import 'package:flutter/cupertino.dart';

import '../model/project_model.dart';

class ProjectController {
  ValueNotifier<bool> loadingProjects = ValueNotifier(false);
  List<ProjectsModel> listOfProjects = [];

  void getProjects() async {
    loadingProjects.value = true;
    final mockListProjects = [
      {
        "id": 1,
        "title": "PetroApp",
        "description":
            "Projeto para venda e compra de produtos derivados do alcool e do petroleo",
      },
      {
        "id": 2,
        "title": "Coop",
        "description": "",
      },
      {
        "id": 3,
        "title": "Agro app",
        "description": "Projeto mal levantado apenas!",
      },
      {
        "id": 4,
        "title": "Agro app2",
        "description": "Esse deu certo",
      },
      {
        "id": 5,
        "title": "Um Crm Ai ",
        "description": "Pesadelo do roger",
      }
    ];

    await Future.delayed(const Duration(seconds: 3));

    listOfProjects = mockListProjects
        .map(
          (e) => ProjectsModel.fromMap(e),
        )
        .toList();

    loadingProjects.value = false;
  }
}
