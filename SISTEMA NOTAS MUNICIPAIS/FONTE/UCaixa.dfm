object FCaixa: TFCaixa
  Left = 91
  Top = 32
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Rech Center'
  ClientHeight = 373
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 0
    Top = 0
    Width = 619
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = 'Lan'#231'amentos no Caixa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -21
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl: TPageControl
    Left = 0
    Top = 82
    Width = 619
    Height = 261
    ActivePage = TabConsulta
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Images = DM.ImageListPageControl
    ParentFont = False
    TabOrder = 0
    TabStop = False
    object TabConsulta: TTabSheet
      object DBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 611
        Height = 231
        TabStop = False
        Align = alClient
        DataSource = DataSource
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clTeal
        TitleFont.Height = -11
        TitleFont.Name = 'Comic Sans MS'
        TitleFont.Style = [fsBold]
        OnKeyDown = txtpesquisaKeyDown
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CAINUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CAIDATA'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAIBAIXADO'
            Title.Caption = 'Baix.'
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAIENTRADA'
            Title.Alignment = taRightJustify
            Title.Caption = 'Entrada'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAISAIDA'
            Title.Alignment = taRightJustify
            Title.Caption = 'Sa'#237'da'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRUCAINOME'
            Title.Caption = 'Grupo'
            Width = 260
            Visible = True
          end>
      end
    end
    object TabCadastro: TTabSheet
      ImageIndex = 1
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 34
        Height = 16
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 24
        Top = 104
        Width = 47
        Height = 16
        Caption = 'Hist'#243'rico'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 24
        Top = 64
        Width = 25
        Height = 16
        Caption = 'Data'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 24
        Top = 184
        Width = 41
        Height = 16
        Caption = 'Entrada'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 416
        Top = 184
        Width = 29
        Height = 16
        Caption = 'Sa'#237'da'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 24
        Top = 144
        Width = 30
        Height = 16
        Caption = 'Grupo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btngrupo: TRxSpeedButton
        Left = 200
        Top = 141
        Width = 23
        Height = 22
        Hint = 'Abrir Cadastro'
        Flat = True
        Glyph.Data = {
          42060000424D360A000000000000360800002800000010000000100000000100
          1000030000000002000000000000000000000001000000000000007C0000E003
          00001F0000000000000000008000008000000080800080000000800080008080
          0000C0C0C000C0DCC000F0CAA600330000000000330033003300333300001616
          16001C1C1C002222220029292900555555004D4D4D004242420039393900807C
          FF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD0000FF33000000
          6600000099000000CC00003300000033330000336600003399000033CC000033
          FF00006600000066330000666600006699000066CC000066FF00009900000099
          330000996600009999000099CC000099FF0000CC000000CC330000CC660000CC
          990000CCCC0000CCFF0000FF660000FF990000FFCC0033FF0000FF0033003300
          6600330099003300CC003300FF00FF3300003333330033336600333399003333
          CC003333FF00336600003366330033666600336699003366CC003366FF003399
          00003399330033996600339999003399CC003399FF0033CC000033CC330033CC
          660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FFCC0033FF
          FF00660000006600330066006600660099006600CC006600FF00663300006633
          330066336600663399006633CC006633FF006666000066663300666666006666
          99006666CC00669900006699330066996600669999006699CC006699FF0066CC
          000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF990066FF
          CC00CC00FF00FF00CC009999000099339900990099009900CC00990000009933
          3300990066009933CC009900FF00996600009966330099336600996699009966
          CC009933FF009999330099996600999999009999CC009999FF0099CC000099CC
          330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC660099FF
          990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00CC009933
          0000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC6633009966
          6600CC669900CC66CC009966FF00CC990000CC993300CC996600CC999900CC99
          CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF
          0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF006600FF00
          9900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF660000FF66
          3300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF996600FF99
          9900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCC
          FF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FFFF00FF66
          6600FF66FF00FFFF66002100A5005F5F5F00777777008686860096969600CBCB
          CB00B2B2B200D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FB
          FF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
          0000FFFFFF001F7C205E205E205E205E205E205E205E205E205E205E205E205E
          1F7C1F7C1F7C205E846A0E77507F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7FA76E
          63661F7C1F7C205EE972A76A947F4D7F4D7F4D7F4D7F4D7F4D7F4D7F4D7FC76E
          D97B205E1F7C205E4E7F205EB57F6F7F6F7F6F7F6F7F6F7F6F7F6F7F6F7FC86E
          D97B205E1F7C205E6F7F6362737B927F907F907F907F907F907F907F907FE96E
          D97B42621F7C205E907FC86E0C73D57FB17FB17FB17FB17FB17FB17FB17FE96E
          D97BD97B205E205EB17F6E7B6462FF7FD97FD97FD97FD97FD97FD97FD97F5373
          FD7FDA7F205E205ED27FD27F4262205E205E205E205E205E205E205E205E205E
          205E205E205E205ED37FD37FD37FD37FD37FD37FD37FD37FD37FD37FD37F215E
          1F7C1F7C1F7C205EFF7FF47FF47FF47FF47FF47FF47FF47FF47FF47FF47F215E
          1F7C1F7C1F7C1F7C205EFF7FF47FF47FF47F205E205E205E205E205E205E1F7C
          1F7C1F7C1F7C1F7C1F7C205E205E205E205E1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C}
        ShowHint = False
        OnClick = btngrupoClick
      end
      object Label11: TLabel
        Left = 208
        Top = 24
        Width = 77
        Height = 16
        Caption = 'Baixado (S/N)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnCalculadoraEntrada: TRxSpeedButton
        Left = 200
        Top = 181
        Width = 25
        Height = 22
        Hint = 'Calculadora'
        Flat = True
        Glyph.Data = {
          42060000424D360A000000000000360800002800000010000000100000000100
          1000030000000002000000000000000000000001000000000000007C0000E003
          00001F0000000000000000008000008000000080800080000000800080008080
          0000C0C0C000C0DCC000F0CAA600330000000000330033003300333300001616
          16001C1C1C002222220029292900555555004D4D4D004242420039393900807C
          FF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD0000FF33000000
          6600000099000000CC00003300000033330000336600003399000033CC000033
          FF00006600000066330000666600006699000066CC000066FF00009900000099
          330000996600009999000099CC000099FF0000CC000000CC330000CC660000CC
          990000CCCC0000CCFF0000FF660000FF990000FFCC0033FF0000FF0033003300
          6600330099003300CC003300FF00FF3300003333330033336600333399003333
          CC003333FF00336600003366330033666600336699003366CC003366FF003399
          00003399330033996600339999003399CC003399FF0033CC000033CC330033CC
          660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FFCC0033FF
          FF00660000006600330066006600660099006600CC006600FF00663300006633
          330066336600663399006633CC006633FF006666000066663300666666006666
          99006666CC00669900006699330066996600669999006699CC006699FF0066CC
          000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF990066FF
          CC00CC00FF00FF00CC009999000099339900990099009900CC00990000009933
          3300990066009933CC009900FF00996600009966330099336600996699009966
          CC009933FF009999330099996600999999009999CC009999FF0099CC000099CC
          330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC660099FF
          990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00CC009933
          0000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC6633009966
          6600CC669900CC66CC009966FF00CC990000CC993300CC996600CC999900CC99
          CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF
          0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF006600FF00
          9900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF660000FF66
          3300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF996600FF99
          9900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCC
          FF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FFFF00FF66
          6600FF66FF00FFFF66002100A5005F5F5F00777777008686860096969600CBCB
          CB00B2B2B200D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FB
          FF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
          0000FFFFFF001F7C205E205E205E205E205E205E205E205E205E205E205E205E
          1F7C1F7C1F7C205E846A0E77507F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7FA76E
          63661F7C1F7C205EE972A76A947F4D7F4D7F4D7F4D7F4D7F4D7F4D7F4D7FC76E
          D97B205E1F7C205E4E7F205EB57F6F7F6F7F6F7F6F7F6F7F6F7F6F7F6F7FC86E
          D97B205E1F7C205E6F7F6362737B927F907F907F907F907F907F907F907FE96E
          D97B42621F7C205E907FC86E0C73D57FB17FB17FB17FB17FB17FB17FB17FE96E
          D97BD97B205E205EB17F6E7B6462FF7FD97FD97FD97FD97FD97FD97FD97F5373
          FD7FDA7F205E205ED27FD27F4262205E205E205E205E205E205E205E205E205E
          205E205E205E205ED37FD37FD37FD37FD37FD37FD37FD37FD37FD37FD37F215E
          1F7C1F7C1F7C205EFF7FF47FF47FF47FF47FF47FF47FF47FF47FF47FF47F215E
          1F7C1F7C1F7C1F7C205EFF7FF47FF47FF47F205E205E205E205E205E205E1F7C
          1F7C1F7C1F7C1F7C1F7C205E205E205E205E1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C}
        ShowHint = False
        OnClick = btnCalculadoraEntradaClick
      end
      object btnCalculadoraSaida: TRxSpeedButton
        Left = 579
        Top = 179
        Width = 23
        Height = 22
        Hint = 'Calculadora'
        Flat = True
        Glyph.Data = {
          42060000424D360A000000000000360800002800000010000000100000000100
          1000030000000002000000000000000000000001000000000000007C0000E003
          00001F0000000000000000008000008000000080800080000000800080008080
          0000C0C0C000C0DCC000F0CAA600330000000000330033003300333300001616
          16001C1C1C002222220029292900555555004D4D4D004242420039393900807C
          FF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD0000FF33000000
          6600000099000000CC00003300000033330000336600003399000033CC000033
          FF00006600000066330000666600006699000066CC000066FF00009900000099
          330000996600009999000099CC000099FF0000CC000000CC330000CC660000CC
          990000CCCC0000CCFF0000FF660000FF990000FFCC0033FF0000FF0033003300
          6600330099003300CC003300FF00FF3300003333330033336600333399003333
          CC003333FF00336600003366330033666600336699003366CC003366FF003399
          00003399330033996600339999003399CC003399FF0033CC000033CC330033CC
          660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FFCC0033FF
          FF00660000006600330066006600660099006600CC006600FF00663300006633
          330066336600663399006633CC006633FF006666000066663300666666006666
          99006666CC00669900006699330066996600669999006699CC006699FF0066CC
          000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF990066FF
          CC00CC00FF00FF00CC009999000099339900990099009900CC00990000009933
          3300990066009933CC009900FF00996600009966330099336600996699009966
          CC009933FF009999330099996600999999009999CC009999FF0099CC000099CC
          330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC660099FF
          990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00CC009933
          0000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC6633009966
          6600CC669900CC66CC009966FF00CC990000CC993300CC996600CC999900CC99
          CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF
          0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF006600FF00
          9900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF660000FF66
          3300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF996600FF99
          9900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCC
          FF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FFFF00FF66
          6600FF66FF00FFFF66002100A5005F5F5F00777777008686860096969600CBCB
          CB00B2B2B200D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FB
          FF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
          0000FFFFFF001F7C205E205E205E205E205E205E205E205E205E205E205E205E
          1F7C1F7C1F7C205E846A0E77507F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7FA76E
          63661F7C1F7C205EE972A76A947F4D7F4D7F4D7F4D7F4D7F4D7F4D7F4D7FC76E
          D97B205E1F7C205E4E7F205EB57F6F7F6F7F6F7F6F7F6F7F6F7F6F7F6F7FC86E
          D97B205E1F7C205E6F7F6362737B927F907F907F907F907F907F907F907FE96E
          D97B42621F7C205E907FC86E0C73D57FB17FB17FB17FB17FB17FB17FB17FE96E
          D97BD97B205E205EB17F6E7B6462FF7FD97FD97FD97FD97FD97FD97FD97F5373
          FD7FDA7F205E205ED27FD27F4262205E205E205E205E205E205E205E205E205E
          205E205E205E205ED37FD37FD37FD37FD37FD37FD37FD37FD37FD37FD37F215E
          1F7C1F7C1F7C205EFF7FF47FF47FF47FF47FF47FF47FF47FF47FF47FF47F215E
          1F7C1F7C1F7C1F7C205EFF7FF47FF47FF47F205E205E205E205E205E205E1F7C
          1F7C1F7C1F7C1F7C1F7C205E205E205E205E1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
          1F7C1F7C1F7C}
        ShowHint = False
        OnClick = btnCalculadoraSaidaClick
      end
      object txtnumero: TWSDBEdit
        Left = 80
        Top = 23
        Width = 120
        DataField = 'CAINUMERO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 0
        OnKeyDown = txtnumeroKeyDown
        FocoNovo = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit2: TWSDBEdit
        Left = 80
        Top = 103
        Width = 497
        DataField = 'CAIHISTORICO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 3
        OnKeyDown = txtnumeroKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object WSDBEdit3: TWSDBEdit
        Left = 80
        Top = 63
        Width = 120
        DataField = 'CAIDATA'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 1
        OnKeyDown = txtnumeroKeyDown
        FocoAlterar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtentrada: TWSDBEdit
        Left = 80
        Top = 183
        Width = 120
        DataField = 'CAIENTRADA'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 6
        OnKeyDown = txtnumeroKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtsaida: TWSDBEdit
        Left = 458
        Top = 183
        Width = 120
        DataField = 'CAISAIDA'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 7
        OnKeyDown = txtnumeroKeyDown
        EnterClicar = True
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtcodgrupocaixa: TWSDBEdit
        Left = 80
        Top = 143
        Width = 120
        DataField = 'CAIGRUPO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 4
        OnKeyDown = txtnumeroKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtgrupocaixa: TWSDBEdit
        Left = 224
        Top = 143
        Width = 353
        DataField = 'GrupoCaixa'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 5
        OnKeyDown = txtnumeroKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
      object txtbaixado: TWSDBEdit
        Left = 296
        Top = 23
        Width = 24
        TabStop = False
        DataField = 'CAIBAIXADO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        TabOrder = 2
        OnKeyDown = txtnumeroKeyDown
        ColorOnFocus = clBlack
        ColorOnNotFocus = clGray
      end
    end
  end
  object PanPesquisa: TPanel
    Left = 0
    Top = 30
    Width = 619
    Height = 52
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object Label4: TLabel
      Left = 260
      Top = 5
      Width = 30
      Height = 16
      Caption = 'Grupo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 10
      Top = 27
      Width = 55
      Height = 16
      Caption = 'Data Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 10
      Top = 6
      Width = 63
      Height = 16
      Caption = 'Data Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnfiltrogrupocaixa: TRxSpeedButton
      Left = 429
      Top = 3
      Width = 23
      Height = 22
      Hint = 'Abrir Cadastro'
      Flat = True
      Glyph.Data = {
        42060000424D360A000000000000360800002800000010000000100000000100
        1000030000000002000000000000000000000001000000000000007C0000E003
        00001F0000000000000000008000008000000080800080000000800080008080
        0000C0C0C000C0DCC000F0CAA600330000000000330033003300333300001616
        16001C1C1C002222220029292900555555004D4D4D004242420039393900807C
        FF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD0000FF33000000
        6600000099000000CC00003300000033330000336600003399000033CC000033
        FF00006600000066330000666600006699000066CC000066FF00009900000099
        330000996600009999000099CC000099FF0000CC000000CC330000CC660000CC
        990000CCCC0000CCFF0000FF660000FF990000FFCC0033FF0000FF0033003300
        6600330099003300CC003300FF00FF3300003333330033336600333399003333
        CC003333FF00336600003366330033666600336699003366CC003366FF003399
        00003399330033996600339999003399CC003399FF0033CC000033CC330033CC
        660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FFCC0033FF
        FF00660000006600330066006600660099006600CC006600FF00663300006633
        330066336600663399006633CC006633FF006666000066663300666666006666
        99006666CC00669900006699330066996600669999006699CC006699FF0066CC
        000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF990066FF
        CC00CC00FF00FF00CC009999000099339900990099009900CC00990000009933
        3300990066009933CC009900FF00996600009966330099336600996699009966
        CC009933FF009999330099996600999999009999CC009999FF0099CC000099CC
        330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC660099FF
        990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00CC009933
        0000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC6633009966
        6600CC669900CC66CC009966FF00CC990000CC993300CC996600CC999900CC99
        CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF
        0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF006600FF00
        9900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF660000FF66
        3300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF996600FF99
        9900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCC
        FF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FFFF00FF66
        6600FF66FF00FFFF66002100A5005F5F5F00777777008686860096969600CBCB
        CB00B2B2B200D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FB
        FF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
        0000FFFFFF001F7C205E205E205E205E205E205E205E205E205E205E205E205E
        1F7C1F7C1F7C205E846A0E77507F2C7F2C7F2C7F2C7F2C7F2C7F2C7F2C7FA76E
        63661F7C1F7C205EE972A76A947F4D7F4D7F4D7F4D7F4D7F4D7F4D7F4D7FC76E
        D97B205E1F7C205E4E7F205EB57F6F7F6F7F6F7F6F7F6F7F6F7F6F7F6F7FC86E
        D97B205E1F7C205E6F7F6362737B927F907F907F907F907F907F907F907FE96E
        D97B42621F7C205E907FC86E0C73D57FB17FB17FB17FB17FB17FB17FB17FE96E
        D97BD97B205E205EB17F6E7B6462FF7FD97FD97FD97FD97FD97FD97FD97F5373
        FD7FDA7F205E205ED27FD27F4262205E205E205E205E205E205E205E205E205E
        205E205E205E205ED37FD37FD37FD37FD37FD37FD37FD37FD37FD37FD37F215E
        1F7C1F7C1F7C205EFF7FF47FF47FF47FF47FF47FF47FF47FF47FF47FF47F215E
        1F7C1F7C1F7C1F7C205EFF7FF47FF47FF47F205E205E205E205E205E205E1F7C
        1F7C1F7C1F7C1F7C1F7C205E205E205E205E1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      ShowHint = False
      OnClick = btnfiltrogrupocaixaClick
    end
    object Label10: TLabel
      Left = 259
      Top = 25
      Width = 41
      Height = 16
      Caption = 'N'#250'mero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtpesquisa: TWSEdit
      Left = 306
      Top = 26
      Width = 121
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 0
      OnKeyDown = txtpesquisaKeyDown
      enterclicar = True
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtfiltrogrupocaixa: TWSEdit
      Left = 307
      Top = 6
      Width = 119
      height = 17
      BevelInner = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      TabOrder = 3
      OnExit = txtfiltrogrupocaixaExit
      OnKeyDown = txtpesquisaKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtfiltroinicial: TWSMaskEdit
      Left = 80
      Top = 4
      Width = 80
      height = 17
      BevelInner = bvNone
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      ParentShowHint = False
      TabOrder = 1
      Text = '  /  /    '
      OnKeyDown = txtpesquisaKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object txtfiltrofinal: TWSMaskEdit
      Left = 80
      Top = 27
      Width = 80
      height = 17
      BevelInner = bvNone
      EditMask = '99/99/9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      ParentShowHint = False
      TabOrder = 2
      Text = '  /  /    '
      OnKeyDown = txtpesquisaKeyDown
      ColorOnFocus = clBlack
      ColorOnNotFocus = clGray
    end
    object RGBaixados: TRadioGroup
      Left = 462
      Top = 1
      Width = 156
      Height = 50
      Align = alRight
      Caption = 'Baixados'
      Columns = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ItemIndex = 2
      Items.Strings = (
        'Sim'
        'N'#227'o'
        'Todos')
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnClick = RGBaixadosClick
    end
  end
  object ToolBarNavegacao: TToolBar
    Left = 0
    Top = 343
    Width = 619
    Height = 30
    Align = alBottom
    AutoSize = True
    ButtonHeight = 30
    ButtonWidth = 31
    EdgeBorders = []
    Flat = True
    Images = DM.ImageList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object BtnPrimeiro: TToolButton
      Left = 0
      Top = 0
      Hint = 'Primeiro Registro'
      Caption = 'BtnPrimeiro'
      ImageIndex = 10
      OnClick = BtnPrimeiroClick
    end
    object BtnAnterior: TToolButton
      Left = 31
      Top = 0
      Hint = 'Registro Anterior'
      Caption = 'BtnAnterior'
      ImageIndex = 0
      OnClick = BtnAnteriorClick
    end
    object BtnProximo: TToolButton
      Left = 62
      Top = 0
      Hint = 'Pr'#243'ximo Registro'
      Caption = 'BtnProximo'
      ImageIndex = 11
      OnClick = BtnProximoClick
    end
    object BtnUltimo: TToolButton
      Left = 93
      Top = 0
      Hint = #218'ltimo Registro'
      Caption = 'BtnUltimo'
      ImageIndex = 16
      OnClick = BtnUltimoClick
    end
    object ToolButton10: TToolButton
      Left = 124
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object BtnIncluir: TToolButton
      Left = 132
      Top = 0
      Hint = 'Incluir Novo Registro - Insert'
      Caption = 'BtnIncluir'
      ImageIndex = 9
      OnClick = BtnIncluirClick
    end
    object btnnovopadrao: TToolButton
      Left = 163
      Top = 0
      Hint = 'Incluir novo registro pegando esse como padr'#227'o - F11'
      ImageIndex = 17
      OnClick = btnnovopadraoClick
    end
    object BtnAlterar: TToolButton
      Left = 194
      Top = 0
      Hint = 'Alterar Registro - F10'
      Caption = 'BtnAlterar'
      ImageIndex = 3
      OnClick = BtnAlterarClick
    end
    object BtnExcluir: TToolButton
      Left = 225
      Top = 0
      Hint = 'Excluir Registro - Ctrl + Delete'
      Caption = 'BtnExcluir'
      ImageIndex = 5
      OnClick = BtnExcluirClick
    end
    object ToolButton14: TToolButton
      Left = 256
      Top = 0
      Width = 8
      Caption = 'ToolButton14'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object BtnSalvar: TToolButton
      Left = 264
      Top = 0
      Hint = 'Salvar - F12'
      Caption = 'Salvar'
      ImageIndex = 14
      OnClick = BtnSalvarClick
    end
    object BtnCancelar: TToolButton
      Left = 295
      Top = 0
      Hint = 'Cancelar - Esc'
      Caption = 'Cancelar'
      ImageIndex = 13
      OnClick = BtnCancelarClick
    end
    object ToolButton4: TToolButton
      Left = 326
      Top = 0
      Width = 11
      Caption = 'ToolButton4'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object BtnImprimir: TToolButton
      Left = 337
      Top = 0
      Hint = 'Imprimir - F8'
      Caption = 'BtnImprimir'
      ImageIndex = 8
      OnClick = BtnImprimirClick
    end
    object btnhtml: TToolButton
      Left = 368
      Top = 0
      Hint = 'Exportar dados para HTML'
      Caption = 'btnhtml'
      ImageIndex = 7
      OnClick = btnhtmlClick
    end
    object btnexcel: TToolButton
      Left = 399
      Top = 0
      Hint = 'Exportar para o Excel'
      Caption = 'btnexcel'
      ImageIndex = 4
      OnClick = btnexcelClick
    end
    object ToolButton19: TToolButton
      Left = 430
      Top = 0
      Width = 8
      Caption = 'ToolButton19'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object btndesconectar: TToolButton
      Left = 438
      Top = 0
      Hint = 'Desconectar - F7'
      Caption = 'btndesconectar'
      ImageIndex = 2
      OnClick = btndesconectarClick
    end
    object BtnFiltro: TToolButton
      Left = 469
      Top = 0
      Hint = 'Atualizar - F9'
      Caption = 'BtnFiltro'
      ImageIndex = 1
      OnClick = BtnFiltroClick
    end
    object ToolButton22: TToolButton
      Left = 500
      Top = 0
      Width = 8
      Caption = 'ToolButton22'
      ImageIndex = 12
      Style = tbsSeparator
    end
    object btnexportar: TToolButton
      Left = 508
      Top = 0
      Hint = 'Exportar Dados - F4'
      ImageIndex = 18
      OnClick = btnexportarClick
    end
    object btnimportar: TToolButton
      Left = 539
      Top = 0
      Hint = 'Importar Dados - F2'
      ImageIndex = 19
      OnClick = btnimportarClick
    end
    object ToolButton1: TToolButton
      Left = 570
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 13
      Style = tbsSeparator
    end
    object btnsair: TToolButton
      Left = 578
      Top = 0
      Hint = 'Sair - Esc'
      ImageIndex = 12
      OnClick = btnsairClick
    end
  end
  object DataSource: TDataSource
    DataSet = DM.CDSCaixa
    Left = 8
    Top = 8
  end
  object WSInformacao: TWSInformacao
    Tabela = 'TCAIXA'
    Programa = 24
    Left = 40
    Top = 8
  end
  object QSaldoAnt: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(CAIENTRADA - CAISAIDA)'
      'FROM TCAIXA'
      'WHERE CAIDATA < :DATA')
    SQLConnection = DM.SQLConnection
    Left = 72
    Top = 8
    object QSaldoAntSUM: TFMTBCDField
      FieldName = 'SUM'
      Precision = 15
      Size = 2
    end
  end
  object DSPSaldoAnt: TDataSetProvider
    DataSet = QSaldoAnt
    Left = 104
    Top = 8
  end
  object CDSSaldoAnt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSaldoAnt'
    Left = 136
    Top = 8
    object CDSSaldoAntSUM: TFMTBCDField
      FieldName = 'SUM'
      Precision = 15
      Size = 2
    end
  end
  object RxCalculator: TRxCalculator
    Left = 372
    Top = 284
  end
end