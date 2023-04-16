unit uWKDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.ExtCtrls;

type
  TDTMWK = class(TDataModule)
    FDCWK: TFDConnection;
    FDGUIxWaitCursorWK: TFDGUIxWaitCursor;
    FDPDriverFB: TFDPhysFBDriverLink;
    DTSClientes: TDataSource;
    UsuariosConnection: TFDConnection;
    TABClientes: TFDQuery;
    TABClientesCODIGO: TIntegerField;
    TABClientesNOME: TStringField;
    TABClientesCIDADE: TStringField;
    TABClientesUF: TStringField;
    TABProdutos: TFDQuery;
    DTSProdutos: TDataSource;
    TABProdutosCODIGO: TIntegerField;
    TABProdutosDESCRICAO: TStringField;
    TABProdutosPRECOVENDA: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTMWK: TDTMWK;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
