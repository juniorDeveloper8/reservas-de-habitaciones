/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface;

import Exeptions.CredencialesIncorrectasException;
import Model.Registros;
import java.sql.SQLException;

/**
 *
 * @author rober
 */
public interface RegistroInterface {

    public abstract int saveRegistro(Registros resgistros);

    public abstract Registros login(String psw, String correo) throws CredencialesIncorrectasException, SQLException;

    public abstract int updateBYPsw(String correo, String psw);
}
