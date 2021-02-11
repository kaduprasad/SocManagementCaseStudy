package exceptions.databaseExceptions;

import java.sql.SQLOutput;

public class DatabaseConnectException extends Exception{
    String errorCode; // predefined code number for error refer location : Logs/errorCodes.csv

    public String getErrorCode() {
        return errorCode;
    }

    public DatabaseConnectException(String message, String errorCode, Exception e) {
        super(message);
        this.errorCode = errorCode;
        System.out.println(errorCode);
        e.printStackTrace();
    }

    public DatabaseConnectException(String message){
        super(message);
    }
}
