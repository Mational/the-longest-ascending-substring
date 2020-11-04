unit najdluzszy_podciag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  rozdzielanie_lancucha;

type
  TForm1 = class(TForm)
    zamknij: TButton;
    ciag: TEdit;
    StaticText1: TStaticText;
    znajdz: TButton;
    podciag: TEdit;
    StaticText2: TStaticText;
    procedure CLOSE_ME(Sender: TObject);
    procedure Wyroznij_ciag(Sender: TObject);
    procedure znajdzClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CLOSE_ME(Sender: TObject);
begin
  close();
end;

procedure TForm1.Wyroznij_ciag(Sender: TObject);
begin
  ciag.SetFocus;
end;

procedure TForm1.znajdzClick(Sender: TObject);
var
  tekst: String;
  Output: TSplit;
  i: Integer;
  Liczby : array[0..99] of Integer;
  nr_indeksu: Integer;
  dl_podciagu: Integer;
  max_indeks: Integer;
  max_podciag: Integer;
begin
  tekst := Form1.ciag.Text;       // pobieranie tekstu z okna ciag
  Split(tekst,Output);            // rozdzielenie tekstu na kilka ³ancuchow

  // Zamiana ciagu na tablice liczb

  for i := Low(Output) to High(Output) do begin
    if( not TryStrToInt( Output[i], Liczby[i] ) ) then begin
      ShowMessage('Nie prawidlowy ciag.');
      Form1.ciag.Text := '';
      Form1.podciag.Text := '';
      Exit;
    end else begin
      Liczby[i] := StrToInt( Output[i] );
    end;
  end;

  // Przypisanie startowych wartoœci najdluzszego podciagu

  nr_indeksu :=0;
  dl_podciagu :=0;
  max_indeks := nr_indeksu;
  max_podciag := dl_podciagu;

  //Znajdowanie najdluzszego podciagu

  for i := 1 to High(Output) do begin
    if Liczby[i] > Liczby[i-1] then begin
      dl_podciagu := dl_podciagu + 1;
    end else begin
      if dl_podciagu > max_podciag then begin
        max_podciag := dl_podciagu;
        max_indeks := nr_indeksu;
      end;

      nr_indeksu := i;
      dl_podciagu := 0;
    end;
  end;

  if dl_podciagu > max_podciag then begin
        max_podciag := dl_podciagu;
        max_indeks := nr_indeksu;
  end;

  //Zamiana znalezionego ciagu na lancuch

  tekst :='';
  dl_podciagu :=max_indeks + max_podciag;
  Form1.podciag.Text := '';
  for i := max_indeks to dl_podciagu do begin
    Form1.podciag.Text := Form1.podciag.Text + IntToStr(Liczby[i]) + ' ';
  end;

end;

end.
