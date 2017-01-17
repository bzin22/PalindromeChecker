public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
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
public boolean palindrome(String word)
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
public String reverse(String str)
{
    String s = new String();
    for (int i = str.length()-1; i >= 0; i--)
    {
      s = s + str.substring(i,i+1);
    }
    return s;
}


