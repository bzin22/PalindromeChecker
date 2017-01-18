public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    lines[i] = noSpaces(lines[i]);
    lines[i] = noCapitals(lines[i]);
    lines[i] = lookForCharacters(lines[i]);

    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public String noCapitals(String word) // make lowercase 
{
  return word.toLowerCase();
}

public String noSpaces(String word) // checks for spaces
{
  String q = new String();
  for (int i = 0; i < word.length(); i++)
  {
    if ( !word.substring(i, i+1).equals(" ") )
    {
      q = q + word.substring(i,i+1);
    }
  }
  return q;
}

public String lookForCharacters(String word) // checks for characters
{
  String p = new String();
  for (int i = 0; i < word.length(); i++)
  {
    if ( Character.isLetter(word.charAt(i)) == true )
    {
      p = p + word.substring(i, i+1);
    }
  }
  return p;
}

public boolean palindrome(String word) // checks if it's a palindrome
{
  String r = new String(); 
  String p = new String();
  for (int i = word.length()-1; i >= 0; i--)
    {
      r = r + word.substring(i,i+1);
    }
  for (int a = r.length()-1; a >= 0; a--)
    {
      p = p + r.substring(a,a+1);
    }
  if ( p.equals(r) )
    {
      return true;
    }
  else
    {
      return false; 
    }
}
public String reverse(String str) // reverses the string
{
    String s = new String();
    for (int i = str.length()-1; i >= 0; i--)
    {
      s = s + str.substring(i,i+1);
    }
    return s;
}


