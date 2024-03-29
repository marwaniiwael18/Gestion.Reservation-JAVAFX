package entities;

import java.time.LocalDateTime;

public class Reservation {
    int ID_reservation;
    int ID_utilisateur;
    int ID_Terrain;
    LocalDateTime Date_Heure; // Changed from Date to LocalDateTime
    String Duree;

    // Empty constructor
    public Reservation() {
    }

    // Constructor with ID_reservation
    public Reservation(int ID_reservation, int ID_utilisateur, int ID_Terrain, LocalDateTime date_Heure, String duree) {
        this.ID_reservation = ID_reservation;
        this.ID_utilisateur = ID_utilisateur;
        this.ID_Terrain = ID_Terrain;
        this.Date_Heure = date_Heure;
        this.Duree = duree;
    }

    // Constructor without ID_reservation
    public Reservation(int ID_utilisateur, int ID_Terrain, LocalDateTime date_Heure, String duree) {
        this.ID_utilisateur = ID_utilisateur;
        this.ID_Terrain = ID_Terrain;
        this.Date_Heure = date_Heure;
        this.Duree = duree;
    }

    // Getters and setters
    public int getID_reservation() {
        return ID_reservation;
    }

    public void setID_reservation(int ID_reservation) {
        this.ID_reservation = ID_reservation;
    }

    public int getID_utilisateur() {
        return ID_utilisateur;
    }

    public void setID_utilisateur(int ID_utilisateur) {
        this.ID_utilisateur = ID_utilisateur;
    }

    public int getID_Terrain() {
        return ID_Terrain;
    }

    public void setID_Terrain(int ID_Terrain) {
        this.ID_Terrain = ID_Terrain;
    }

    public LocalDateTime getDate_Heure() {
        return Date_Heure;
    }

    public void setDate_Heure(LocalDateTime date_Heure) {
        this.Date_Heure = date_Heure;
    }

    public String getDuree() {
        return Duree;
    }

    public void setDuree(String duree) {
        this.Duree = duree;
    }

    // toString method
    @Override
    public String toString() {
        return "Reservation{" +
                "ID_reservation=" + ID_reservation +
                ", ID_utilisateur=" + ID_utilisateur +
                ", ID_Terrain=" + ID_Terrain +
                ", Date_Heure=" + Date_Heure +
                ", Duree='" + Duree + '\'' +
                '}';
    }
}
