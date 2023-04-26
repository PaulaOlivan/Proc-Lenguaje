/*********************************************************************************
 * Excepción utilizada al intentar declarar un símbolo con el mismo nombre
 * que alguno de los existentes en el nivel actual
 *
 * Fichero:    AlreadyDefinedSymbolException.java
 * Fecha:      02/03/2022
 * Versión:    v1.1
 * Asignatura: Procesadores de Lenguajes, curso 2021-2022, basado en código del 19-20
 **********************************************************************************/

package lib.symbolTable.exceptions;

import lib.symbolTable.Symbol;

public class AlreadyDefinedSymbolException extends Exception {

	public AlreadyDefinedSymbolException(Symbol simbolo) {
		super("ERROR SEMANTICO: El símbolo "+simbolo+" ya está definido en el ámbito actual");
	}
}
