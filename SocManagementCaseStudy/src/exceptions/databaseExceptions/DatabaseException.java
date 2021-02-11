package exceptions.databaseExceptions;

public class DatabaseException extends Exception {

    String errorCode; // predefined error codes for database errors.

    public String getErrorCode() {
        return errorCode;
    }

    public DatabaseException(String message, String errorCode, Exception e) {
        super(message,e);
        this.errorCode = errorCode;
    }

    public DatabaseException(String message){
        super(message);
    }
}
