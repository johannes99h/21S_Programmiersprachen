#include <cmath>
#include <cstdlib>
#include <iostream>
#include <iomanip>
#include <vector>
#include <cstdio>

using namespace std;

/*********
  TBall
**********/

class TBall
{
public:
  /* Implementieren Sie folgende Funktionen, so dass sie zum Hauptprogramm passen
   
   - Konstruktor
   - X()
   - Y()
   - Fliege()
   - SetzeV(double vx, double vy)
   */
  
protected:
  // Deklarieren Sie member-Variablen für Position, Geschwindigkeit und Zeitschritt
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
  const double dt = 1;
  TBall ball(50, 25, dt);
  
  // Hauptschleife
  for (int i=0; i < 100; i++)
  {
    // Zufällig Geschwindigkeit
    const double vx = drand48() - 0.5;
    const double vy = drand48() - 0.5;
    ball.SetzeV(vx, vy);
    ball.Fliege();

    // Ausgabe
    cout << "t = " << i*dt << "    X = " << ball.X() << "    Y = " << ball.Y()  << endl;
  }

  
  return 0;
}