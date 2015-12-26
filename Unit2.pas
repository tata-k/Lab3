unit Unit2;

interface

uses
  Classes, SysUtils;

type
  tnew = class(TThread) //Описание потока
  private
  index:integer;
    procedure UpdateLabel;
  protected
    procedure Execute; override;
  end;

implementation

uses Unit1; //Подключаем к Unit1
procedure tnew.UpdateLabel;
begin
Form1.Label1.Caption:=IntToStr(Index); //Передаем значения таймера в поле Label
end;

procedure tnew.Execute; //Процедура таймера
begin
  index:=1;
  while index>0 do
  begin
  Synchronize(UpdateLabel);
  Inc(index);
  if index>100000 then
  index:=0;
  if terminated then exit;
  end;
end;

end.