import "dart:io";
import "Klassen/class_garbagecancolor.dart";
import "functions/functions.dart";

void main() {
// Hier werden die Objekte zu GarbageCanColors erstellt

  Garbagecancolor yellowcan = Garbagecancolor("yellow",
      "Hier steht der Text für die gelbe Tonne", "Hier erscheint das Bild");
  Garbagecancolor bluecan =
      Garbagecancolor("blue", "Text für die blue Tonne", "Bild bleue Tonne");
  Garbagecancolor blackcan =
      Garbagecancolor("black", "Text schwarze Tonne", "Bild schwarze Tonne");
  Garbagecancolor browncan = Garbagecancolor(
      "brown", "Text für die braune Tonne", "Bild für die braune Tonne");

  // Hier wird der User begrüßt
  stdout.writeln(" Herzlich Willkomen zur Marler Müll App");
  stdout.writeln(" Sie haben die Wahl. Was möchten Sie tun? \n ");
  // Erste Auswahl
  stdout.writeln(
      "Wählen Sie (L) für Login , (R) für Register , (G) als Gast beitreten;");

  String choice = stdin.readLineSync()!;
  switch (choice) {
    case "L":
      stdout.writeln(" Bitte geben Sie Username ein");
      String testUserName = "Dirk";
      String username = stdin.readLineSync()!;
      stdout.writeln(" Bitte geben Sie Password ein");
      String testUserPass = "0000";
      String userPassInput = stdin.readLineSync()!;
// Abfrage wenn alles korrekt Weiterleitung zu changescreen
      if (username == testUserName && userPassInput == testUserPass) {
        stdout.writeln(
            "Was möchten sie tun?\n [K]Kalender \n [ABC]Abfall-ABC \n [N]News \n [S]Service \n [R]Recycle");
        String userChange = stdin.readLineSync()!;
        switch (userChange) {
          case "K":
            stdout.writeln("Jetzt sind Sie auf dem Kalender ");
          case "ABC":
            stdout.writeln("Jetzt sind Sie auf dem ABfall ABC ");
          case "N":
            stdout.writeln("Hier finden Sie die News ");
          case "S":
            stdout.writeln("Jetzt sind Sie beim  Service ");
          case "R":
            stdout.writeln(
                "Welche Tonne wollen Sie sehen? \n [G]elb \n [S]chwarz \n [B]raun \n [BL]au");
            // Hier wird auf die Functionen gesprungen
            String colortrash = stdin.readLineSync()!;
            switch (colortrash) {
              case "G":
                yellowcan.showColorContents();
              case "S":
                bluecan.showColorContents();
              case "B":
                yellowcan.showColorContents();
              case "BL":
                browncan.showColorContents();
            }
        }
      }

    // noch im oberen switch
    case "R":
      stdout.writeln("Hier gehts zur Registrierung");
    case "G":
      stdout.writeln("Als Gast haben Sie nicht alle Vorteile");
  }
}
