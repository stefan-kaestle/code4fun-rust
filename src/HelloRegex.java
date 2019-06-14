import java.util.regex.Pattern;
import java.io.BufferedReader;
import java.io.FileReader;

public class HelloRegex {

  public static void main(String[] args) {

    Pattern m = Pattern.compile(".*Benutzer.*\\.html");

    long num = 0;

    try (BufferedReader br = new BufferedReader(new FileReader(args[0]))) {
      String line;
      while ((line = br.readLine()) != null) {

        if (m.matcher(line).matches()) {

          num += 1;
        }
      }
    } catch (Exception e) {
      e.printStackTrace();
    }

    System.out.println("Number of matches: " + num);

  }
}
