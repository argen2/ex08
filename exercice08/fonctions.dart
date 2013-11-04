part of ex08;

//exercie 8.1 
List createSentence(List nom, List verbe, List adjectif, List adverbe) {
  
  int nbrSentences = max(nom.length, max(verbe.length, max(adjectif.length, adverbe.length)));
  List phrase_hasard = new List();
  Random rnd = new Random();

  for (int i = 0; i < nbrSentences; i++) {
    String nouvellePhrase = "";
    nouvellePhrase = nouvellePhrase + adjectif.elementAt(rnd.nextInt(adjectif.length));

    nouvellePhrase = nouvellePhrase + adverbe.elementAt(rnd.nextInt(adverbe.length));
    
    nouvellePhrase = nouvellePhrase + verbe.elementAt(rnd.nextInt(verbe.length));
    
    nouvellePhrase = nouvellePhrase + nom.elementAt(rnd.nextInt(nom.length));
    
    phrase_hasard.add(nouvellePhrase);
  }
  
  return phrase_hasard;
}
triNom(var members) {  
  List nom = new List();
  for (var i = 0; i < members.length; i++) {
    nom.add(members[i]['nom']);
  }    
  for (var i = 1; i < nom.length; i++) {
    var x;
    var t = new Map();
    var j;
    x = nom[i];
    t = members[i];
    j = i;
    while (j >= 1 && nom[j - 1].compareTo(x) > 0 ) {
      nom[j] = nom[j - 1];
      members[j] = members[j - 1];
      j = j - 1;      
    }    
    nom[j] = x;
    members[j] = t;
  } 
  print(members);
}  

triPrenom(var members) {  
  List prenom = new List();
  for (var i = 0; i < members.length; i++) {    
    prenom.add(members[i]['prénom']);
  }    
  for (var i = 1; i < prenom.length; i++) {
    var x;
    var t = new Map();
    var j;
    x = prenom[i];
    t = members[i];
    j = i;    
    while (j >= 1 && prenom[j - 1].compareTo(x) > 0 ) {      
      prenom[j] = prenom[j - 1];
      members[j] = members[j - 1];
      j = j - 1;      
    }    
    prenom[j] = x;
    members[j] = t;
  } 
  print(members);  
}  

obtenirListeLettre(members, car) {  
  List lettre = new List();  
  for (var i = 0; i < members.length; i++) {
    Map obtenirLettre = members[i];
    var nom = obtenirLettre["nom"];
    if(nom.startsWith(car)) {
      lettre.add(obtenirLettre);
    }
  }  
  print(lettre);
}