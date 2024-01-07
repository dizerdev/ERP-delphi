program ERPDelphi;

uses
  Vcl.Forms,
  View.Main in 'src\views\View.Main.pas' {ViewMain},
  Calculator in 'src\views\Calculator.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewMain, ViewMain);
  Application.Run;
end.
