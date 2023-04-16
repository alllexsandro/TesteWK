program WKTeste;

uses
  Vcl.Forms,
  uWKTeste in 'uWKTeste.pas' {FRMTeste},
  uWKDataModule in 'uWKDataModule.pas' {DTMWK: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRMTeste, FRMTeste);
  Application.CreateForm(TDTMWK, DTMWK);
  Application.Run;
end.
