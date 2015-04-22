import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;
%%
%public

%class Lexer
%standalone

%{
    private List<String> tokens = new ArrayList<>();
%}

%{
    public List<String> analizar(String archivo){
        FileReader in = null;
        try{
            in = new FileReader(archivo);
            Lexer lex = new Lexer(in);
            while(!lexer.zzAtEOF){
            lexer.yylex();
            }
        }catch(Exception ex){
            System.out.println("NO JALO D:");
        }finally{
            try{
                in.close();
            }catch(Exception ex){
                System.out.println("NO CERRO D:");
            }
        }
            return tokens;
    }
%}

%%

">"     {tokens.add("<"); System.out.println("MAYOR_QUE");}
"<"     {tokens.add("<"); System.out.println("MENOR_QUE");}
"=="    {tokens.add("=="); System.out.println("IGUAL_QUE");}
"%%"    {tokens.add("%%"); System.out.println("PORCENTAJE");}
[_A-Za-z0-9]+ {tokens.add("id"); System.out.println("ID");}
[0-9]+ {tokens.add("num"); System.out.println("NUMERO");}