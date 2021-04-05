unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ExtCtrls, Buttons, Unit2, Unit3;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MainMenu1: TMainMenu;
    MenuAbout: TMenuItem;
    MenuCounter: TMenuItem;
    MenuExitGame: TMenuItem;
    MenuGame: TMenuItem;
    MenuHelp: TMenuItem;
    MenuInterface: TMenuItem;
    MenuWhite: TMenuItem;
    MenuBlack: TMenuItem;
    MenuViolet: TMenuItem;
    MenuMoves150: TMenuItem;
    MenuMoves300: TMenuItem;
    MenuMoves500: TMenuItem;
    Menu5min: TMenuItem;
    Menu10min: TMenuItem;
    Menu15min: TMenuItem;
    MenuTimer: TMenuItem;
    MenuNewGame: TMenuItem;
    MenuOpenGame: TMenuItem;
    MenuOption: TMenuItem;
    MenuRestMove: TMenuItem;
    MenuRestTime: TMenuItem;
    MenuRules: TMenuItem;
    MenuSaveGame: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Shape1: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    SpeedButton1: TSpeedButton;
    SpeedButton0: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Timer1: TTimer;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Menu15minClick(Sender: TObject);
    procedure MenuAboutClick(Sender: TObject);
    procedure MenuCounterClick(Sender: TObject);
    procedure Menu10minClick(Sender: TObject);
    procedure MenuBlackClick(Sender: TObject);
    procedure MenuVioletClick(Sender: TObject);
    procedure MenuMoves150Click(Sender: TObject);
    procedure MenuMoves300Click(Sender: TObject);
    procedure MenuMoves500Click(Sender: TObject);
    procedure Menu5minClick(Sender: TObject);
    procedure MenuOptionClick(Sender: TObject);
    procedure MenuRestTimeClick(Sender: TObject);
    procedure MenuNewGameClick(Sender: TObject);
    procedure MenuRulesClick(Sender: TObject);
    procedure MenuSaveGameClick(Sender: TObject);
    procedure MenuOpenGameClick(Sender: TObject);
    procedure MenuExitGameClick(Sender: TObject);
    procedure MenuTimerClick(Sender: TObject);
    procedure MenuWhiteClick(Sender: TObject);
    procedure Shape11ChangeBounds(Sender: TObject);
    procedure Shape15ChangeBounds(Sender: TObject);
    procedure Shape1ChangeBounds(Sender: TObject);
    procedure SpeedButton0Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure btnEnable;
begin
Form1.SpeedButton1.Enabled:=true;
Form1.SpeedButton2.Enabled:=true;
Form1.SpeedButton3.Enabled:=true;
Form1.SpeedButton4.Enabled:=true;
Form1.SpeedButton5.Enabled:=true;
Form1.SpeedButton6.Enabled:=true;
Form1.SpeedButton7.Enabled:=true;
Form1.SpeedButton8.Enabled:=true;
Form1.SpeedButton9.Enabled:=true;
Form1.SpeedButton10.Enabled:=true;
Form1.SpeedButton11.Enabled:=true;
Form1.SpeedButton12.Enabled:=true;
Form1.SpeedButton13.Enabled:=true;
Form1.SpeedButton14.Enabled:=true;
Form1.SpeedButton15.Enabled:=true;
end;

procedure btnDisable;
begin
Form1.SpeedButton1.Enabled:=false;
Form1.SpeedButton2.Enabled:=false;
Form1.SpeedButton3.Enabled:=false;
Form1.SpeedButton4.Enabled:=false;
Form1.SpeedButton5.Enabled:=false;
Form1.SpeedButton6.Enabled:=false;
Form1.SpeedButton7.Enabled:=false;
Form1.SpeedButton8.Enabled:=false;
Form1.SpeedButton9.Enabled:=false;
Form1.SpeedButton10.Enabled:=false;
Form1.SpeedButton11.Enabled:=false;
Form1.SpeedButton12.Enabled:=false;
Form1.SpeedButton13.Enabled:=false;
Form1.SpeedButton14.Enabled:=false;
Form1.SpeedButton15.Enabled:=false;
end;

function CorrectMove (var btnLeft, btnTop, btn0left, btn0Top: integer): boolean;
begin
     CorrectMove:= (btnLeft=btn0Left) and (btnTop=btn0Top+80)
     or (btnLeft=btn0Left) and (btnTop=btn0Top-80)
     or (btnLeft=btn0Left+80)and (btnTop=btn0Top)
     or (btnLeft=btn0Left-80)and (btnTop=btn0Top);
end;

procedure Moves (var btnLeft, btnTop, btn0left, btn0Top: integer);
var x, y: integer;
begin
x:=btnLeft;
btnLeft:=btn0left;
btn0left:=x;
y:=btnTop;
btnTop:=btn0Top;
btn0Top:=y;
end;
procedure TForm1.MenuSaveGameClick(Sender: TObject);
begin
  SaveDialog1.Execute;
end;

procedure TForm1.MenuNewGameClick(Sender: TObject);
begin

end;

procedure TForm1.MenuRulesClick(Sender: TObject);
begin
 Form3.ShowModal;
end;

procedure TForm1.MenuRestTimeClick(Sender: TObject);
begin

end;




procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Edit3Change(Sender: TObject);
begin

end;

procedure TForm1.Button6Click(Sender: TObject);
begin

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin

end;

procedure TForm1.Label4Click(Sender: TObject);
begin

end;

procedure TForm1.Menu15minClick(Sender: TObject);
begin
  edit4.text:='0:15:00';
  label6.Visible:=true;
  edit4.Visible:=true;
end;






procedure TForm1.MenuAboutClick(Sender: TObject);
begin
   Form2.ShowModal;
end;

procedure TForm1.MenuCounterClick(Sender: TObject);
begin
  if menuCounter.Checked=False then
  begin
    menuCounter.Checked:=True;
    Label1.Visible:=true;
    Edit1.Visible:=true;
  end
  else
  begin
    menuCounter.Checked:=False;
    Label1.Visible:=False;
    Edit1.Visible:=False;
     label5.Visible:=False;
  edit3.Visible:=false;
  end
end;

procedure TForm1.Menu10minClick(Sender: TObject);
begin
  edit4.text:='0:10:00';
  label6.Visible:=true;
  edit4.Visible:=true;
end;

procedure TForm1.MenuBlackClick(Sender: TObject);
begin
  SpeedButton0.Color:=ClBlack;
  SpeedButton0.Font.Color:=ClWhite;
    SpeedButton1.Color:=ClBlack;
  SpeedButton1.Font.Color:=ClWhite;
    SpeedButton2.Color:=ClBlack;
  SpeedButton2.Font.Color:=ClWhite;
    SpeedButton3.Color:=ClBlack;
  SpeedButton3.Font.Color:=ClWhite;
    SpeedButton4.Color:=ClBlack;
  SpeedButton4.Font.Color:=ClWhite;
    SpeedButton5.Color:=ClBlack;
  SpeedButton5.Font.Color:=ClWhite;
    SpeedButton6.Color:=ClBlack;
  SpeedButton6.Font.Color:=ClWhite;
    SpeedButton7.Color:=ClBlack;
  SpeedButton7.Font.Color:=ClWhite;
    SpeedButton8.Color:=ClBlack;
  SpeedButton8.Font.Color:=ClWhite;
    SpeedButton9.Color:=ClBlack;
  SpeedButton9.Font.Color:=ClWhite;
    SpeedButton10.Color:=ClBlack;
  SpeedButton10.Font.Color:=ClWhite;
    SpeedButton11.Color:=ClBlack;
  SpeedButton11.Font.Color:=ClWhite;
    SpeedButton12.Color:=ClBlack;
  SpeedButton12.Font.Color:=ClWhite;
    SpeedButton13.Color:=ClBlack;
  SpeedButton13.Font.Color:=ClWhite;
    SpeedButton14.Color:=ClBlack;
  SpeedButton14.Font.Color:=ClWhite;
    SpeedButton15.Color:=ClBlack;
  SpeedButton15.Font.Color:=ClWhite;
end;

procedure TForm1.MenuWhiteClick(Sender: TObject);
begin
  SpeedButton0.Color:=ClSilver;
  SpeedButton0.Font.Color:=ClBlack;
    SpeedButton1.Color:=ClSilver;
  SpeedButton1.Font.Color:=ClBlack;
    SpeedButton2.Color:=ClSilver;
  SpeedButton2.Font.Color:=ClBlack;
    SpeedButton3.Color:=ClSilver;
  SpeedButton3.Font.Color:=ClBlack;
    SpeedButton4.Color:=ClSilver;
  SpeedButton4.Font.Color:=ClBlack;
    SpeedButton5.Color:=ClSilver;
  SpeedButton5.Font.Color:=ClBlack;
    SpeedButton6.Color:=ClSilver;
  SpeedButton6.Font.Color:=ClBlack;
  SpeedButton7.Color:=ClSilver;
  SpeedButton7.Font.Color:=ClBlack;
    SpeedButton8.Color:=ClSilver;
  SpeedButton8.Font.Color:=ClBlack;
    SpeedButton9.Color:=ClSilver;
  SpeedButton9.Font.Color:=ClBlack;
    SpeedButton10.Color:=ClSilver;
  SpeedButton10.Font.Color:=ClBlack;
    SpeedButton11.Color:=ClSilver;
  SpeedButton11.Font.Color:=ClBlack;
    SpeedButton12.Color:=ClSilver;
  SpeedButton12.Font.Color:=ClBlack;
    SpeedButton13.Color:=ClSilver;
  SpeedButton13.Font.Color:=ClBlack;
    SpeedButton14.Color:=ClSilver;
  SpeedButton14.Font.Color:=ClBlack;
    SpeedButton15.Color:=ClSilver;
  SpeedButton15.Font.Color:=ClBlack;
end;

procedure TForm1.Shape11ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape15ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape1ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.SpeedButton0Click(Sender: TObject);
begin

end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton10.Left; btnTop:= SpeedButton10.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton10.Left:= btnLeft;
  SpeedButton10.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton11.Left; btnTop:= SpeedButton11.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton11.Left:= btnLeft;
  SpeedButton11.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton12.Left; btnTop:= SpeedButton12.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton12.Left:= btnLeft;
  SpeedButton12.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton13.Left; btnTop:= SpeedButton13.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton13.Left:= btnLeft;
  SpeedButton13.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton14.Left; btnTop:= SpeedButton14.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton14.Left:= btnLeft;
  SpeedButton14.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton15.Left; btnTop:= SpeedButton15.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton15.Left:= btnLeft;
  SpeedButton15.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton1.Left; btnTop:= SpeedButton1.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton1.Left:= btnLeft;
  SpeedButton1.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton2.Left; btnTop:= SpeedButton2.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton2.Left:= btnLeft;
  SpeedButton2.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton3.Left; btnTop:= SpeedButton3.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton3.Left:= btnLeft;
  SpeedButton3.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';

end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton4.Left; btnTop:= SpeedButton4.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton4.Left:= btnLeft;
  SpeedButton4.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';

end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton5.Left; btnTop:= SpeedButton5.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton5.Left:= btnLeft;
  SpeedButton5.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';

end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton6.Left; btnTop:= SpeedButton6.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton6.Left:= btnLeft;
  SpeedButton6.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton7.Left; btnTop:= SpeedButton7.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton7.Left:= btnLeft;
  SpeedButton7.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';

end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton8.Left; btnTop:= SpeedButton8.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton8.Left:= btnLeft;
  SpeedButton8.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
var
  btnLeft, btnTop, btn0Left, btn0Top: integer;
begin
  edit5.Text:='';
  btnLeft:= SpeedButton9.Left; btnTop:= SpeedButton9.Top;
  btn0Left:= SpeedButton0.Left; btn0Top:= SpeedButton0.Top;
  if CorrectMove (btnLeft, btnTop, btn0Left,  btn0Top)= true then
  begin
  Moves (btnLeft, btnTop, btn0Left,  btn0Top);
  SpeedButton9.Left:= btnLeft;
  SpeedButton9.Top:= btnTop;
  SpeedButton0.Left:= btn0Left;
  SpeedButton0.Top:= btn0Top;
end
  else edit5.Text:='Некорректный ход';

end;



procedure TForm1.MenuVioletClick(Sender: TObject);
begin
SpeedButton0.Color:=$00C08080;
SpeedButton0.Font.Color:=$00FF80FF;
SpeedButton1.Color:=$00C08080;
SpeedButton1.Font.Color:=$00FF80FF;
SpeedButton2.Color:=$00C08080;
SpeedButton2.Font.Color:=$00FF80FF;
SpeedButton3.Color:=$00C08080;
SpeedButton3.Font.Color:=$00FF80FF;
SpeedButton4.Color:=$00C08080;
SpeedButton4.Font.Color:=$00FF80FF;
SpeedButton5.Color:=$00C08080;
SpeedButton5.Font.Color:=$00FF80FF;
SpeedButton6.Color:=$00C08080;
SpeedButton6.Font.Color:=$00FF80FF;
SpeedButton7.Color:=$00C08080;
SpeedButton7.Font.Color:=$00FF80FF;
SpeedButton8.Color:=$00C08080;
SpeedButton8.Font.Color:=$00FF80FF;
SpeedButton9.Color:=$00C08080;
SpeedButton9.Font.Color:=$00FF80FF;
SpeedButton10.Color:=$00C08080;
SpeedButton10.Font.Color:=$00FF80FF;
SpeedButton11.Color:=$00C08080;
SpeedButton11.Font.Color:=$00FF80FF;
SpeedButton12.Color:=$00C08080;
SpeedButton12.Font.Color:=$00FF80FF;
SpeedButton13.Color:=$00C08080;
SpeedButton13.Font.Color:=$00FF80FF;
SpeedButton14.Color:=$00C08080;
SpeedButton14.Font.Color:=$00FF80FF;
SpeedButton15.Color:=$00C08080;
SpeedButton15.Font.Color:=$00FF80FF;
end;

procedure TForm1.MenuMoves150Click(Sender: TObject);
begin
  edit3.text:='150';
  label5.Visible:=true;
  edit3.Visible:=true;

end;

procedure TForm1.MenuMoves300Click(Sender: TObject);
begin
   edit3.text:='300';
   label5.Visible:=true;
  edit3.Visible:=true;
end;

procedure TForm1.MenuMoves500Click(Sender: TObject);
begin
    edit3.text:='500';
    label5.Visible:=true;
  edit3.Visible:=true;
end;

procedure TForm1.Menu5minClick(Sender: TObject);
begin
  edit4.text:='0:05:00';
  label6.Visible:=true;
  edit4.Visible:=true;
end;

procedure TForm1.MenuOptionClick(Sender: TObject);
begin

end;

procedure TForm1.MenuOpenGameClick(Sender: TObject);
begin
  OpenDialog1.Execute;
end;

procedure TForm1.MenuExitGameClick(Sender: TObject);
begin
  Application.terminate
end;

procedure TForm1.MenuTimerClick(Sender: TObject);
begin
label4.Caption:=timetostr(now);
  if menuTimer.Checked=False then
    begin
      menuTimer.Checked:=True;
      Label2.Visible:=true;
      Edit2.Visible:=true;
    end
    else
    begin
      menuTimer.Checked:=False;
      Label2.Visible:=False;
      Edit2.Visible:=False;
      label6.Visible:=False;
  edit4.Visible:=false;
    end

end;



procedure TForm1.Timer1Timer(Sender: TObject);
var t1, t2: tdatetime;
begin
label3.Caption:=timetostr(now);
t1:= strtotime(label3.caption);
t2:= strtotime(label4.caption);
edit2.Text:=timetostr(t1-t2);
end;




end.

