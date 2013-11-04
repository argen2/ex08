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
print("");
  
  print("Exercice 8.2 - Create a list of members of an association"); 
  print('');
  print('-----------------------------------------Question2-----------------------------------------'); 
  var car = 'H';
  
  var association = [
                      {'nom': 'avengers', 'description': 'Marvel Comics'},
                      {'nom': 'redsox', 'description': 'Boston RedSox'},];
  
  var members = [
                 {'associationNom' : 'avengers','nom': 'Man', 'prénom': 'Iron','courriel': 'ironman@starkindustries.com'},
                 {'associationNom' : 'avengers','nom': 'America', 'prénom': 'Capitaine','courriel': 'cap_ame_fight.com'},
                 {'associationNom' : 'avengers','nom': 'Hulk', 'prénom': 'The', 'courriel': 'smash@gmail.com'},
                 {'associationNom' : 'redsox','nom': 'Ortiz', 'prénom': 'David', 'courriel': 'mvp@gmail.com'},
                 {'associationNom' : 'redsox','nom': 'Victorino', 'prénom': 'Shayne', 'courriel': 'rightfield@hotmail.com'}];  
  print('Liste des membres :');
  print(members);
  print('');
  print('Liste des membres triés selon leurs noms:');
  triNom(members);
  print('');
  print('Liste des membres triés selon leurs prénoms:');
  triPrenom(members);
  print('');
  print('Liste des membres dont leurs noms commencent par $car :');
  obtenirListeLettre(members, car);
  




}