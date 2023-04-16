unit uWKTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, uWKDataModule,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls;


type
  TFRMTeste = class(TForm)
    DBGClientes: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    EDTCodigoCliente: TEdit;
    EDTNomeCliente: TEdit;
    BTNLocalizaCliente: TButton;
    EDTCodigoProduto: TEdit;
    EDTDescricaoProduto: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    EDTQuantidade: TEdit;
    Label4: TLabel;
    EDTValorUnitario: TEdit;
    Button2: TButton;
    DBGProdutos: TDBGrid;
    procedure BTNLocalizaClienteClick(Sender: TObject);
    procedure DBGClientesCellClick(Column: TColumn);
    procedure DBGClientesDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGProdutosCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMTeste: TFRMTeste;

implementation

{$R *.dfm}

procedure TFRMTeste.BTNLocalizaClienteClick(Sender: TObject);
begin
  DBGClientes.Height  := 270;
  DBGClientes.Visible := true;
  DBGClientes.SetFocus;
end;

procedure TFRMTeste.Button1Click(Sender: TObject);
begin
  DBGProdutos.Height  := 270;
  DBGProdutos.Visible := true;
  DBGProdutos.SetFocus;
end;

procedure TFRMTeste.DBGClientesCellClick(Column: TColumn);
begin
  EDTCodigoCliente.text := DTMWK.TABClientesCODIGO.AsString;
  EDTNomeCliente.text   := DTMWK.TABClientesNOME.AsString;
end;

procedure TFRMTeste.DBGClientesDblClick(Sender: TObject);
begin
  DBGClientes.Visible := false;
end;

procedure TFRMTeste.DBGProdutosCellClick(Column: TColumn);
begin
  EDTCodigoProduto.text      := DTMWK.TABProdutosCODIGO.AsString;
  EDTDescricaoProduto.text   := DTMWK.TABProdutosDESCRICAO.AsString;
  EDTValorUnitario.text      := DTMWK.TABProdutosPRECOVENDA.AsString;
end;

end.
