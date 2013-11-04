library ex08;

import 'dart:math';

part 'fonctions.dart';

void main() {
  
  print("Exercice 8.1 - Faire une phrase au hasard avec des mots variees");
  print("");
  List nomList = ["maison", "condominium", "appartement"];
  print("Voici les noms :${nomList}");
  
  List verbeList = ["construire", "reparer","renover"];
  print ("Voici les verbes : ${verbeList}");
  List adjectifList = ["beau", "bon", "puissant"];
  
  print ("Voici les adjectifs : ${adjectifList}");
  
  List adverbeList = ["hardemment", "rapidement","maintenant"];
  
  print ("Voici les adverbes : ${adverbeList}");
  
  List resultList = createSentence(nomList, verbeList, adjectifList, adverbeList);
  print ("Phrase au hasard : ${resultList}");
}