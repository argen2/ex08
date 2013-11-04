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