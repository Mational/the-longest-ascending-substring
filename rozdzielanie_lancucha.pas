(*

           b4p Project v. 1.1
           -----------
           Utworzenie pliku: 28.06.2002 00:28
           Autorzy: Adam Boduch [adam@4programmers.net]

           -----------
           Modul SplitUnit
           http://4programmers.net
*)

unit rozdzielanie_lancucha;

(*
   Modul ten zawiera procedure Split, ktora rozdziela dane w Stringu wg. okreslonego
   znaku.
*)

interface

uses Windows;

var
  KeyChar : Char = ' '; // znak wg. bedzie nastepywac rozdzielenie

type
  TSplit = array of String; // nowy typ danych okreslajacy tablice stringow

  procedure Split(Value : String; var Output : TSplit); // funkcja rozdzielajaca Split

implementation

procedure Split(Value : String; var Output : TSplit);
var
  iCount : Integer;

  procedure Explode;
  var
    Found : Integer;
  begin
    SetLength(Output, iCount+1);
    Found := Pos(KeyChar, Value); // najpierw nastepuje odnalezienie szukanego znaku

   { pozniej za pomoca funkcji Copy nastepuje skopiowanie czesci danych do elementu
     tablicy }
    Output[iCount] := Copy(Value, 1, Found -1);
    Delete(Value, 1, Found); // skopiowane juz dane zostaja ze stringa usuniete
    Inc(iCount);  // zwiêkszenie licznika

    Found := Pos(KeyChar, Value); // ponowne odszukanie znaku KeyChar
    if Found > 0 then Explode; // w razie znaleienia ponownie wywolaj te procedure
  end;

begin
{
   Funkcja Split powoduje rozdzielenie danych ze stringa na kilka(kilkanascie)
   elementow i przypisanie jej do tablicy Output. Procedura ta wywoluje inna - Explode,
   ktora to jest procedura rekurencyjna (o rekurencji mozesz poczytac m.in na stronie
   www.4programmers.net/Algorytmy ) i to ona ma kluczowe zadanie rozdzielenie lancucha.
}
  iCount := 0;
  SetLength(Output, 1); // okreslenie liczby elementow tablicy dynamicznej
  Insert(KeyChar, Value, Length(Value)+1); // dodanie na samym koncu lancucha ze stalej KeyChar

  Explode; // wywolanie funkcji rekurencyjnej
end;

end.
