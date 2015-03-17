/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package compilador;

/**
 *
 * @author Chuck
 */
import java.io.BufferedReader;
import java.io.FileReader;
public class Compilador {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try{
            FileReader fr = new FileReader("D:\\proyecto_compiladores_primerparcial\\Compilador\\cadena.txt");
            BufferedReader br = new BufferedReader(fr);
            String cadena;
            
            while((cadena=br.readLine())!=null){
                System.out.println(""+cadena);
            }
        }catch(Exception ex){
        
        }
    }
    
}
