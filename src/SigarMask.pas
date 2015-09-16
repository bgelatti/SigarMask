unit SigarMask;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit;

type
  TSigarMask = class(TcxMaskEdit)
  private
    FSigarField: string;
    procedure SetSigarField(const Value: string);
  protected
    { Protected declarations }
  public

  published
    property SigarField: string read FSigarField write SetSigarField;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Sigar', [TSigarMask]);
end;

{ TSigarMask }

procedure TSigarMask.SetSigarField(const Value: string);
begin
  FSigarField := Value;
end;

end.
