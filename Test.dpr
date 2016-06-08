program Test;

uses
  Forms,
  Unit1 in 'Unit1.pas' {RegistrForm},
  Unit2 in 'Unit2.pas' {WelcomeForm},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {EconomicForm2},
  Unit5 in 'Unit5.pas' {EconomicForm3},
  Unit6 in 'Unit6.pas' {EconomicForm4},
  Unit7 in 'Unit7.pas' {EconomicForm5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TRegistrForm, RegistrForm);
  Application.CreateForm(TWelcomeForm, WelcomeForm);
  Application.CreateForm(TEconomicForm, EconomicForm);
  Application.CreateForm(TEconomicForm2, EconomicForm2);
  Application.CreateForm(TEconomicForm3, EconomicForm3);
  Application.CreateForm(TEconomicForm4, EconomicForm4);
  Application.CreateForm(TEconomicForm5, EconomicForm5);
  Application.Run;
end.
