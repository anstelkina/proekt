unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ExtCtrls, Buttons, Unit2, Unit3, Types;

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
    Label7: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    MainMenu1: TMainMenu;
    MenuAbout: TMenuItem;
    MenuCounter: TMenuItem;
    MenuExitGame: TMenuItem;
    MenuGame: TMenuItem;
    MenuHelp: TMenuItem;
    MenuInterface: TMenuItem;
    MenuEndGame: TMenuItem;
    MenuOffMove: TMenuItem;
    MenuOffTime: TMenuItem;
    MenuSaveOption: TMenuItem;
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
    procedure Edit2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Label7Click(Sender: TObject);
    procedure Menu15minClick(Sender: TObject);
    procedure MenuAboutClick(Sender: TObject);
    procedure MenuCounterClick(Sender: TObject);
    procedure Menu10minClick(Sender: TObject);
    procedure MenuBlackClick(Sender: TObject);
    procedure MenuEndGameClick(Sender: TObject);
    procedure MenuOffTimeClick(Sender: TObject);
    procedure MenuOffMoveClick(Sender: TObject);
    procedure MenuSaveOptionClick(Sender: TObject);
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
    procedure Shape11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape12ChangeBounds(Sender: TObject);
    procedure Shape12MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape14ChangeBounds(Sender: TObject);
    procedure Shape14MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape15ChangeBounds(Sender: TObject);
    procedure Shape15MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape16ChangeBounds(Sender: TObject);
    procedure Shape16MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape17ChangeBounds(Sender: TObject);
    procedure Shape17MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape18MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape9ChangeBounds(Sender: TObject);
    procedure Shape9MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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

var
a:array[1..16]of integer;
i,j,rn,p,z:integer;

Function GameWin (): boolean;
begin
GameWin:=
(Form1.SpeedButton1.Left=8) and (Form1.SpeedButton2.Left=88) and (Form1.SpeedButton3.Left=168) and (Form1.SpeedButton4.Left=248) and
(Form1.SpeedButton5.Left=8) and (Form1.SpeedButton6.Left=88) and (Form1.SpeedButton7.Left=168) and (Form1.SpeedButton8.Left=248) and
(Form1.SpeedButton9.Left=8) and (Form1.SpeedButton10.Left=88) and (Form1.SpeedButton11.Left=168) and (Form1.SpeedButton12.Left=248) and
(Form1.SpeedButton13.Left=8) and (Form1.SpeedButton14.Left=88) and (Form1.SpeedButton15.Left=168) and (Form1.SpeedButton0.Left=248) and

(Form1.SpeedButton1.Top=8) and (Form1.SpeedButton5.Top=88) and (Form1.SpeedButton9.Top=168) and (Form1.SpeedButton13.Top=248) and
(Form1.SpeedButton2.Top=8) and (Form1.SpeedButton6.Top=88) and (Form1.SpeedButton10.Top=168) and (Form1.SpeedButton14.Top=248) and
(Form1.SpeedButton3.Top=8) and (Form1.SpeedButton7.Top=88) and (Form1.SpeedButton11.Top=168) and (Form1.SpeedButton15.Top=248) and
(Form1.SpeedButton4.Top=8) and (Form1.SpeedButton8.Top=88) and (Form1.SpeedButton12.Top=168) and (Form1.SpeedButton0.Top=248) and
(Form1.Label7.Caption='0');
end;

Function GameLose (): boolean;
begin
GameLose:=(Form1.Edit1.Text=Form1.Edit3.Text) or (Form1.Edit2.Text=Form1.Edit4.Text);
end;

procedure OptionDisable;
begin
Form1.MenuCounter.Enabled:= false;
Form1.MenuTimer.Enabled:= false;
Form1.MenuRestMove.Enabled:= false;
Form1.MenuRestTime.Enabled:= false;

end;

procedure OptionEnable;
begin
Form1.MenuCounter.Enabled:= true;
Form1.MenuTimer.Enabled:= true;
Form1.MenuRestMove.Enabled:= true;
Form1.MenuRestTime.Enabled:= true;
end;

procedure SaveGameToFile;
begin
Form1.listbox1.clear;
  begin
  for z:= 1 to 16 do
  begin
  with TSpeedButton(form1.components[z+25]) do
   begin
   Form1.listbox1.Items.Add(inttostr(left));
 end;
end;
  end;
   begin
  for z:= 1 to 16 do
  begin
  with TSpeedButton(form1.components[z+25]) do
   begin
   Form1.listbox1.Items.Add(inttostr(top));
 end;
end;
  end;
  Form1.listbox1.Items.SaveToFile('Save.dat');
  Form1.edit5.text:='Игра cохранена';
end;

procedure OpenGameFromFile;
begin
  Form1.listbox1.items.LoadFromFile('Save.dat');
  begin
  for z:= 1 to 16 do
  begin
  with TSpeedButton(form1.components[z+25]) do
   begin
   left:=strtoint (Form1.listbox1.Items[z-1]);
 end;
end;
  end;
   begin
  for z:= 1 to 16 do
  begin
  with TSpeedButton(form1.components[z+25]) do
   begin
   top:=strtoint (Form1.listbox1.Items[z+15]);
 end;
end;
  end;
  Form1.listbox1.clear;
  Form1.edit5.text:='Игра загружена';
end;

procedure randomplace;
begin
begin
 for j:=1  to 16 do a[j]:=0;
 randomize;
 i:=1;
repeat
 rn:=random(16)+1;
 j:=1;
 while (a[j]<>rn) and (j<>17) do j:=j+1;
 if j=17 then
 begin a[i]:=rn;
 i:=i+1;
 end;
until i=17;
end;
begin
 p:=0;
 for i:=0 to 3 do
 for j:=0 to 3 do
 begin
  p:=p+1;
  begin
  with TSpeedButton(form1.components[a[p]+25]) do
   begin
   left:=j*80+8;
   top:=i*80+8;
   end;
  end;
 end;
end;
end;

procedure WhiteOn;
begin
Form1.SpeedButton0.Color:=ClSilver;
  Form1.SpeedButton0.Font.Color:=ClBlack;
    Form1.SpeedButton1.Color:=ClSilver;
  Form1.SpeedButton1.Font.Color:=ClBlack;
    Form1.SpeedButton2.Color:=ClSilver;
  Form1.SpeedButton2.Font.Color:=ClBlack;
    Form1.SpeedButton3.Color:=ClSilver;
  Form1.SpeedButton3.Font.Color:=ClBlack;
    Form1.SpeedButton4.Color:=ClSilver;
  Form1.SpeedButton4.Font.Color:=ClBlack;
    Form1.SpeedButton5.Color:=ClSilver;
  Form1.SpeedButton5.Font.Color:=ClBlack;
    Form1.SpeedButton6.Color:=ClSilver;
  Form1.SpeedButton6.Font.Color:=ClBlack;
  Form1.SpeedButton7.Color:=ClSilver;
  Form1.SpeedButton7.Font.Color:=ClBlack;
    Form1.SpeedButton8.Color:=ClSilver;
  Form1.SpeedButton8.Font.Color:=ClBlack;
    Form1.SpeedButton9.Color:=ClSilver;
  Form1.SpeedButton9.Font.Color:=ClBlack;
    Form1.SpeedButton10.Color:=ClSilver;
  Form1.SpeedButton10.Font.Color:=ClBlack;
    Form1.SpeedButton11.Color:=ClSilver;
  Form1.SpeedButton11.Font.Color:=ClBlack;
    Form1.SpeedButton12.Color:=ClSilver;
  Form1.SpeedButton12.Font.Color:=ClBlack;
    Form1.SpeedButton13.Color:=ClSilver;
  Form1.SpeedButton13.Font.Color:=ClBlack;
    Form1.SpeedButton14.Color:=ClSilver;
  Form1.SpeedButton14.Font.Color:=ClBlack;
    Form1.SpeedButton15.Color:=ClSilver;
  Form1.SpeedButton15.Font.Color:=ClBlack;
end;

procedure BlackOn;
begin
Form1.SpeedButton0.Color:=ClBlack;
  Form1.SpeedButton0.Font.Color:=ClWhite;
    Form1.SpeedButton1.Color:=ClBlack;
  Form1.SpeedButton1.Font.Color:=ClWhite;
    Form1.SpeedButton2.Color:=ClBlack;
  Form1.SpeedButton2.Font.Color:=ClWhite;
    Form1.SpeedButton3.Color:=ClBlack;
  Form1.SpeedButton3.Font.Color:=ClWhite;
    Form1.SpeedButton4.Color:=ClBlack;
  Form1.SpeedButton4.Font.Color:=ClWhite;
    Form1.SpeedButton5.Color:=ClBlack;
  Form1.SpeedButton5.Font.Color:=ClWhite;
    Form1.SpeedButton6.Color:=ClBlack;
  Form1.SpeedButton6.Font.Color:=ClWhite;
    Form1.SpeedButton7.Color:=ClBlack;
  Form1.SpeedButton7.Font.Color:=ClWhite;
    Form1.SpeedButton8.Color:=ClBlack;
  Form1.SpeedButton8.Font.Color:=ClWhite;
    Form1.SpeedButton9.Color:=ClBlack;
  Form1.SpeedButton9.Font.Color:=ClWhite;
    Form1.SpeedButton10.Color:=ClBlack;
  Form1.SpeedButton10.Font.Color:=ClWhite;
    Form1.SpeedButton11.Color:=ClBlack;
  Form1.SpeedButton11.Font.Color:=ClWhite;
    Form1.SpeedButton12.Color:=ClBlack;
  Form1.SpeedButton12.Font.Color:=ClWhite;
Form1.SpeedButton13.Color:=ClBlack;
Form1.SpeedButton13.Font.Color:=ClWhite;
Form1.SpeedButton14.Color:=ClBlack;
Form1.SpeedButton14.Font.Color:=ClWhite;
Form1.SpeedButton15.Color:=ClBlack;
Form1.SpeedButton15.Font.Color:=ClWhite;
end;

procedure VioletOn;
begin
Form1.SpeedButton0.Color:=$00C08080;
Form1.SpeedButton0.Font.Color:=$00FF80FF;
Form1.SpeedButton1.Color:=$00C08080;
Form1.SpeedButton1.Font.Color:=$00FF80FF;
Form1.SpeedButton2.Color:=$00C08080;
Form1.SpeedButton2.Font.Color:=$00FF80FF;
Form1.SpeedButton3.Color:=$00C08080;
Form1.SpeedButton3.Font.Color:=$00FF80FF;
Form1.SpeedButton4.Color:=$00C08080;
Form1.SpeedButton4.Font.Color:=$00FF80FF;
Form1.SpeedButton5.Color:=$00C08080;
Form1.SpeedButton5.Font.Color:=$00FF80FF;
Form1.SpeedButton6.Color:=$00C08080;
Form1.SpeedButton6.Font.Color:=$00FF80FF;
Form1.SpeedButton7.Color:=$00C08080;
Form1.SpeedButton7.Font.Color:=$00FF80FF;
Form1.SpeedButton8.Color:=$00C08080;
Form1.SpeedButton8.Font.Color:=$00FF80FF;
Form1.SpeedButton9.Color:=$00C08080;
Form1.SpeedButton9.Font.Color:=$00FF80FF;
Form1.SpeedButton10.Color:=$00C08080;
Form1.SpeedButton10.Font.Color:=$00FF80FF;
Form1.SpeedButton11.Color:=$00C08080;
Form1.SpeedButton11.Font.Color:=$00FF80FF;
Form1.SpeedButton12.Color:=$00C08080;
Form1.SpeedButton12.Font.Color:=$00FF80FF;
Form1.SpeedButton13.Color:=$00C08080;
Form1.SpeedButton13.Font.Color:=$00FF80FF;
Form1.SpeedButton14.Color:=$00C08080;
Form1.SpeedButton14.Font.Color:=$00FF80FF;
Form1.SpeedButton15.Color:=$00C08080;
Form1.SpeedButton15.Font.Color:=$00FF80FF;
end;

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
Form1.ListBox3.Clear;
Form1.ListBox3.Items.Add(IntToStr(BtnLeft));
Form1.ListBox3.Items.Add(IntToStr(BtnTop));
Form1.ListBox3.Items.Add(IntToStr(Btn0Left));
Form1.ListBox3.Items.Add(IntToStr(Btn0Top));
Form1.Edit5.Text:='';
x:=btnLeft;
btnLeft:=btn0left;
btn0left:=x;
y:=btnTop;
btnTop:=btn0Top;
btn0Top:=y;
end;
procedure TForm1.MenuSaveGameClick(Sender: TObject);
begin
  SaveGameToFile;
end;

procedure TForm1.MenuNewGameClick(Sender: TObject);
begin
  Label7.Caption:='0';
  OptionDisable;
  randomplace;
  btnEnable;
  edit5.text:='';
  edit5.visible:=true;
  edit1.text:= '0';
  edit2.text:= '0';
  label4.caption:= timetostr(now);
end;

procedure TForm1.MenuRulesClick(Sender: TObject);
begin
 Form3.ShowModal;
end;

procedure TForm1.MenuRestTimeClick(Sender: TObject);
begin

end;




procedure TForm1.FormCreate(Sender: TObject);
var
buttonSelected : Integer;
begin
  ListBox3.Items.Add('0');
  edit1.text:= '0';
  edit2.text:= '0';
  Label7.Caption:='1';
  Edit5.Visible:= true;
  Edit5.Text:= 'Установлена базовая позиция';

  btnDisable;
  listbox2.Items.LoadFromFile('Option.ini');

  if ListBox2.Items[1]='1' then begin
  Edit1.Visible:= true;
  Label1.Visible:=true;
  end;

  if ListBox2.Items[3]='1' then begin
  Edit2.Visible:= true;
  Label2.Visible:=true;
  end;

  if ListBox2.Items[5]='1' then begin
  Edit3.Visible:= true;
  Label5.Visible:=true;
  Edit3.Text:=ListBox2.Items[6];
  end;

  if ListBox2.Items[8]='1' then begin
  Edit4.Visible:= true;
  Label6.Visible:=true;
  Edit4.Text:=ListBox2.Items[9];
  end;

  if ListBox2.Items[11]='1' then WhiteOn;

  if ListBox2.Items[11]='2' then BlackOn;

  if ListBox2.Items[11]='3' then VioletOn;

  if ListBox2.Items[13]='Yes' then
  begin



  buttonSelected := MessageDlg('Вы хотите загрузить сохраненную игру?',mtConfirmation, mbOKCancel, 0);
  if buttonSelected = mrOK     then
  begin
    OpenGameFromFile;
    BtnEnable;
    OptionDisable;
  end;
end;
end;
procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var x, y: integer;
begin
for z:= 1 to 15 do
begin
  with TSpeedButton(form1.components[z+25]) do
if (key=37) and (left=SpeedButton0.left+80) and (top=SpeedButton0.top)  and (GameLose=False) and(GameWin=False) then
   begin
ListBox3.Clear;
ListBox3.Items.Add(IntToStr(Left));
ListBox3.Items.Add(IntToStr(Top));
ListBox3.Items.Add(IntToStr(SpeedButton0.Left));
ListBox3.Items.Add(IntToStr(SpeedButton0.Top));
Edit5.Text:='';
x:=Left;
Left:=SpeedButton0.left;
SpeedButton0.left:=x;
   edit1.text:=inttostr(strtoint(edit1.Text)+1);
   break;
end
 else

if (key=38) and (left=SpeedButton0.left) and (top=SpeedButton0.top+80)  and (GameLose=False) and(GameWin=False) then
   begin
ListBox3.Clear;
ListBox3.Items.Add(IntToStr(Left));
ListBox3.Items.Add(IntToStr(Top));
ListBox3.Items.Add(IntToStr(SpeedButton0.Left));
ListBox3.Items.Add(IntToStr(SpeedButton0.Top));
Edit5.Text:='';
y:=Top;
Top:=SpeedButton0.Top;
SpeedButton0.Top:=y;
   edit1.text:=inttostr(strtoint(edit1.Text)+1);
   break;
end
  else
if (key=39) and (left=SpeedButton0.left-80) and (top=SpeedButton0.top)  and (GameLose=False) and(GameWin=False) then
   begin
   ListBox3.Clear;
ListBox3.Items.Add(IntToStr(Left));
ListBox3.Items.Add(IntToStr(Top));
ListBox3.Items.Add(IntToStr(SpeedButton0.Left));
ListBox3.Items.Add(IntToStr(SpeedButton0.Top));
Edit5.Text:='';
x:=Left;
Left:=SpeedButton0.left;
SpeedButton0.left:=x;
   edit1.text:=inttostr(strtoint(edit1.Text)+1);
   break;
end
 else
if (key=40) and (left=SpeedButton0.left) and (top=SpeedButton0.top-80)  and (GameLose=False) and(GameWin=False) then
   begin
   ListBox3.Clear;
ListBox3.Items.Add(IntToStr(Left));
ListBox3.Items.Add(IntToStr(Top));
ListBox3.Items.Add(IntToStr(SpeedButton0.Left));
ListBox3.Items.Add(IntToStr(SpeedButton0.Top));
Edit5.Text:='';
y:=Top;
Top:=SpeedButton0.Top;
SpeedButton0.Top:=y;
   edit1.text:=inttostr(strtoint(edit1.Text)+1);
   break;
end
 else
 if (key=27) and (ListBox3.Items[0]<>'0') and (Left=StrToInt(ListBox3.Items[2])) and (Top=StrToInt(ListBox3.Items[3])) then
    begin
    Left:=StrToInt(ListBox3.Items[0]);
    Top:=StrToInt(ListBox3.Items[1]);
    SpeedButton0.Left:=StrToInt(ListBox3.Items[2]);
    SpeedButton0.Top:=StrToInt(ListBox3.Items[3]);
    Edit5.Text:='Ход отменен';
    Edit1.Text:=IntToStr(StrToInt(Edit1.Text)-1);
    ListBox3.Clear;
    ListBox3.Items.Add('0');
    Break;
    end
 else
 if (ListBox3.Items[0]='0') then Edit5.Text:='Невозможно отменить ход';
  end;
 if key=113 then SaveGameToFile;
 if key=114 then OpenGameFromFile;
 if key=9 then Form1.WindowState:=wsMinimized ;
end;

procedure TForm1.Label7Click(Sender: TObject);
begin

end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
var
buttonSelected : Integer;
begin
buttonSelected := MessageDlg('Вы хотите сохранить текущую игру?',mtConfirmation, mbOKCancel, 0);
if buttonSelected = mrOK     then SaveGameToFile;
end;

procedure TForm1.Edit2Change(Sender: TObject);
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
  BlackOn;
end;

procedure TForm1.MenuEndGameClick(Sender: TObject);
begin
 OptionEnable;
 SpeedButton1.Left:=8; SpeedButton5.Left:=8; SpeedButton9.Left:=8; SpeedButton13.Left:=8;
 SpeedButton2.Left:=88; SpeedButton6.Left:=88; SpeedButton10.Left:=88; SpeedButton14.Left:=88;
 SpeedButton3.Left:=168; SpeedButton7.Left:=168; SpeedButton11.Left:=168; SpeedButton15.Left:=168;
 SpeedButton4.Left:=248; SpeedButton8.Left:=248; SpeedButton12.Left:=248; SpeedButton0.Left:=248;
 SpeedButton1.Top:=8; SpeedButton2.Top:=8; SpeedButton3.Top:=8; SpeedButton4.Top:=8;
 SpeedButton5.Top:=88; SpeedButton6.Top:=88; SpeedButton7.Top:=88; SpeedButton8.Top:=88;
 SpeedButton9.Top:=168; SpeedButton10.Top:=168; SpeedButton11.Top:=168; SpeedButton12.Top:=168;
 SpeedButton13.Top:=248; SpeedButton14.Top:=248; SpeedButton15.Top:=248; SpeedButton0.Top:=248;

 Label7.Caption:='1';
 Edit5.Visible:= true;
 Edit5.Text:= 'Установлена базовая позиция';

end;

procedure TForm1.MenuOffTimeClick(Sender: TObject);
begin
 Label6.Visible:= false;
 Edit4.Visible:= false;
 Edit4.Text:= '';
end;

procedure TForm1.MenuOffMoveClick(Sender: TObject);
begin
 Label5.Visible:= false;
 Edit3.Visible:= false;
 Edit3.Text:= '';
end;



procedure TForm1.MenuSaveOptionClick(Sender: TObject);
begin
  ListBox2.clear;

  ListBox2.Items.Add('[CountMove]');
  if Edit1.Visible=true then ListBox2.Items.Add('1') else ListBox2.Items.Add ('0');

  ListBox2.Items.Add('[CountTime]');
  if Edit2.Visible=true then ListBox2.Items.Add('1') else ListBox2.Items.Add ('0');

  ListBox2.Items.Add('[LimitMove]');
  if Edit3.Visible=true then ListBox2.Items.Add('1') else ListBox2.Items.Add ('0');
  if Edit3.Text='' then ListBox2.Items.Add('0') else ListBox2.Items.Add (Edit3.Text);

  ListBox2.Items.Add('[LimitTime]');
  if Edit4.Visible=true then ListBox2.Items.Add('1') else ListBox2.Items.Add ('0');
  if Edit4.Text='' then ListBox2.Items.Add('0') else ListBox2.Items.Add (Edit4.Text);

  ListBox2.Items.Add('[Interface]');
  if SpeedButton1.Color=ClSilver then ListBox2.Items.Add('1');
  if SpeedButton1.Color=ClBlack then ListBox2.Items.Add('2');
  if SpeedButton1.Color=$00C08080 then ListBox2.Items.Add('3');

  ListBox2.Items.Add('[Save]');
  ListBox1.Clear;
  ListBox1.Items.LoadFromFile('Save.dat');
  if ListBox1.Items[0]='' then ListBox2.Items.Add('No') else ListBox2.Items.Add('Yes');

  ListBox2.Items.SaveToFile('Option.ini');
end;

procedure TForm1.MenuWhiteClick(Sender: TObject);
begin
  WhiteOn;
end;

procedure TForm1.Shape11ChangeBounds(Sender: TObject);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape11MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape12ChangeBounds(Sender: TObject);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape12MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape14ChangeBounds(Sender: TObject);
begin

end;


procedure TForm1.Shape14MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape15ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape15MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape16ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape16MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape17ChangeBounds(Sender: TObject);
begin

end;

procedure TForm1.Shape17MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;



procedure TForm1.Shape18MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape7MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape8MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
end;

procedure TForm1.Shape9ChangeBounds(Sender: TObject);
begin

end;


procedure TForm1.Shape9MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit5.Text:='Поле свободно';
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
      edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
  //edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
  edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
  edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
     edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
    edit1.text:=inttostr(strtoint(edit1.Text)+1);
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
VioletOn;
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
  OpenGameFromFile;
end;

procedure TForm1.MenuExitGameClick(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.MenuTimerClick(Sender: TObject);
begin
Edit2.Text:= '0:00:00';
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
   if (GameWin=false) and (GameLose=false) then
     begin
     label3.Caption:=timetostr(now);
     t1:= strtotime(label3.caption);
     t2:= strtotime(label4.caption);
     edit2.Text:=timetostr(t1-t2);
     end;
if GameWin= true then
  begin
  edit5.text:= 'ВЫ ПОБЕДИЛИ!!!';
  btndisable;
  OptionEnable;
  end;
if GameLose= true then
  begin
  edit5.text:= 'ВЫ ПРОИГРАЛИ :(';
  btndisable;
  OptionEnable;
  end;
end;




end.

