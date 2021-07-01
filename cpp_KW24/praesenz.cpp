#include <cmath>
#include <cstdlib>
#include <iostream>
#include <iomanip>
#include <vector>
#include <cstdio>

using namespace std;

// Deklariere Hilfsfunktion
class TBall;
class TSpieler;
void ZeichneFeld(const TBall &ball, vector<TSpieler> &spieler, const double feldX, const double feldY);
const double torBreite = 5;

/*********
  TBall
**********/

class TBall
{
public:
  TBall(const double X, const double Y, const double dt, const double feldX, const double feldY)
  {
    mX = X;
    mY = Y;
    mDt = dt;
    mFeldX = feldX;
    mFeldY = feldY;
  };
  
  void Fliege()
  {
    mX += mVx*mDt;
    mY += mVy*mDt;
    // Tor
    if ( mX < 0 && mY > mFeldY/2 - torBreite/2 && mY < mFeldY/2 + torBreite/2 ) { cout << "B hat gewonnen!" << endl; exit(1); }
    if ( mX > mFeldX && mY > mFeldY/2 - torBreite/2 && mY < mFeldY/2 + torBreite/2 ) { cout << "A hat gewonnen!" << endl; exit(1); }
    // Abprallen
    if ( mX < 0 ) { mX = -mX; mVx = -mVx; }
    if ( mY < 0 ) { mY = -mY; mVy = -mVy; }
    if ( mX > mFeldX ) { mX = mFeldX-(mX-mFeldX); mVx = -mVx; }
    if ( mY > mFeldY ) { mY = mFeldY-(mY-mFeldY); mVy = -mVy; }
  }
  double X() const { return mX; }
  double Y() const { return mY; }
  void SetzeV(const double vx, const double vy)
  {
    mVx = vx;
    mVy = vy;
  }
  
protected:
  double mX, mY;
  double mFeldX, mFeldY;
  double mVx, mVy;
  double mDt;
};

/*********
 TSpieler
 **********/

class TSpieler
{
public:
  /* Implementieren Sie die TSpieler Klasse, so dass die Methoden zum Hauptprogramm passen, d.h.
   - Konstruktor
   - Init(X, Y, dt, team, feldX, feldY)
   - Kick(TBall &ball) : hier soll der Spieler die Geschwindigkeit des Balls dahingehend verändern,
   dass er sich in gerader Linie auf das gegnerische Tor zu bewegt
   - Laufe() : hier soll der Spieler in eine zufällige Richtung laufen
   - Team() : gibt die Teamnummer, d.h. 0 oder 1 zurück
   */

	//Konstruktor
	TSpieler()
	{
		//kann leer gelassen werden -> main-Methode initialisiert übüber Init-Funktion
		//gibt Standardkonstruktoren, die Objekt ohne Eigenschaften definieren
	}

	//Init-Funktion
	void Init(const double X, const double Y, const double dt, const int team, const double feldX, const double feldY)
	{
		mX = X;
		mY = Y;
		mDt = dt;
		mTeam = team;
		mFeldX = feldX;
		mFeldY = feldY;

		if(mTeam == 0) mTorX = mFeldX; 
		else mTorX = 0; 		
	}

	//nicht gefordert, aber notwendig
	double X() const { return mX; };
	double Y() const { return mY; };

	//Kick-Funktion
	void Kick(Tball &ball)
	{
		//Geschwindigkeit des Balls verändern
		const double vBall = drand48();

		//Richtung gegnerisches Tor bewegen
		const double vBallX = vBall * ();	//gibt ne vorgefertigte Funktion dafür!
		const double vBallY;			//gibt ne vorgefertigte Funktion dafür!
	}

	//Laufe-Funktion
	void Laufe()
	{
		//zufällige Geschwindigkeit
		double vx = drand48() - 0.5;
		double vy = drand48() - 0.5;

		//Vermeiden, dass Spieler aus dem Feld laufen
		while(mX + vx * mDt < 0 || mX + vx * mDt > mFeldX)
		{
			vx = drand48() - 0.5;
		}
		//Problem: Endlosschleife möglich! -> alternativ wie Ball machen! (Flieg()-Methode)

		while(mY + vy + mDt < 0 || mY + vy * mDt > mFeldY)
		{
			vy = drand48() - 0.5;
		}
		//Problem: Endlosschleife möglich! -> alternativ wie Ball machen! (Flieg()-Methode)


		//Spieler läuft in zufällige Richtung
		mX += vx * mDt;
		mY += vy * mDt;
	}

	//Team-Funktion
	int Team()
	{
		return mTeam;
	}

	// Hausaufgabe
	// Spieler wird schlau -> erbt von TSpieler
	// bei Laufe-Methode "virtual" davor
	// neue Funktion, die kein "virtual" hat (bezeichnet Fkt.s, die in Tochterklassen umdefiniert werden!)
	// "virtual" eigentlich nur Compiler-Anweisung, nur bei Pointern auf Objekte unbedingt notwendig!
	// so umschreiben, dass Spieler zum Ball hinläuft
	// diesmal vielleicht testen obs funktioniert!
	// "halbe Hausaufgaben sind in Ordnung"
	// mit random-Geschwindigkeit zu den Koordinaten des Balls laufen
  
protected:
	double mX, mY;			//vmtl. keine gute Idee, gleiche Bezeichnung wie für Ball -> kein Problem!
	double mFeldX, mFeldY;
  	double mDt;
	double mTorX, mTorY;		//Koordinaten des Tors (nicht gefragt)
	int mTeam;	
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
  const double dt = 10;
  const double feldX = 100;
  const double feldY = 30;
  TBall ball(feldX/2., feldY/2., dt, feldX, feldY);
  
  // Spieler erstellen
  vector<TSpieler> spieler(4);
  spieler[0].Init(feldX/4, feldY/3, dt, 0, feldX, feldY);
  spieler[1].Init(feldX/4, 2*feldY/3, dt, 0, feldX, feldY);
  spieler[2].Init(3*feldX/4, feldY/3, dt, 1, feldX, feldY);
  spieler[3].Init(3*feldX/4, 2*feldY/3, dt, 1, feldX, feldY);
  
  // Hauptschleife
  for (int i=0; i < 1000; i++)
  {
    // Spieler laufen
    for (int j=0; j < 4; j++)
      spieler[j].Laufe();
    
    // Kicken
    for (int j=0; j < 4; j++)
    {
      const double distX = spieler[j].X() - ball.X();
      const double distY = spieler[j].Y() - ball.Y();
      const double dist = sqrt(distX*distX + distY*distY);
      if ( dist < 5 )
        spieler[j].Kick(ball);
    }
    // Ball fliegt
    ball.Fliege();
    
    // Zeichne Feld
    ZeichneFeld(ball, spieler, feldX, feldY);
    
    // Taste
    getchar();
  }
  return 0;
}

/*************
  ZeichneFeld
***************/

void ZeichneFeld(const TBall &ball, vector<TSpieler> &spieler, const double feldX, const double feldY)
{
 
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
      
      // Prüfe, ob Spieler an dieser Stelle
      for ( int k=0; k < 4; k++)
        if ( ( spieler[k].Y() >= j) && (spieler[k].Y() < j+1) &&
            ( spieler[k].X() >= i) && (spieler[k].X() < i+1) )
        {
          if ( spieler[k].Team() == 0 ) AHier = true;
          if ( spieler[k].Team() == 1 ) BHier = true;
        }
    
      
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
