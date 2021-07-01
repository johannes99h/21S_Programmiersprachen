#include <iostream>
//#include <vector>         Vorteil: beliebige Erweiterung des Arrays (ohne dyn. Speicherallokation)

//Teilaufgabe a: Initialisierung dreier Variablen
int a = 3;
int b = 5; 
double c;

//Teilaufgabe c: Initialisierung eines Arrays
int ar[5] = {10, 20, 30, 40, 50};

int main()
{
    //Teilaufgabe b: Multiplikation von a & b sowie Konsolenausgabe von c
    c = a * b;      //implizite Umwandlung von int in double in Cpp möglich
    std::cout << c << std::endl;

    //Teilaufgabe d: Ausgabe der im Array gespeicherten Werte mittels einer for-Schleife
    for(int i = 0; i < 5; i++)
    {
        std::cout << ar[i] << std::endl;
    }

    //Zusatz: Länge des Arrays
    size_t len = sizeof(ar) / sizeof(ar[0]);        //Länge des Arrays in Bytes geteilt durch Bytes eines Elements

    //Teilaufgabe e: Speichern der Zahlen 1 bis 5 mittels einer while-Schleife
    int j = 1;

    while(j <= 5)
    {
        ar[j] = j;
        std::cout << ar[j] << std::endl;

        //Teiilaufgabe f: "Fast fertig!" bei vorletzter Zahl ausgeben
        if(j == 4)            
        {
            std::cout << "Fast fertig!" << std::endl;
        }
        
        j++;
    }

}