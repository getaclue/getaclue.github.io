import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LazyTitleMaker {
    public static void main(String[] args) {
        if (args.length < 1) {
            System.out.println("Please do like this: LazyTitleMaker <title>");
            java.lang.System.exit(0);
        }

        DateFormat dateStyleFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date currDate = new Date();
        String currDateText = dateStyleFormat.format(currDate);

        String input = args[0].toLowerCase();
        String inputWSReplaced = input.replaceAll("\\s+", "-");
        String sanitizedString = inputWSReplaced.replaceAll("[\\',?]", "");

        String resultantURI = currDateText + "-" + sanitizedString;

        System.out.println(resultantURI + ".markdown");
        System.out.println("Length: " + resultantURI.length());
    }
}
