unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  ExtCtrls, Unit2, Unit3;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
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
    Timer1: TTimer;
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
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

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

end;

procedure TForm1.MenuVioletClick(Sender: TObject);
begin

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

