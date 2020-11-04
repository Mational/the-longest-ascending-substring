object Form1: TForm1
  Left = 55
  Top = 62
  Hint = 'Podaj ci'#261'g liczb (oddzielaj je spacj'#261')'
  Caption = 'Najd'#322'u'#380'szy rosn'#261'cy podci'#261'g'
  ClientHeight = 262
  ClientWidth = 504
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = Wyroznij_ciag
  PixelsPerInch = 96
  TextHeight = 13
  object zamknij: TButton
    Left = 375
    Top = 224
    Width = 121
    Height = 30
    Caption = 'ZAMKNIJ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = CLOSE_ME
  end
  object ciag: TEdit
    Left = 113
    Top = 32
    Width = 352
    Height = 33
    Hint = 'Podaj ci'#261'g liczb (oddzielaj je spacj'#261')'
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object StaticText1: TStaticText
    Left = 16
    Top = 32
    Width = 59
    Height = 29
    Caption = 'Ci'#261'g: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object znajdz: TButton
    Left = 16
    Top = 87
    Width = 169
    Height = 41
    Caption = 'Znajd'#378' podci'#261'g'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = znajdzClick
  end
  object podciag: TEdit
    Left = 113
    Top = 148
    Width = 352
    Height = 33
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TextHint = ' Liczby oddzielaj spacj'#261
  end
  object StaticText2: TStaticText
    Left = 16
    Top = 152
    Width = 91
    Height = 29
    Caption = 'Podci'#261'g: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
end
