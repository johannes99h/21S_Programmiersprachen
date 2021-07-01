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
  
	TBall(double x, double y, double dt);
	void Zeitschritt(const double dt); 
	double X() const { return mX; }
	double Y() const { return mY; }
	void Fliege(); 						//expliziter Euler-Schritt: x' = x + vx * dt
	double SetzeV(const double vx, const double vy)		//Fehlermeldung bei Auslagerung
	{
		mvx = vx;
		mvy = vy;
	} 

protected:
  // Deklarieren Sie member-Variablen für Position, Geschwindigkeit und Zeitschritt
  	double mX, mY;		//Position
	double mvx, mvy;	//Geschwindigkeit
	double mdt;		//Zeitschritt
};


/*****************
  Konstruktor
*****************/

TBall::TBall(double X, double y, double dt)
{
	mX = X;	
	mY = y;
	mdt = dt;
}

/****************
  Fliege
****************/

void TBall::Fliege()		//nichts übergeben, Vorgabe!
{
	mX += mvx * mdt; 
	mY += mvy * mdt; 
}

/****************
  SetzeV
****************/

/*void Tball::SetzeV(const double vx, const double vy) 	//müsste nicht unbedingt ausgelagert werden!
{
	mvx = vx;
	mvy = vy;
}*/

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
  TBall ball(50, 25, dt);	//x=50, y=25, dt
  
  // Hauptschleife
  for (int i=0; i < 100; i++)
  {
    // zufällige Geschwindigkeit für jeden Zeitschritt?
    const double vx = drand48() - 0.5;		//hier const wenig sinnvoll...
    const double vy = drand48() - 0.5;		//...war aber vorgegeben
    ball.SetzeV(vx, vy);
    ball.Fliege();

    // Ausgabe
    cout << "t = " << i*dt << "    X = " << ball.X() << "    Y = " << ball.Y()  << endl;
  }
  
  return 0;
}
