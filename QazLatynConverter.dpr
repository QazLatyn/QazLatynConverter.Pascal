program QazLatynConverter;

uses
  Vcl.Forms,
  QazLatynConverter.Example in 'QazLatynConverter.Example.pas' {QazLatynConverterForm},
  QazLatynHelper in 'QazLatynHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TQazLatynConverterForm, QazLatynConverterForm);
  Application.Run;
end.
