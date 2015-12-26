unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit2;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    StaticText1: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
  co:tnew;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  prov:boolean; //логическая переменная

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject); //Старт таймера
begin
  if prov=false then
  co:=tnew.Create(true)
  else
  prov:=false;
  co.Resume;
  co.Priority:=tpLower;
end;

procedure TForm1.Button2Click(Sender: TObject); //Пауза таймера
begin
  co.Suspend;
  prov:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);  //Стоп таймера
begin
  co.Terminate;
  co.Free;
end;

end.
