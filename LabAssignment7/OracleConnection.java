package oracleconnection;

/**
 * @author Momo, Jesh, & Pierre
 */
public class OracleConnection {

    public static void main(String[] args) {
        ConnectDB co = new ConnectDB();
        co.Connect();
        Mainscreen ms = new Mainscreen();
        ms.setVisible(true);
    }
    
}
