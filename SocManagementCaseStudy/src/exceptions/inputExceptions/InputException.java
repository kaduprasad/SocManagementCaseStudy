package exceptions.inputExceptions;

public class InputException extends Exception{
    String errorCode; // predefined code number for error

    public String getErrorCode() {
        return errorCode;
    }

    public InputException(String message, String errorCode, Exception e) {
        super(message,e);
        this.errorCode = errorCode;
    }

    public InputException(String message){
        super(message);
    }
}
