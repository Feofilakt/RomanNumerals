unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Generics.Collections;

type
  TForm1 = class(TForm)
    e1: TEdit;
    i: TButton;
    v: TButton;
    e10: TEdit;
    x: TButton;
    l: TButton;
    e1000: TEdit;
    m: TButton;
    ix: TButton;
    xc: TButton;
    result: TEdit;
    Label1: TLabel;
    e100: TEdit;
    cm: TButton;
    c: TButton;
    d: TButton;
    procedure FormCreate(Sender: TObject);
    procedure HalfTensClick(Sender: TObject);
    procedure TensClick(Sender: TObject);
    procedure PreviousTensClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TRomeGroup = record
    HalfTens: TButton;
    Tens: TButton;
    PreviousTens: TButton;
    Edit: TEdit;
    Rank: integer;
  end;

var
  Form1: TForm1;
  groups: array[1..4] of TRomeGroup;

implementation

{$R *.dfm}

procedure TForm1.HalfTensClick(Sender: TObject);
var
  group: TRomeGroup;
begin
  for group in groups do
  begin
    with group do
    begin
      if Sender = HalfTens then
      begin
        Edit.Text:=Edit.Text+HalfTens.Caption;
        if Tens.Tag=0 then result.Text:=IntToStr((StrToInt(result.Text)+5*Rank))
        else
        begin
          result.Text:=IntToStr((StrToInt(result.Text)+3*Rank));
          Tens.Visible:=false;
        end;
        HalfTens.Visible:=false;
        PreviousTens.Visible:=false;
        break;
      end;
    end;
  end;
end;

procedure TForm1.TensClick(Sender: TObject);
var
  group: TRomeGroup;
begin
  for group in groups do
  begin
    with group do
    begin
      if Sender = Tens then
      begin
        Tens.Tag:=Tens.Tag+1;
        Edit.Text:=Edit.Text+Tens.Caption;
        result.Text:=IntToStr((StrToInt(result.Text)+Rank));
        if Tens.Tag=3 then Tens.Visible:=false
        else if (Tens.Tag=2) and (Rank<>1000) then
        begin
          HalfTens.Visible:=false;
          PreviousTens.Visible:=false;
        end
        else if (Tens.Tag=1) and (Rank<>1000) then PreviousTens.Enabled:=true;
        break;
      end;
    end;
  end;
end;

procedure TForm1.PreviousTensClick(Sender: TObject);
var
  group: TRomeGroup;
begin
  for group in groups do
  begin
    with group do
    begin
      if Sender = PreviousTens then
      begin
        Edit.Text:=Edit.Text+PreviousTens.Caption;
        result.Text:=IntToStr((StrToInt(result.Text)+8*Rank));
        PreviousTens.Visible:=false;
        Tens.Visible:=false;
        HalfTens.Visible:=false;
        break;
      end;
    end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  with groups[1] do
  begin
    Tens:=m;
    Edit:=e1000;
    Rank:=1000;
  end;

  with groups[2] do
  begin
    HalfTens:=d;
    Tens:=c;
    PreviousTens:=cm;
    Edit:=e100;
    Rank:=100;
  end;

  with groups[3] do
  begin
    HalfTens:=l;
    Tens:=x;
    PreviousTens:=xc;
    Edit:=e10;
    Rank:=10;
  end;

  with groups[4] do
  begin
    HalfTens:=v;
    Tens:=i;
    PreviousTens:=ix;
    Edit:=e1;
    Rank:=1;
  end;
end;

end.
