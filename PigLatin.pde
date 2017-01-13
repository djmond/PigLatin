import java.util.*;
int a =1;
public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postconditio

{

 for(int i=0;i<sWord.length()-1;i++){
    if(sWord.substring(i,i+1).equals("a")){
      return i;
    }
    if(sWord.substring(i,i+1).equals("e")){
      return i;
    }
    if(sWord.substring(i,i+1).equals("i")){
      return i;
    }
    if(sWord.substring(i,i+1).equals("o")){
      return i;
    }
    if(sWord.substring(i,i+1).equals("u")){
      return i;
    }
    if(sWord.substring(i,i+2).equals("qu")){
    	return a; 
    }

    
  }

	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) ==0){
		return sWord + "way";
	}
	else if(findFirstVowel(sWord.substring(0,2))==1){
		return sWord.substring(2) + "quay";
	}
	else if(findFirstVowel(sWord)!=0){
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
	}

	else
	{
		return "ERROR!";
	}
}
