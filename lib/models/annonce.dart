enum CategorieAnnonce { objet, service, covoiturage }

enum StatutAnnonce { disponible, reservee, terminee }

class Annonce {
  String id;
  String titre;
  String? description;
  CategorieAnnonce categorie;
  StatutAnnonce statut;
  String idProprietaire;

  Annonce({
    required this.id,
    required this.titre,
    this.description,
    required this.categorie,
    required this.statut,
    required this.idProprietaire,
  });

  factory Annonce.fromJson(Map<String, dynamic> json) {
    return Annonce(
      id: json['id'],
      titre: json['titre'],
      description: json['description'],
      categorie: CategorieAnnonce.values.byName(json['categorie']),
      statut: StatutAnnonce.values.byName(json['statut']),
      idProprietaire: json['idProprietaire'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'titre': titre,
      'description': description,
      'categorie': categorie.name,
      'statut': statut.name,
      'idProprietaire': idProprietaire,
    };
  }
}
