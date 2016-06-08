unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TEconomicForm3 = class(TForm)
    RadioGroup1: TRadioGroup;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EconomicForm3: TEconomicForm3;
  i: integer;

implementation

uses Unit6;

{$R *.dfm}

procedure TEconomicForm3.Button1Click(Sender: TObject);

begin
if radiogroup1.itemindex=-1 then showmessage('Забыли ответить!')
else
begin
if radiogroup1.itemindex=3 then i:=i+1;
EconomicForm4.Show;
EconomicForm3.Close;
end;
end;

end.
