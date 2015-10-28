object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'EC2014 :: REST Framework :: Consumindo a API do Facebook'
  ClientHeight = 555
  ClientWidth = 907
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 536
    Width = 907
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 901
    Height = 142
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Panel1'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = -2
    DesignSize = (
      901
      142)
    object Label1: TLabel
      Left = 820
      Top = 40
      Width = 69
      Height = 25
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 8
      Top = 10
      Width = 75
      Height = 55
      Caption = 'Processar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object eAccessToken: TEdit
      Left = 104
      Top = 13
      Width = 785
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Text = 
        'CAACEdEose0cBAPXCmxiar882uupZBsRWIgq0ZBWE1CMMHGJZCEnXpnDejuiAZCc' +
        '0ZCRJR8rcrGaTfYhKxryIwdpZBRpcXNJKHttoPxgvTW1lwIac5Txbtoq91AQdw7f' +
        'QuknIVPmMLBORWngtUamFydko9CQOgLqHf6c0U35kqP0LBlssobAZAm22e057TQ2' +
        'iWT31k1kosQmzYOOdZB6M4OWd'
      TextHint = 'Coloque aqui o ACCESS TOKEN'
    end
    object Button2: TButton
      Left = 8
      Top = 71
      Width = 75
      Height = 58
      Caption = 'Obrigado!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 151
    Width = 901
    Height = 195
    Align = alClient
    Color = clInfoBk
    DataSource = DataSource1
    DrawingStyle = gdsGradient
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'birthday'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'picture.data.url'
        Visible = True
      end>
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 352
    Width = 901
    Height = 181
    Align = alBottom
    BevelInner = bvLowered
    Caption = 'Panel2'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 3
    ExplicitLeft = -2
    DesignSize = (
      901
      181)
    object Image1: TImage
      Left = 24
      Top = 16
      Width = 201
      Height = 153
    end
    object DBEdit1: TDBEdit
      Left = 256
      Top = 16
      Width = 625
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'id'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 256
      Top = 43
      Width = 625
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'name'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 256
      Top = 70
      Width = 257
      Height = 21
      DataField = 'birthday'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 256
      Top = 97
      Width = 625
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'picture.data.url'
      DataSource = DataSource1
      TabOrder = 3
      OnChange = DBEdit4Change
    end
  end
  object DataSource1: TDataSource
    DataSet = dmNucleo.ClientDataSet1
    Left = 56
    Top = 200
  end
end
