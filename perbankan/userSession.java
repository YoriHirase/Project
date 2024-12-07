package perbankan;

public class userSession {

    private static int saldo; // Untuk menyimpan saldo sementara
    private static int rekening; // Untuk menyimpan username
    private static String username; // Untuk menyimpan username
    private static String pin; // Untuk menyimpan PIN

    public static int getSaldo() {
        return saldo;
    }

    public static void setSaldo(int saldo) {
        userSession.saldo = saldo;
    }

    public static void setUsername(String username) {
        userSession.username = username;
    }

    public static String getRekening() {
        return Integer.toString(rekening);
    }

    public static void setRekening(int rekening) {
        System.out.println(rekening);
        userSession.rekening = rekening;
    }

    public static String getUsername() {
        return username;
    }

    public static void setPin(String pin) {
        userSession.pin = pin;
    }

    public static String getPin() {
        return pin;
    }
}
