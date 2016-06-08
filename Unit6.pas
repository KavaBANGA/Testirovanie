unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TEconomicForm4 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EconomicForm4: TEconomicForm4;
  i: integer;

implementation

uses Unit7;

{$R *.dfm}

procedure TEconomicForm4.Button1Click(Sender: TObject);
begin
if radiogroup1.itemindex=-1 then showmessage('Забыли ответить на вопрос!')
else
begin
if radiogroup1.itemindex=2 then i:=i+1;
EconomicForm5.Show;
EconomicForm4.Close;
end;
end;

end.
