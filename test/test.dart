import '../lib/models/models.dart';

Future<List<Annonce>> chargerAnnonces() async {
  await Future.delayed(Duration(seconds: 2));

  return [
    Annonce(
      id: '1',
      titre: 'Canapé à donner',
      description: 'Canapé en bon état',
      categorie: CategorieAnnonce.objet,
      statut: StatutAnnonce.disponible,
      idProprietaire: 'u1',
    ),

    Annonce(
      id: '2',
      titre: 'Réparation ordinateur',
      description: 'Je propose un service de réparation',
      categorie: CategorieAnnonce.service,
      statut: StatutAnnonce.disponible,
      idProprietaire: 'u2',
    ),

    Annonce(
      id: '3',
      titre: 'Covoiturage Tunis-Bizerte',
      description: 'Départ à 8h',
      categorie: CategorieAnnonce.covoiturage,
      statut: StatutAnnonce.reservee,
      idProprietaire: 'u3',
    ),

    Annonce(
      id: '4',
      titre: 'Vélo',
      description: 'Vélo disponible',
      categorie: CategorieAnnonce.objet,
      statut: StatutAnnonce.disponible,
      idProprietaire: 'u1',
    ),

    Annonce(
      id: '5',
      titre: 'Cours de programmation',
      description: null,
      categorie: CategorieAnnonce.service,
      statut: StatutAnnonce.terminee,
      idProprietaire: 'u4',
    ),
  ];
}

bool peutReserver(Annonce annonce) {
  return annonce.statut == StatutAnnonce.disponible;
}

Future<void> main() async {
  List<Annonce> annonces = await chargerAnnonces();

  for (Annonce annonce in annonces) {
    print('${annonce.titre} → ${peutReserver(annonce)}');
  }
}
