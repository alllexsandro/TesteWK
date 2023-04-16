object FRMTeste: TFRMTeste
  Left = 0
  Top = 0
  Caption = 'Teste WK'
  ClientHeight = 471
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 34
    Top = 27
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object Label2: TLabel
    Left = 29
    Top = 123
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object Label3: TLabel
    Left = 433
    Top = 123
    Width = 56
    Height = 13
    Caption = 'Quantidade'
  end
  object Label4: TLabel
    Left = 571
    Top = 123
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object DBNavigator1: TDBNavigator
    Left = 128
    Top = 408
    Width = 240
    Height = 25
    DataSource = DTMWK.DTSClientes
    TabOrder = 5
  end
  object EDTCodigoCliente: TEdit
    Left = 73
    Top = 31
    Width = 49
    Height = 21
    TabOrder = 1
  end
  object EDTNomeCliente: TEdit
    Left = 128
    Top = 29
    Width = 249
    Height = 21
    TabStop = False
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 6
  end
  object BTNLocalizaCliente: TButton
    Left = 383
    Top = 27
    Width = 27
    Height = 25
    Hint = 'Selecionar Cliente'
    Caption = '...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = BTNLocalizaClienteClick
  end
  object EDTCodigoProduto: TEdit
    Left = 73
    Top = 125
    Width = 49
    Height = 21
    TabOrder = 2
  end
  object EDTDescricaoProduto: TEdit
    Left = 128
    Top = 125
    Width = 249
    Height = 21
    TabStop = False
    Color = clBtnFace
    ReadOnly = True
    TabOrder = 8
  end
  object Button1: TButton
    Left = 383
    Top = 123
    Width = 27
    Height = 25
    Hint = 'Localiza Produto'
    Caption = '...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = Button1Click
  end
  object EDTQuantidade: TEdit
    Left = 495
    Top = 125
    Width = 49
    Height = 21
    TabOrder = 3
  end
  object EDTValorUnitario: TEdit
    Left = 601
    Top = 125
    Width = 89
    Height = 21
    TabOrder = 4
  end
  object Button2: TButton
    Left = 703
    Top = 123
    Width = 27
    Height = 25
    Hint = 'Selecionar Cliente'
    Caption = '+'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = BTNLocalizaClienteClick
  end
  object DBGProdutos: TDBGrid
    Left = 128
    Top = 162
    Width = 562
    Height = 55
    DataSource = DTMWK.DTSProdutos
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    OnCellClick = DBGProdutosCellClick
  end
  object DBGClientes: TDBGrid
    Left = 128
    Top = 58
    Width = 562
    Height = 47
    DataSource = DTMWK.DTSClientes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    OnCellClick = DBGClientesCellClick
    OnDblClick = DBGClientesDblClick
    OnExit = DBGClientesDblClick
  end
end
