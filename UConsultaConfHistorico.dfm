object fConsultaConfHistorico: TfConsultaConfHistorico
  Left = 109
  Top = 135
  Width = 1296
  Height = 563
  Caption = 'Consulta configuração histórico.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1280
    Height = 473
    Cursor = crHandPoint
    Hint = 'Para excluir use o <<Duplo Click>>'
    Align = alTop
    DataSource = DM.DsConsultaConfHistorico
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'FORMACAO'
        Width = 244
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INTINERARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AREA'
        Width = 552
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISCIPLINA'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 632
    Top = 488
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar'
    TabOrder = 1
    Kind = bkClose
  end
end
