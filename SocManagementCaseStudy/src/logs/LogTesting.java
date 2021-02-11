package logs;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

public class LogTesting {
    final static Logger logger = Logger.getLogger(LogTesting.class.getName());

    public static void main(String[] args) {
        PropertyConfigurator.configure("D:\\android studio learning\\SocManagementCaseStudy\\properties\\log4j.properties");

        logger.debug("This is Debugger msg");
    }
}
