import 'package:flutter/material.dart';

import '../../../core/shared/app_images.dart';
import '../models/participante_peoples_model.dart';

class ParticipantsPeopleController {
  List<ParticipantsPeoplesModel> peopales = [];

  ValueNotifier<bool> loadingParticipantes = ValueNotifier(true);

  void getPeoples() async {
    final mockPeopleList = [
      {
        "id": 1,
        "name": "Luiz Felipe",
        "picture": AppImages.person1,
      },
      {
        "id": 2,
        "name": "João Mendes",
        "picture": AppImages.person2,
      },
      {
        "id": 3,
        "name": "Pedro Caio",
        "picture": AppImages.person3,
      },
      {
        "id": 4,
        "name": "Roger Romário",
        "picture": AppImages.person4,
      },
      {
        "id": 5,
        "name": "Victor Gabriel",
        "picture": AppImages.person5,
      },
      {
        "id": 6,
        "name": "Ana Clara",
        "picture": AppImages.person6,
      },
      {
        "id": 7,
        "name": "Caio Ribeiro",
        "picture": AppImages.person7,
      },
      {
        "id": 8,
        "name": "Gabriel Rosa",
        "picture": AppImages.person8,
      },
      {
        "id": 9,
        "name": "Luís Carlos",
        "picture": AppImages.person9,
      },
      {
        "id": 10,
        "name": "Gabriela Vitória",
        "picture": AppImages.person10,
      },
    ];

    await Future.delayed(const Duration(seconds: 2));

    peopales = mockPeopleList
        .map(
          (peoaples) => ParticipantsPeoplesModel.fromMap(peoaples),
        )
        .toList();

    loadingParticipantes.value = false;

    return;
  }
}
