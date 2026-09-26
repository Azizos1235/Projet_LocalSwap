class Utilisateur {
  String id;
  String nom;
  int reputation;

  Utilisateur({required this.id, required this.nom, required this.reputation});

  factory Utilisateur.fromJson(Map<String, dynamic> json) {
    return Utilisateur(
      id: json['id'],
      nom: json['nom'],
      reputation: json['reputation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'nom': nom, 'reputation': reputation};
  }
}
