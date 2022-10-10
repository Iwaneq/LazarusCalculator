unit csharp_superiorProj;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, LCLType;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    Operand1, Operand2, Key, Answer, Operators: String;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
  case(Key) of
  VK_1:
       Key := 1;
  VK_2:
       Key := 2;
  VK_3:
       Key := 3;
  VK_4:
       Key := 4;
  VK_5:
       Key := 5;
  VK_6:
       Key := 6;
  VK_7:
       Key := 7;
  VK_8:
       Key := 8;
  VK_9:
       Key := 9;
  VK_0:
       Key := 0;
  end;

  if Edit1.Text = '0' then
     Edit1.Text := floattostr(Key)
  else
      Edit1.Text := Edit1.Text + floattostr(Key)
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
     if Edit1.Text = '0' then
     Edit1.Text := Button1.Caption
     else
         Edit1.Text := Edit1.Text + Button1.Caption
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     if Edit1.Text = '0' then
     Edit1.Text := Button2.Caption
     else
         Edit1.Text := Edit1.Text + Button2.Caption
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   if Edit1.Text = '0' then
     Edit1.Text := Button3.Caption
     else
         Edit1.Text := Edit1.Text + Button3.Caption
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   if Edit1.Text = '0' then
     Edit1.Text := Button4.Caption
     else
         Edit1.Text := Edit1.Text + Button4.Caption
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
     Operand1 := Edit1.Text;
     Operators := '/';
     Edit1.Text := '0';
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
     Operand1 := Edit1.Text;
     Answer := floattostr(StrToFloat(Operand1) * StrToFloat(Operand1));
     Edit1.Text := Answer;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
     Edit1.Text := '0'
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
     Operand1 := Edit1.Text;
     Operators := '*';
     Edit1.Text := '0';
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
     Operand2 := Edit1.Text;
     case(Operators) of
     '+':
       Answer := floattostr(StrToFloat(Operand1) + StrToFloat(Operand2));
     '-':
       Answer := floattostr(StrToFloat(Operand1) - StrToFloat(Operand2));
     '*':
       Answer := floattostr(StrToFloat(Operand1) * StrToFloat(Operand2));
     '/':
       Answer := floattostr(StrToFloat(Operand1) / StrToFloat(Operand2));
     end;
     Edit1.Text := Answer;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
     if (Pos('.', Edit1.Text)<>0) then
     exit
     else
         Edit1.Text := Edit1.Text + Button13.Caption;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  if Edit1.Text = '0' then
     Edit1.Text := Button11.Caption
     else
         Edit1.Text := Edit1.Text + Button11.Caption
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Operand1 := Edit1.Text;
   Operators := '-';
   Edit1.Text := '0';
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  if Edit1.Text = '0' then
     Edit1.Text := Button12.Caption
     else
         Edit1.Text := Edit1.Text + Button12.Caption
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
     Operand1 := Edit1.Text;
     Operators := '+';
     Edit1.Text := '0';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
     if Edit1.Text = '0' then
     Edit1.Text := Button6.Caption
     else
         Edit1.Text := Edit1.Text + Button6.Caption
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
     if Edit1.Text = '0' then
     Edit1.Text := Button7.Caption
     else
         Edit1.Text := Edit1.Text + Button7.Caption
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
     if Edit1.Text = '0' then
     Edit1.Text := Button8.Caption
     else
         Edit1.Text := Edit1.Text + Button8.Caption
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
     if Edit1.Text = '0' then
     Edit1.Text := Button9.Caption
     else
         Edit1.Text := Edit1.Text + Button9.Caption
end;

end.

