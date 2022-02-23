unit unPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons;

type
  TformPrincipal = class(TForm)
    pnlFundo: TPanel;
    pnlMenuLateral: TPanel;
    btnSair: TSpeedButton;
    btnUsuarios: TSpeedButton;
    btnProjetos: TSpeedButton;
    btnChamados: TSpeedButton;
    btnMenu: TSpeedButton;
    btnFaq: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    procedure btnMenuClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;
  bExpandido : Boolean;

implementation

{$R *.dfm}

procedure TformPrincipal.btnMenuClick(Sender: TObject);
begin
  if bExpandido then
      pnlMenuLateral.Width := 70
  else
      pnlMenuLateral.Width := 185;
      bExpandido := not bExpandido;

end;

procedure TformPrincipal.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
