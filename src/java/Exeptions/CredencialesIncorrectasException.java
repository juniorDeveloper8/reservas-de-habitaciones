/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Exeptions;

/**
 *
 * @author rober
 */
public class CredencialesIncorrectasException extends Exception {

    public CredencialesIncorrectasException() {
        super("Credenciales de inicio de sesión incorrectas");
    }

    public CredencialesIncorrectasException(String message) {
        super(message);
    }

    public CredencialesIncorrectasException(String message, Throwable cause) {
        super(message, cause);
    }
}
