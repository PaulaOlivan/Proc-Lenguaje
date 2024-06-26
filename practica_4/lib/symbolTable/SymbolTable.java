//*****************************************************************
// File:   SymbolTable.java
// Author: Procesadores de Lenguajes-University of Zaragoza
// Date:   julio 2021
// Coms:   Atributos públicos para ahorrarnos el uso de getters y setters
//*****************************************************************

//la tabla de símbolos será un ArrayList de diccionarios (HashMap<String, Symbol>), manejada como
//una pila: se inserta y accede por la derecha
//Cada nuevo bloque se apilará, guardando los símbolos en el diccionario correspondiente
//El constructor ya genera el primer bloque, vacío inicialmente.

//https://quick-adviser.com/can-a-hashmap-have-multiple-values-for-same-key/
//HashMap doesn’t allow duplicate keys but allows duplicate values. That means A 
//single key can’t contain more than 1 value but more than 1 key can contain a single value.
//HashMap allows null key also but only once and multiple null values.
//https://docs.oracle.com/javase/8/docs/api/java/util/HashMap.html

package lib.symbolTable;

import java.util.*;

import javax.lang.model.util.ElementScanner6;

import lib.symbolTable.exceptions.SymbolNotFoundException;
import lib.symbolTable.exceptions.AlreadyDefinedSymbolException;
import lib.symbolTable.*;

public class SymbolTable {
	private final int ST_SIZE = 16; //hasta 16 niveles
    private final int HASH_SIZE = 1024; //buckets
    private ArrayList<HashMap<String, Symbol>> st;
    private Set<String> reservedWords;
    public ArrayList<Integer> topDir;
    private ArrayList<String> blockName;

    public int level; //nivel actual

    public SymbolTable() {
        st = new ArrayList<HashMap<String, Symbol>>(ST_SIZE);
        level = -1; //aún no hay ningún bloque intoducido

        blockName = new ArrayList<String>();

        topDir = new ArrayList<Integer>();
        topDir.add(2);

        insertBlock("Global");
        reservedWords = new HashSet<String> ();
    }

    public SymbolTable(String[] pals) {
    	st = new ArrayList<HashMap<String, Symbol>>(ST_SIZE);
        level = -1; //aún no hay ningún bloque introducido

        blockName = new ArrayList<String>();

        topDir = new ArrayList<Integer>();
        topDir.add(2);

        insertBlock("Global");
        reservedWords = new HashSet<String>(Arrays.asList(pals));
    }
    
    //apila un nuevo bloque, para añadir ámbitos de variables
    public void insertBlock(String name) {
        st.add(new HashMap<String, Symbol>(HASH_SIZE));
        topDir.add(2);
        level++;
        blockName.add(name);
    }

    //elimina un bloque
    public void removeBlock() {
        st.remove(st.size()-1);
        level--;
        topDir.remove(topDir.size()-1);
        blockName.remove(blockName.size()-1);
    }

    public String getBlockName() {
        return blockName.get(level);
    }

    //inserta las palabras reservadas, sustituyendo el anterior contenido
    public void insertReservedWords(String[] pals) {
        reservedWords = new HashSet<String>(Arrays.asList(pals));
    }
    
    public boolean isReservedWord (String word)  
    {
    	return reservedWords.contains(word); 
    }
    
    //Si un símbolo con el mismo nombre está o es palabra reservada, excepción. 
    //Si no, se inserta
    public void insertSymbol(Symbol s) throws AlreadyDefinedSymbolException {
        if(reservedWords.contains(s.name)) {
            throw new AlreadyDefinedSymbolException(s);
        }
        HashMap<String, Symbol> currentBlock = st.get(st.size()-1);
        if (currentBlock.containsKey(s.name)) { // ya está
            throw new AlreadyDefinedSymbolException(s);
        } else {
            s.nivel = level;

            if (s instanceof SymbolInt
                || s instanceof SymbolBool 
                || s instanceof SymbolChar)
            {
                s.dir = topDir.get(level+1)+1; // El dir del simbolo es un long pero el dir de SymbolTable
                topDir.set(level+1, (int)s.dir);
                currentBlock.put(s.name, s);
            }
            else if (s instanceof SymbolArray)
            {
                s.dir = topDir.get(level+1)+1;
                currentBlock.put(s.name, s);

                // Espacio para el array
                for (int i = 0; i < ((SymbolArray) s).size(); i++)
                {
                    Integer dir = topDir.get(level+1)+1; 
                    topDir.set(level+1, dir);
                }
            }
            else {  // Funcion o procedimiento
                currentBlock.put(s.name, s);
            }
        }
    }

    //Si no está, excepción. Si está, devuelve su referencia
    public Symbol getSymbol (String name) throws SymbolNotFoundException {
    	Symbol result = findSymbol(name); 
        if (result == null) {
        	throw new SymbolNotFoundException();
        }
        return result; 
    }

    public Integer getTopDir() {
        return topDir.get(level+1);
    }
    
    // comprueba si está el símbolo 
    public boolean containsSymbol (String name) {
    	return findSymbol(name) != null; 
    }
    
    //para usar en "getSymbol" y "containsSymbol"
    private Symbol findSymbol (String name) {
    	for (int i=st.size()-1; i>=0; i--) {
            if (st.get(i).containsKey(name)) {
                return st.get(i).get(name);
            }
        }
        return null; 
    }

    //devuelve la tabla como un string
    public String toString() {
    	final String linea = "------------------------------------------------\n";
    	StringBuilder builder = new StringBuilder(); 
        builder.append(linea); 
        String tabs = "";
        for (int i=0; i<st.size(); i++) {
            for (Map.Entry entry : st.get(i).entrySet()) {
				//crear secuencia de tabuladores
                tabs = new String(new char[i]).replace("\0", "\t");
                builder.append(tabs); 
                builder.append(entry.toString()); 
                builder.append("\n"); 
            }
        }
        builder.append(linea); 
        builder.append("Variable tope: "+getTopDir()+"\n");
        return builder.toString();
    }
}