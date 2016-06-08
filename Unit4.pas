unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TEconomicForm2 = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EconomicForm2: TEconomicForm2;
  i: integer;

implementation

uses Unit5;

{$R *.dfm}

procedure TEconomicForm2.Button1Click(Sender: TObject);
begin
if radiogroup1.itemindex=-1 then showmessage('Забыли ответить на вопрос!')
else
begin
if radiogroup1.itemindex=1 then i:=i+1;
EconomicForm3.Show;
EconomicForm2.close;

end;
end;

end.
