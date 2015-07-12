package hello;

import static sabina.Sabina.*;

public class Hello {
    public static void main (String[] args) {
        port (8080);
        serve (req -> "Hello!");
    }
}
