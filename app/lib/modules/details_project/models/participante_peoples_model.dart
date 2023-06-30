class ParticipantsPeoplesModel {
  int id;
  String name;
  String picture;

  ParticipantsPeoplesModel({
    required this.id,
    required this.name,
    required this.picture,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'picture': picture,
    };
  }

  factory ParticipantsPeoplesModel.fromMap(Map<String, dynamic> map) {
    return ParticipantsPeoplesModel(
      id: map['id'] as int,
      name: map['name'] as String,
      picture: map['picture'] as String,
    );
  }
}
