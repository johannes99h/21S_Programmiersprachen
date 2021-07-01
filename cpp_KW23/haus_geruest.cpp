#include <cmath>
#include <cstdlib>
#include <iostream>
#include <iomanip>
#include <vector>
#include <cstdio>

using namespace std;

// Deklariere Hilfsfunktion
class TBall;
void ZeichneFeld(const TBall &ball, const double feldX, const double feldY);

/*********
  TBall
**********/

class TBall
{
  // Hier kopieren Sie zunächst Ihre TBall-Klasse aus der Präsenzübung
  // Dann fügen Sie zwei Datenfelder für die Spielfeldgröße in X und Y Richtung hinzu
  // Initialisieren Sie diese im Konstruktor
  // Verändern Sie die Fliege() Funktion dahingehend, dass der Ball immer auf dem Spielfeld bleibt
};


/*****************
  Hauptprogramm
*****************/

int main()
{
  // Initialisieren des Zufallsgenerators
  cout << "Random seed eingeben: ";
  int seed;
  cin >> seed;
	srand48(seed);
  
  // Ball erstellen
  const double dt = 5;
  const double feldX = 100;
  const double feldY = 30;
  TBall ball(feldX/2., feldY/2., dt, feldX, feldY);
  // Zufällige Geschwindigkeit
  const double vx = drand48() - 0.5;
  const double vy = drand48() - 0.5;
  ball.SetzeV(vx, vy);
  
  // Hauptschleife
  for (int i=0; i < 100; i++)
  {

    ball.Fliege();
    
    // Zeichne Feld
    ZeichneFeld(ball, feldX, feldY);

    // Taste
    getchar();
    
    // Ausgabe
//    cout << "t = " << i*dt << "    X = " << ball.X() << "    Y = " << ball.Y()  << endl;
  }
  return 0;
}

/*************
  ZeichneFeld
***************/

void ZeichneFeld(const TBall &ball, const double feldX, const double feldY)
{
  const double torBreite = 5;
  
  // Seitenaus
  cout << "x";
  for (int i=0; i < feldX; i++) cout << "-";
  cout << "x" << endl;
  
  // Spielfeld
  for (int j=0; j < feldY; j++)
  {
    // Grundlinie mit Tor von A
    if ( ( j > feldY/2-torBreite/2 ) &&
        ( j < feldY/2+torBreite/2 ) )
      cout << "#";
    else cout << "|";
    
    // Feld
    for (int i=0; i < feldX; i++)
    {
      // Was kann alles an diesem Platz sein?
      bool ballHier = false;
      bool AHier = false;
      bool BHier = false;
      
      // Prüfe, ob Ball an dieser Stelle ist
      if ( ( ball.Y() >= j) && (ball.Y() < j+1) &&
          ( ball.X() >= i) && (ball.X() < i+1) )
        ballHier = true;
      
      // Prüfe, ob Spieler von A an dieser Stelle
/*      for ( int k=0; k < mTeamA.size(); k++)
        if ( ( mTeamA[k]->PosY() >= j) && (mTeamA[k]->PosY() < j+1) &&
            ( mTeamA[k]->PosX() >= i) && (mTeamA[k]->PosX() < i+1) )
          AHier = true;
      
      // Prüfe, ob Spieler von B an dieser Stelle
      for ( int k=0; k < mTeamB.size(); k++)
        if ( ( mTeamB[k]->PosY() >= j) && (mTeamB[k]->PosY() < j+1) &&
            ( mTeamB[k]->PosX() >= i) && (mTeamB[k]->PosX() < i+1) )
          BHier = true;*/
      
      // Zeichne
      bool done = false;
      if ( ballHier && ! AHier && !BHier)
      {
        cout << "O";
        done = true;
      }
      if ( AHier && !ballHier && ! BHier)
      {
        cout << "A";
        done = true;
      }
      if ( BHier && !ballHier && ! AHier)
      {
        cout << "B";
        done = true;
      }
      if ( AHier && BHier && !ballHier)
      {
        cout << "X";
        done = true;
      }
      if ( AHier && ballHier && !BHier)
      {
        cout <<  "\033[1;31mA\033[0m";
        done = true;
      }
      if ( BHier && ballHier && !AHier)
      {
        cout <<  "\033[1;31mB\033[0m";
        done = true;
      }
      if ( AHier && BHier && ballHier)
      {
        cout << "\033[1;31mX\033[0m";
        done = true;
      }
      
      if (!done) cout << " ";
      
    }
    
    // Grundlinie mit Tor von B
    if ( ( j > feldY/2-torBreite/2 ) &&
        ( j < feldY/2+torBreite/2 ) )
      cout << "#";
    else cout << "|";
    cout << endl;
  }
  
  // Seitenaus
  cout << "x";
  for (int i=0; i < feldX; i++) cout << "-";
  cout << "x" << endl;

}