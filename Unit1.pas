unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TRegistrForm = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegistrForm: TRegistrForm;

implementation

uses Unit2;

{$R *.dfm}

procedure TRegistrForm.Button1Click(Sender: TObject);
var SaveTxt:TStringList;
    SNameUsr, NameUsr, KUsr: string;
begin
SaveTxt:=TStringList.Create;
SaveTxt.LoadFromFile(ExtractFilePath(Application.ExeName)+'StudentRegistr.txt');
if (Edit1.Text <> '') and (Edit2.Text <> '') and (Edit3.Text <> '') then
    begin
      NameUsr:=Trim(Edit1.Text);
      SNameUsr:=Trim(Edit2.Text);
      KUsr:=Trim(Edit3.Text);
      SaveTxt.Add(NameUsr+' '+SNameUsr+' '+KUsr);
      SaveTxt.SaveToFile(ExtractFilePath(Application.ExeName)+'StudentRegistr.txt');
end;

 MessageDlg('Спасибо, Вы успешно зарегистрированы', mtWarning,[mbOK],0);
 WelcomeForm.Show;


end;
end.


