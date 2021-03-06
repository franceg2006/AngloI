unit UHistorico_new;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, Db, IBCustomDataSet, IBQuery, jpeg, RLFilters, RLXLSFilter,
  QuickRpt, Qrctrls, ECC_Extenso, UCad_Alunos;

type
  TDoc_historico_new = class(TForm)
    RLHistorico_New: TRLReport;
    DsTemp: TDataSource;
    QTemp: TIBQuery;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel2: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    Group_Areas: TRLGroup;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    N1: TRLLabel;
    N2: TRLLabel;
    N3: TRLLabel;
    CH1: TRLLabel;
    CH2: TRLLabel;
    CH3: TRLLabel;
    QTempNOME_AREA: TIBStringField;
    QTempNOME: TIBStringField;
    QTempALUNO: TIntegerField;
    QTempNOTA1: TIBBCDField;
    QTempCH1: TIntegerField;
    QTempNOTA2: TIBBCDField;
    QTempCH2: TIntegerField;
    QTempNOTA3: TIBBCDField;
    QTempCH3: TIntegerField;
    RLBand4: TRLBand;
    RLLabel3: TRLLabel;
    CH1S: TRLDBResult;
    CH2S: TRLDBResult;
    CH3S: TRLDBResult;
    RLBand5: TRLBand;
    RLLabel4: TRLLabel;
    MN1: TRLDBResult;
    Res1: TRLLabel;
    Res2: TRLLabel;
    Res3: TRLLabel;
    RLBand6: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    Obs1: TRLDBMemo;
    RLLabel13: TRLLabel;
    RLDraw6: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw1: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw44: TRLDraw;
    RLImage1: TRLImage;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel29: TRLLabel;
    RLDraw45: TRLDraw;
    T1: TRLLabel;
    T2: TRLLabel;
    T3: TRLLabel;
    RLDraw46: TRLDraw;
    DataD: TRLLabel;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLHistorico_NewBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doc_historico_new: TDoc_historico_new;

implementation

uses UDM, UDoc_Alunos;

{$R *.DFM}

procedure TDoc_historico_new.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if (QTempNOTA1.IsNull) then N1.Caption := '---'
    else N1.Caption := QTempNOTA1.DisplayText;
  if (QTempNOTA2.IsNull) then  N2.Caption := '---'
    else N2.Caption := QTempNOTA2.DisplayText;
  if (QTempNOTA3.IsNull) then N3.Caption := '---'
    else N3.Caption := QTempNOTA3.DisplayText;


  dm.Alunos.close;
  dm.Alunos.SelectSQL.Strings[2] := 'where Codigo = :Bcodigo';
  dm.Alunos.ParamByName('Bcodigo').Value := dm.HistNotasCODIGO.Value;
  dm.Alunos.Open;

 
  if ((dm.AlunosMOD_ESPORTIVA.Value = 'DME') and (dm.HistNotasDISCIPLINA.Value = 10)) then
       Begin
         if not QTempNOTA1.IsNull then  N1.Caption := 'DM';
         if not QTempNOTA2.IsNull then  N2.Caption := 'DM';
         if not QTempNOTA3.IsNull then  N3.Caption := 'DM';
       end;

     if QTempCH1.IsNull then CH1.Caption := '---'
        else CH1.Caption := QTempCH1.DisplayText;

    if QTempCH2.IsNull then  CH2.Caption := '---'
       else CH2.Caption := QTempCH2.DisplayText;

    if QTempCH3.IsNull then   CH3.Caption := '---'
       else CH3.Caption := QTempCH3.DisplayText;

End;

procedure TDoc_historico_new.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var TXT, Resultado, Serie :String;
  var mydate  :TDateTime;
begin
 mydate:= StrToDate(Cad_Alunos.DataHist.Text);
  if DM.AlunosSEXO.Value = 'M' then
    case Cad_Alunos.RadioGroup2.ItemIndex of
      0 : Resultado := 'foi APROVADO';
      1 : Resultado := 'foi REPROVADO';
      2 : Resultado := 'est? CURSANDO';
      3 : Resultado := '? DESISTENTE';
      5 : Resultado := 'est? MATRICULADO';
    end
   else
    case Cad_Alunos.RadioGroup2.ItemIndex of
      0 : Resultado := 'foi APROVADA';
      1 : Resultado := 'foi REPROVADA';
      2 : Resultado := 'est? CURSANDO';
      3 : Resultado := '? DESISTENTE';
      5 : Resultado := 'est? MATRICULADA';
    end;

    if dm.AlunosSerie.Value = 1 then  Serie := 'na 1? s?rie';
    if dm.AlunosSerie.Value = 2 then  Serie :=  'na 2? s?rie';
    if dm.AlunosSerie.Value = 3 then  Serie := 'na 3?  s?rie';


   TXT := RLMemo1.Caption;
   Txt := StringReplace(Txt, '{NOME}', DM.AlunosNOME.Value, [rfReplaceAll]);
   Txt := StringReplace(Txt, '{ID}', DM.AlunosID.Value, [rfReplaceAll]);
   Txt := StringReplace(Txt, '{PAI_NOME}', DM.AlunosPAI_NOME.Value, [rfReplaceAll]);
   Txt := StringReplace(Txt, '{MAE_NOME}', DM.AlunosMAE_NOME.Value, [rfReplaceAll]);
   Txt := StringReplace(Txt, '{NASC_CIDADE}',DM.AlunosNASC_CIDADE.Value+'-'+DM.AlunosNASC_UF.Value, [rfReplaceAll]);
   Txt := StringReplace(Txt, '{DATA_NASC}', DM.AlunosNASC_DATA.AsString, [rfReplaceAll]);
   Txt := StringReplace(Txt, '{RESULTADO}', Resultado, [rfReplaceAll]);
   Txt := StringReplace(Txt, '{SERIE_EXT}', Serie, [rfReplaceAll]);
   If dm.AlunosSEXO.Value = 'F' Then
   Begin
      Txt := StringReplace(Txt, '{FILIAC}', 'filha', [rfReplaceAll]);
      Txt := StringReplace(Txt, '{NASCIDA}', 'nascida', [rfReplaceAll]);
   end Else
   Begin
            Txt := StringReplace(Txt, '{FILIAC}', 'filho', [rfReplaceAll]);
            Txt := StringReplace(Txt, '{NASCIDA}', 'nascido', [rfReplaceAll]);
   End;
   RLMemo1.Lines.Text := Txt;
   DataD.Caption := FormatDateTime('"Dourados, " dd "de" mmmm "de" yyyy',mydate);
end;

procedure TDoc_historico_new.RLHistorico_NewBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
      if DM.AlunosSEXO.Value = 'M' then
      case Cad_Alunos.Resultado1.ItemIndex of
        0 : Res1.Caption := ''  ;
        1 : Res1.Caption := 'Aprovado';
        2 : Res1.Caption := 'Reprovado ';
        3 : Res1.Caption := 'Cursando';
        4 : Res1.Caption := 'Matriculado';
        5 : Res1.Caption := '-------------';
      end
      else
      case Cad_Alunos.Resultado1.ItemIndex of
        0 : Res1.Caption := '';
        1 : Res1.Caption := 'Aprovada';
        2 : Res1.Caption := 'Reprovada';
        3 : Res1.Caption := 'Cursando';
        4 : Res1.Caption := 'Matriculado';
        5 : Res1.Caption := '-------------';
      end;
      if DM.AlunosSEXO.Value = 'M' then
      case Cad_Alunos.Resultado2.ItemIndex of
        0 : Res2.Caption := '' ;
        1 : Res2.Caption := 'Aprovado';
        2 : Res2.Caption := 'Reprovado';
        3 : Res2.Caption := 'Cursando';
        4 : Res2.Caption := 'Matriculado';
        5 : Res2.Caption := '-------------';
      end   else
      case Cad_Alunos.Resultado2.ItemIndex of
        0 : Res2.Caption := '';
        1 : Res2.Caption := 'Aprovada';
        2 : Res2.Caption := 'Reprovada';
        3 : Res2.Caption := 'Cursando';
        4 : Res2.Caption := 'Matriculado';
        5 : Res2.Caption := '-------------';
      end;
           if DM.AlunosSEXO.Value = 'M' then
      case Cad_Alunos.Resultado3.ItemIndex of
        0 : Res3.Caption := ''  ;
        1 : Res3.Caption := 'Aprovado';
        2 : Res3.Caption := 'Reprovado';
        3 : Res3.Caption := 'Cursando';
        4 : Res3.Caption := 'Matriculado';
        5 : Res3.Caption := '-------------';
      end
      else
      case Cad_Alunos.Resultado3.ItemIndex of
        0 : Res3.Caption := '';
        1 : Res3.Caption := 'Aprovada';
        2 : Res3.Caption := 'Reprovada';
        3 : Res3.Caption := 'Cursando';
        4 : Res3.Caption := 'Matriculado';
        5 : Res3.Caption := '-------------';
      end;
end;

procedure TDoc_historico_new.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if CH1S.Value = 0 then
  Begin
    CH1S.Visible := False;
    T1.Visible := True;
  End;
  if CH2S.Value = 0 then
  Begin
   CH2S.Visible := False;
   T2.Visible := True;
  End;
  if CH3S.Value = 0 then
  Begin
   CH3S.Visible := False;
   T3.Visible := True;
  End;
end;

end.
