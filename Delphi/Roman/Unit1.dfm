object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 89
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 408
    Top = 25
    Width = 35
    Height = 16
    Caption = 'Result'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object e1: TEdit
    Left = 299
    Top = 47
    Width = 87
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object i: TButton
    Left = 330
    Top = 16
    Width = 25
    Height = 25
    Caption = 'I'
    TabOrder = 1
    OnClick = TensClick
  end
  object v: TButton
    Left = 299
    Top = 16
    Width = 25
    Height = 25
    Caption = 'V'
    TabOrder = 2
    OnClick = HalfTensClick
  end
  object e10: TEdit
    Left = 195
    Top = 47
    Width = 87
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object x: TButton
    Left = 226
    Top = 16
    Width = 25
    Height = 25
    Caption = 'X'
    TabOrder = 4
    OnClick = TensClick
  end
  object l: TButton
    Left = 195
    Top = 16
    Width = 25
    Height = 25
    Caption = 'L'
    TabOrder = 5
    OnClick = HalfTensClick
  end
  object e1000: TEdit
    Left = 18
    Top = 47
    Width = 55
    Height = 21
    ReadOnly = True
    TabOrder = 6
  end
  object m: TButton
    Left = 18
    Top = 16
    Width = 25
    Height = 25
    Caption = 'M'
    TabOrder = 7
    OnClick = TensClick
  end
  object ix: TButton
    Left = 361
    Top = 16
    Width = 25
    Height = 25
    Caption = 'X'
    Enabled = False
    TabOrder = 8
    OnClick = PreviousTensClick
  end
  object xc: TButton
    Left = 257
    Top = 16
    Width = 25
    Height = 25
    Caption = 'C'
    Enabled = False
    TabOrder = 9
    OnClick = PreviousTensClick
  end
  object result: TEdit
    Left = 408
    Top = 47
    Width = 65
    Height = 21
    ReadOnly = True
    TabOrder = 10
    Text = '0'
  end
  object e100: TEdit
    Left = 90
    Top = 47
    Width = 87
    Height = 21
    ReadOnly = True
    TabOrder = 11
  end
  object cm: TButton
    Left = 152
    Top = 16
    Width = 25
    Height = 25
    Caption = 'M'
    Enabled = False
    TabOrder = 12
    OnClick = PreviousTensClick
  end
  object c: TButton
    Left = 121
    Top = 16
    Width = 25
    Height = 25
    Caption = 'C'
    TabOrder = 13
    OnClick = TensClick
  end
  object d: TButton
    Left = 90
    Top = 16
    Width = 25
    Height = 25
    Caption = 'D'
    TabOrder = 14
    OnClick = HalfTensClick
  end
end
