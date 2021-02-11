package exceptions.databaseExceptions;

public class DatabaseException extends Exception {

    String errorCode; // predefined error codes eg.001 , refer location : Logs/errorCodes.csv

    public String getErrorCode() {
        return errorCode;
    }

    public DatabaseException(String message, String errorCode, Exception e) {
        super(message,e);
        this.errorCode = errorCode;
        e.printStackTrace();
    }

    public DatabaseException(String message,Exception e){
        super(message);
        e.printStackTrace();
    }
}
