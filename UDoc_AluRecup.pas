unit UDoc_AluRecup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, StdCtrls, RxLookup, Buttons, Placemnt,
  ExtCtrls, Grids, DBGrids;

type
  TDoc_AluRecup = class(TForm)
    Fecha: TBitBtn;
    Imprime: TBitBtn;
    Turma: TRxDBLookupCombo;
    Label2: TLabel;
    FS1: TFormStorage;
    Bimestre: TRadioGroup;
    Label1: TLabel;
    Disc: TIBQuery;
    DiscNOME_RES: TIBStringField;
    Csemestral: TCheckBox;
    chktotais: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TurmaChange(Sender: TObject);
    procedure ImprimeClick(Sender: TObject);
    procedure CsemestralClick(Sender: TObject);
  private
    function NomeDisc(Seq:integer) : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Doc_AluRecup: TDoc_AluRecup;

implementation

uses UDM, UDoc_AluRecupQR, UDM2, UDoc_Alu_3_Rec;

{$R *.DFM}

function TDoc_AluRecup.NomeDisc(Seq:integer) : string;
begin
  Disc.ParamByName('seq').Value := Seq;
  Disc.ParamByName('ser').Value := DM.TurmasSERIE.Value;
  Disc.Open;
  result := DiscNOME_RES.Value;
  Disc.Close;
end;

procedure TDoc_AluRecup.FormShow(Sender: TObject);
begin
  DM.Turmas.Open;
  DM.Bimestres.SelectSQL.Strings[2] := 'where CODIGO = :codigo';
  DM.Disciplinas.SelectSQL.Strings[2] := 'where CODIGO = :codigo';
end;

procedure TDoc_AluRecup.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Turmas.Close;
  DM.AluRecup.Close;
  DM.Bimestres.Close;
  DM.Bimestres.SelectSQL.Strings[2] := 'where CODIGO > 0';
  DM.Disciplinas.SelectSQL.Strings[2] := 'where CODIGO > 0';
end;

procedure TDoc_AluRecup.TurmaChange(Sender: TObject);
begin
  if Turma.KeyValue = null then Imprime.Enabled := false
   else Imprime.Enabled := true;
   if dm.TurmasSERIE.Value = 3 Then
      CSemestral.Visible := True
       Else
        Csemestral.Visible := False;
end;

procedure TDoc_AluRecup.ImprimeClick(Sender: TObject);
begin
  If (dm.TurmasSERIE.Value = 3) and (Csemestral.Checked = True) Then
  Begin
  dm2.Alu_3_Rec.Close;
  dm2.Alu_3_Rec.ParamByName('serie').Value := 3;
  dm2.Alu_3_Rec.ParamByName('turma').Value := dm.TurmasTURMA.Value;
  dm2.Alu_3_Rec.Open;
  Application.CreateForm(TDoc_Alu_3_Rec, Doc_Alu_3_Rec);
      Doc_Alu_3_Rec.NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'? S?rie '+DM.TurmasTURMA.Value;
      Doc_Alu_3_Rec.D1.Caption := NomeDisc(1);
      Doc_Alu_3_Rec.D2.Caption := NomeDisc(2);
      Doc_Alu_3_Rec.D3.Caption := NomeDisc(3);
      Doc_Alu_3_Rec.D4.Caption := NomeDisc(4);
      Doc_Alu_3_Rec.D5.Caption := NomeDisc(5);
      Doc_Alu_3_Rec.D6.Caption := NomeDisc(6);
      Doc_Alu_3_Rec.D7.Caption := NomeDisc(7);
      Doc_Alu_3_Rec.D8.Caption := NomeDisc(8);
      Doc_Alu_3_Rec.D9.Caption := NomeDisc(9);
      Doc_Alu_3_Rec.D10.Caption := NomeDisc(10);
      Doc_Alu_3_Rec.D11.Caption := NomeDisc(11);
      Doc_Alu_3_Rec.D12.Caption := NomeDisc(12);
      Doc_Alu_3_Rec.D13.Caption := NomeDisc(13);
      Doc_Alu_3_Rec.D14.Caption := NomeDisc(14);
      Doc_Alu_3_Rec.D15.Caption := NomeDisc(15);
      Doc_Alu_3_Rec.Preview;
      Doc_Alu_3_Rec.Free;
  end
  Else Begin
      DM.AluRecup.Close;
      DM.AluRecup.ParamByName('serie').Value := DM.TurmasSERIE.Value;
      DM.AluRecup.ParamByName('turma').Value := DM.TurmasTURMA.Value;
      DM.AluRecup.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
      DM.AluRecup.ParamByName('media').Value := DM.ParametrosMEDIA.Value;
      DM.AluRecup.Open;
      DM.Bimestres.Close;
      DM.Bimestres.ParamByName('codigo').Value := Bimestre.ItemIndex+1;
      DM.Bimestres.Open;
      Application.CreateForm(TDoc_AluRecupQR, Doc_AluRecupQR);
      Doc_AluRecupQR.NomeTurma.Caption := IntToStr(DM.TurmasSERIE.Value)+'? S?rie '+DM.TurmasTURMA.Value;
      Doc_AluRecupQR.Bimestre.Caption := IntToStr(Bimestre.ItemIndex+1)+
         '? Bimestre - De: '+DateToStr(DM.BimestresINICIO.Value)+
         ' a '+DateToStr(DM.BimestresFIM.Value);
      Doc_AluRecupQR.D01.Caption := NomeDisc(1);
      Doc_AluRecupQR.D02.Caption := NomeDisc(2);
      Doc_AluRecupQR.D03.Caption := NomeDisc(3);
      Doc_AluRecupQR.D04.Caption := NomeDisc(4);
      Doc_AluRecupQR.D05.Caption := NomeDisc(5);
      Doc_AluRecupQR.D06.Caption := NomeDisc(6);
      Doc_AluRecupQR.D07.Caption := NomeDisc(7);
      Doc_AluRecupQR.D08.Caption := NomeDisc(8);
      Doc_AluRecupQR.D09.Caption := NomeDisc(9);
      Doc_AluRecupQR.D10.Caption := NomeDisc(10);
      Doc_AluRecupQR.D11.Caption := NomeDisc(11);
      Doc_AluRecupQR.D12.Caption := NomeDisc(12);
      Doc_AluRecupQR.D13.Caption := NomeDisc(13);
      Doc_AluRecupQR.D14.Caption := NomeDisc(14);
      Doc_AluRecupQR.D15.Caption := NomeDisc(15);
      dm.IqCont.Close;
      dm.IqCont.ParamByName('serie').Value := DM.TurmasSERIE.Value;
      dm.IqCont.ParamByName('turma').Value := dm.TurmasTURMA.Value;
      dm.IqCont.ParamByName('bimestre').Value := Bimestre.ItemIndex + 1;
      dm.IqCont.ParamByName('media').Value := DM.ParametrosMEDIA.Value;
      dm.IqCont.Open;
      if chktotais.Checked = True Then  Doc_AluRecupQR.QRBand2.Enabled := True;

      Doc_AluRecupQR.Preview;
      Doc_AluRecupQR.Free;
   end;

end;

procedure TDoc_AluRecup.CsemestralClick(Sender: TObject);
begin
  if Csemestral.Checked = True Then
     Bimestre.Enabled := False
     Else
     Bimestre.Enabled := True;
end;

end.
