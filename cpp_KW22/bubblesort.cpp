#include <iostream>
#include <cstdlib>		//exit-Statement bei "falscher" Eingabe
#include <string>		//String-Operationen (v.a. Vergleich)

using namespace std;

void bubblesort(int a[], int n)
{
	for(int i = 0; i < (n-1); i++) 
	{
		for(int j = 0; j < (n-i-1); j++)
		{
			if(a[j] > a[j+1])
			{
				//Swap-Funktion
				int tmp = a[j];
				a[j] = a[j+1];
				a[j+1] = tmp;
			}
		}
	}
}
	

int main()
{
	//Initialisierung der lokalen Variablen
	int * array;
	int n; 

	//Initialisierung des Arrays
	cout << "Geben Sie die Länge des Arrays ein: " << endl;
	cin >> n;

	if(n < 0)
	{
		cout << "ungültige Eingabe" << endl;
		exit(-1);
	}

	//dynamische Speicherallokation
	array = new int[n]; 

	//Wahl der Initialisierungsmethode
	string str_in;
	string str_rand = ("rand"); 
	string str_self = ("self");
	cout << "Wahl der Initialisierungsmethode" << endl;
	cout << " zufällige Zahlen -> 'rand' eingeben" << endl; 
	cout << " eigene Eingabe   -> 'self' eingeben" << endl;
	cin >> str_in;
	
	if(str_in.compare(str_rand) == 0)
	{
		//zufällige Initialisierung
		cout << "zufällig generierte Zahlen:" << endl;
				
		srand48(42);

		for(int i = 0; i < n; i++)
		{
			array[i] = (int)(drand48() * 10);
		}

		for(int i = 0; i < n; i++)
		{
			cout << array[i] << " ";  
		}
		cout << endl;
	}
	else if(str_in.compare(str_self) == 0)
	{
		//Initialisierung des Arrays über das Terminal
		cout << "Geben Sie die Zahlen ein: " << endl;
		for(int i = 0; i < n; i++)
		{
			cin >> array[i];
		}
	}	
	else
	{
		cout << "ungültige Eingabe" << endl;
		exit(-1);
	}
	
	//Aufruf der eigentlichen Sortierfunktion
	bubblesort(array, n);
	
	//Ausgabe der sortierten Werte
	cout << "Ausgabe der sortierten Werte: " << endl; 
	for(int i = 0; i < n; i++)
	{
		cout << array[i] << " ";
	}
	cout << endl;

	//allokierten Speicherplatz freigeben
	delete [] array;

	return 0; 
}
