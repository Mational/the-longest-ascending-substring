program najdluzszy_podciag_rosnacy;

uses
  Vcl.Forms,
  najdluzszy_podciag in 'najdluzszy_podciag.pas' {Form1},
  rozdzielanie_lancucha in 'rozdzielanie_lancucha.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
