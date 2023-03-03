import UIKit




func game(player1: String, player2: String) -> String {
    let options = ["Stein", "Schere", "Papier"].description.lowercased()
    if !options.contains(player1.lowercased()) || !options.contains(player2.lowercased()) {
        return "Fehler: Einer der Spieler hat eine ungültige Wahl getroffen."
    } else if player1.lowercased() == player2.lowercased() {
        return "Unentschieden"
    } else if (player1.lowercased() == "Stein" && player2.lowercased() == "Schere") || (player1.lowercased() == "Schere" && player2.lowercased() == "Papier") || (player1.lowercased() == "Papier" && player2.lowercased() == "Stein") {
        return "Spieler 1 gewinnt"
    } else {
        return "Spieler 2 gewinnt"
    }
}

game(player1: "STEIN", player2: "stein")





