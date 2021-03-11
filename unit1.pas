unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Checking();
    procedure TheEnd();
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  step, score_x, score_y, x: integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormShow(Sender: TObject);
begin
  Randomize;
  score_x := 0;
  score_y := 0;
  step := random(2);
  if (step = 0) then
    label1.Caption := 'X''s turn'
  else
    label1.Caption := 'O''s turn';
end;

procedure TForm1.TheEnd();
begin
  panel1.Enabled := False;
  panel2.Enabled := False;
  panel3.Enabled := False;
  panel4.Enabled := False;
  panel5.Enabled := False;
  panel6.Enabled := False;
  panel7.Enabled := False;
  panel8.Enabled := False;
  panel9.Enabled := False;
end;

procedure TForm1.Checking();
begin

  if (step = 0) then
    label1.Caption := 'X''s turn'
  else
    label1.Caption := 'O''s turn';

  if (panel1.Caption <> '') and (panel2.Caption <> '') and (panel3.Caption <> '') and
    (panel4.Caption <> '') and (panel5.Caption <> '') and (panel6.Caption <> '') and
    (panel7.Caption <> '') and (panel8.Caption <> '') and (panel9.Caption <> '') then
  begin
    label1.Caption := 'Tie!';
    TheEnd();
  end;

  if (panel1.Caption <> '') and (panel1.Caption = panel2.Caption) and
    (panel2.Caption = panel3.Caption) then
  begin
    if (panel1.Caption = 'X') then
    begin
      score_x := score_x + 1;
      Label1.Caption := 'X''s win!';
      TheEnd();
    end
    else
    begin
      score_y := score_y + 1;
      Label1.Caption := 'O''s win!';
      TheEnd();
    end;
    panel1.color := TColor($a5e57e);
    panel2.color := TColor($a5e57e);
    panel3.color := TColor($a5e57e);
    Label2.Caption := 'X - ' + IntToStr(score_x) + #13 + 'O - ' + IntToStr(score_y);
  end;

  if (panel4.Caption <> '') and (panel4.Caption = panel5.Caption) and
    (panel5.Caption = panel6.Caption) then
  begin
    if (panel4.Caption = 'X') then
    begin
      score_x := score_x + 1;
      Label1.Caption := 'X''s win!';
      TheEnd();
    end
    else
    begin
      score_y := score_y + 1;
      Label1.Caption := 'O''s win!';
      TheEnd();
    end;
    panel4.color := TColor($a5e57e);
    panel5.color := TColor($a5e57e);
    panel6.color := TColor($a5e57e);
    Label2.Caption := 'X - ' + IntToStr(score_x) + #13 + 'O - ' + IntToStr(score_y);
  end;

  if (panel7.Caption <> '') and (panel7.Caption = panel8.Caption) and
    (panel8.Caption = panel9.Caption) then
  begin
    if (panel7.Caption = 'X') then
    begin
      score_x := score_x + 1;
      Label1.Caption := 'X''s win!';
      TheEnd();
    end
    else
    begin
      score_y := score_y + 1;
      Label1.Caption := 'O''s win!';
      TheEnd();
    end;
    panel7.color := TColor($a5e57e);
    panel8.color := TColor($a5e57e);
    panel9.color := TColor($a5e57e);
    Label2.Caption := 'X - ' + IntToStr(score_x) + #13 + 'O - ' + IntToStr(score_y);
  end;




  if (panel1.Caption <> '') and (panel1.Caption = panel4.Caption) and
    (panel4.Caption = panel7.Caption) then
  begin
    if (panel1.Caption = 'X') then
    begin
      score_x := score_x + 1;
      Label1.Caption := 'X''s win!';
      TheEnd();
    end
    else
    begin
      score_y := score_y + 1;
      Label1.Caption := 'O''s win!';
      TheEnd();
    end;
    panel1.color := TColor($a5e57e);
    panel4.color := TColor($a5e57e);
    panel7.color := TColor($a5e57e);
    Label2.Caption := 'X - ' + IntToStr(score_x) + #13 + 'O - ' + IntToStr(score_y);
  end;


  if (panel2.Caption <> '') and (panel2.Caption = panel5.Caption) and
    (panel5.Caption = panel8.Caption) then
  begin
    if (panel2.Caption = 'X') then
    begin
      score_x := score_x + 1;
      Label1.Caption := 'X''s win!';
      TheEnd();
    end
    else
    begin
      score_y := score_y + 1;
      Label1.Caption := 'O''s win!';
      TheEnd();
    end;
    panel2.color := TColor($a5e57e);
    panel5.color := TColor($a5e57e);
    panel8.color := TColor($a5e57e);
    Label2.Caption := 'X - ' + IntToStr(score_x) + #13 + 'O - ' + IntToStr(score_y);
  end;

  if (panel3.Caption <> '') and (panel3.Caption = panel6.Caption) and
    (panel6.Caption = panel9.Caption) then
  begin
    if (panel3.Caption = 'X') then
    begin
      score_x := score_x + 1;
      Label1.Caption := 'X''s win!';
      TheEnd();
    end
    else
    begin
      score_y := score_y + 1;
      Label1.Caption := 'O''s win!';
      TheEnd();
    end;
    panel3.color := TColor($a5e57e);
    panel6.color := TColor($a5e57e);
    panel9.color := TColor($a5e57e);
    Label2.Caption := 'X - ' + IntToStr(score_x) + #13 + 'O - ' + IntToStr(score_y);
  end;

  if (panel1.Caption <> '') and (panel1.Caption = panel5.Caption) and
    (panel5.Caption = panel9.Caption) then
  begin
    if (panel1.Caption = 'X') then
    begin
      score_x := score_x + 1;
      Label1.Caption := 'X''s win!';
      TheEnd();
    end
    else
    begin
      score_y := score_y + 1;
      Label1.Caption := 'O''s win!';
      TheEnd();
    end;
    panel1.color := TColor($a5e57e);
    panel5.color := TColor($a5e57e);
    panel9.color := TColor($a5e57e);
    Label2.Caption := 'X - ' + IntToStr(score_x) + #13 + 'O - ' + IntToStr(score_y);
  end;

  if (panel3.Caption <> '') and (panel3.Caption = panel5.Caption) and
    (panel5.Caption = panel7.Caption) then
  begin
    if (panel3.Caption = 'X') then
    begin
      score_x := score_x + 1;
      Label1.Caption := 'X''s win!';
      TheEnd();
    end
    else
    begin

      score_y := score_y + 1;
      Label1.Caption := 'O''s win!';
      TheEnd();
    end;
    panel3.color := TColor($a5e57e);
    panel5.color := TColor($a5e57e);
    panel7.color := TColor($a5e57e);
    Label2.Caption := 'X - ' + IntToStr(score_x) + #13 + 'O - ' + IntToStr(score_y);
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Randomize;
  step := random(2);
  panel1.Caption := ('');
  panel2.Caption := ('');
  panel3.Caption := ('');
  panel4.Caption := ('');
  panel5.Caption := ('');
  panel6.Caption := ('');
  panel7.Caption := ('');
  panel8.Caption := ('');
  panel9.Caption := ('');
  panel1.Enabled := True;
  panel2.Enabled := True;
  panel3.Enabled := True;
  panel4.Enabled := True;
  panel5.Enabled := True;
  panel6.Enabled := True;
  panel7.Enabled := True;
  panel8.Enabled := True;
  panel9.Enabled := True;
  panel1.color := cl3DLight;
  panel2.color := cl3DLight;
  panel3.color := cl3DLight;
  panel4.color := cl3DLight;
  panel5.color := cl3DLight;
  panel6.color := cl3DLight;
  panel7.color := cl3DLight;
  panel8.color := cl3DLight;
  panel9.color := cl3DLight;
  if (step = 0) then
    label1.Caption := 'X''s turn'
  else
    label1.Caption := 'O''s turn';

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
  if Panel1.Caption = '' then
  begin
    if (step = 0) then
    begin
      Panel1.Caption := 'X';
      panel1.font.color := clred;
      step := 1;
    end
    else
    begin
      panel1.Caption := 'O';
      panel1.font.color := clblue;
      step := 0;
    end;
  end;
  Checking();
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
  if Panel2.Caption = '' then
  begin
    if (step = 0) then
    begin
      panel2.font.color := clred;
      Panel2.Caption := 'X';
      step := 1;
    end
    else
    begin
      panel2.font.color := clblue;
      panel2.Caption := 'O';
      step := 0;
    end;
  end;
  Checking();
end;

procedure TForm1.Panel3Click(Sender: TObject);
begin
  if Panel3.Caption = '' then
  begin
    if (step = 0) then
    begin
      panel3.font.color := clred;
      Panel3.Caption := 'X';
      step := 1;
    end
    else
    begin
      panel3.font.color := clblue;
      panel3.Caption := 'O';
      step := 0;
    end;
  end;
  Checking();
end;

procedure TForm1.Panel4Click(Sender: TObject);
begin
  if Panel4.Caption = '' then
  begin
    if (step = 0) then
    begin
      panel4.font.color := clred;
      Panel4.Caption := 'X';
      step := 1;
    end
    else
    begin
      panel4.font.color := clblue;
      panel4.Caption := 'O';
      step := 0;
    end;
  end;
  Checking();
end;

procedure TForm1.Panel5Click(Sender: TObject);
begin
  if Panel5.Caption = '' then
  begin
    if (step = 0) then
    begin
      panel5.font.color := clred;
      Panel5.Caption := 'X';
      step := 1;
    end
    else
    begin
      panel5.font.color := clblue;
      panel5.Caption := 'O';
      step := 0;
    end;
  end;
  Checking();
end;

procedure TForm1.Panel6Click(Sender: TObject);
begin
  if Panel6.Caption = '' then
  begin
    if (step = 0) then
    begin
      panel6.font.color := clred;
      Panel6.Caption := 'X';
      step := 1;
    end
    else
    begin
      panel6.font.color := clblue;
      panel6.Caption := 'O';
      step := 0;
    end;
  end;
  Checking();
end;

procedure TForm1.Panel7Click(Sender: TObject);
begin
  if Panel7.Caption = '' then
  begin
    if (step = 0) then
    begin
      panel7.font.color := clred;
      Panel7.Caption := 'X';
      step := 1;
    end
    else
    begin
      panel7.font.color := clblue;
      panel7.Caption := 'O';
      step := 0;
    end;
  end;
  Checking();
end;

procedure TForm1.Panel8Click(Sender: TObject);
begin
  if Panel8.Caption = '' then
  begin
    if (step = 0) then
    begin
      panel8.font.color := clred;
      Panel8.Caption := 'X';
      step := 1;
    end
    else
    begin
      panel8.font.color := clblue;
      panel8.Caption := 'O';
      step := 0;
    end;
  end;
  Checking();
end;

procedure TForm1.Panel9Click(Sender: TObject);
begin
  if Panel9.Caption = '' then
  begin
    if (step = 0) then
    begin
      panel9.font.color := clred;
      Panel9.Caption := 'X';
      step := 1;
    end
    else
    begin
      panel9.font.color := clblue;
      panel9.Caption := 'O';
      step := 0;
    end;
  end;
  Checking();
end;

end.
