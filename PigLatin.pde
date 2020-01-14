public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	  System.out.println(pigLatin(lines[i]));
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	String vowels = "aeiou";
	for(int i = 0; i < sWord.length(); i++)
	{
    	for(int n = 0; n < 5; n++)
    		if(sWord.substring(i,i+1).equals(vowels.substring(n,n+1)))
    			return i;
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
		return sWord + "ay";
	if(findFirstVowel(sWord) == 0)
		return sWord + "way";
	if(sWord.length() >= 2 && sWord.substring(0,2).equals("qu"))
		return sWord.substring(2) + "quay";
	if(findFirstVowel(sWord) != -1 && findFirstVowel(sWord) != 0 && sWord.length() > 0)
		return sWord.substring(1) + sWord.substring(0,1) + "ay";
	else
		return "ERROR!";
}
