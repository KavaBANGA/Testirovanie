unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TEconomicForm5 = class(TForm)
    Memo1: TMemo;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EconomicForm5: TEconomicForm5;
  i: integer;

implementation

{$R *.dfm}

procedure TEconomicForm5.Button1Click(Sender: TObject);
begin
if radiogroup1.itemindex=-1 then showmessage('������ �������� �� ������!')
else
begin
if radiogroup1.itemindex=3 then i:=i+1;
end;
case i of
0,1,2:showmessage('�� �������� 2');
3:showmessage('�� �������� 3');
4:showmessage('�� �������� 4');
5:showmessage('�� �������� 5');
end;
end;


end.
