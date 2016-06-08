unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TEconomicForm = class(TForm)
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EconomicForm: TEconomicForm;
  i:integer;

implementation

uses Unit4;

{$R *.dfm}

procedure TEconomicForm.Button1Click(Sender: TObject);

begin
if radiogroup1.itemindex=-1 then showmessage('Забыли ответить на вопрос!')
else
begin
if radiogroup1.itemindex=2 then i:=i+1;
EconomicForm2.Show;
EconomicForm.Close;
end;
end;
end.


