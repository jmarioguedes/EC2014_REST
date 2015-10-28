object fView: TfView
  Left = 0
  Top = 0
  Caption = 'Cota'#231#227'o do D'#243'lar'
  ClientHeight = 587
  ClientWidth = 1013
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1013
    Height = 587
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cota'#231#227'o'
      ExplicitLeft = 8
      ExplicitTop = 28
      DesignSize = (
        1005
        559)
      object Label1: TLabel
        Left = 21
        Top = 240
        Width = 976
        Height = 77
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Label1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -64
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button1: TButton
        Left = 21
        Top = 16
        Width = 97
        Height = 57
        Caption = 'Cota'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 804
        Top = 535
        Width = 193
        Height = 21
        Alignment = taCenter
        Anchors = [akTop, akRight]
        Color = clSilver
        ReadOnly = True
        TabOrder = 1
        Text = 'http://dolarhoje.com/'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'HTML'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      object Memo1: TMemo
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 999
        Height = 553
        Align = alClient
        Color = 16384
        Font.Charset = ANSI_CHARSET
        Font.Color = clLime
        Font.Height = -21
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'Memo1')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
      end
    end
  end
end
