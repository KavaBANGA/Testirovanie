unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TWelcomeForm = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WelcomeForm: TWelcomeForm;

implementation

uses Unit3;

{$R *.dfm}



procedure TWelcomeForm.Button1Click(Sender: TObject);
begin
EconomicForm.Show;
 WelcomeForm.Close;
end;

procedure TWelcomeForm.Button2Click(Sender: TObject);
var SaveTxt:TStringList;
    iterIntCount:integer;
    SNameAndNameAndK:string;
begin
SaveTxt:=TStringList.Create;
SaveTxt.LoadFromFile(ExtractFilePath(Application.ExeName)+'StudentRegistr.txt');

SNameAndNameAndK:=Edit1.Text+' '+Edit2.Text+' '+Edit3.Text;

for iterIntCount:=0 to SaveTxt.Count -1 do
  begin
    if SNameAndNameAndK = SaveTxt[iterIntCount] then
      begin
        Label1.Enabled:=True;
        Label1.Caption:='Вход подтвержден!';
        Button1.Enabled:=True;
        Break;
      end
        else
           Label1.Caption:= 'Проверьте подлинность данных!';
            Button1.Enabled:=False;
            Button3.Enabled:=False;
            Button4.Enabled:=False;
            Button5.Enabled:=False;
  end;
end;

end.
