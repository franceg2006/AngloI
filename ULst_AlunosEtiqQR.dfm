?
 TLST_ALUNOSETIQQR 0?  TPF0TLst_AlunosEtiqQRLst_AlunosEtiqQRLeft Top WidthHeightcFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSetAlunosFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeA4SmallPage.Values                ??
@       ?@      @?
@       ?@3333333?@           PrinterSettings.CopiesPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.OutputBinAutoPrintIfEmpty	ReportTitleANGLO - Etiquetas de Alunos
SnapToGrid	UnitsMMZoomd TQRBandDetailBand1LeftTop&Width? HeightdFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values??????L?@???????@ BandTyperbDetail 	TQRDBText	QRDBText1Left!TopWidth? Height&Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesUUUUUU?@      ??@      ??@??????2?@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretch	ColorclWhiteDataSetAlunos	DataFieldNOMEFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText2Left? Top4Width)HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@      ??@UUUUUU??@UUUUUU??@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetAlunos	DataFieldCODIGOFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText3LeftTop6Width!HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@      ??@      ??@      ??@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSetAlunos	DataFieldSerieXFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRLabelQRLabel1Left? Top4Width%HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values????????@     @?@UUUUUU??@????????@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionC?digo:ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height?	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize   TIBQueryAlunosDatabaseDM.DB_ANGLOTransactionDM.IBTr_ANGLOOnCalcFieldsAlunosCalcFieldsBufferChunks?CachedUpdatesSQL.Stringsselect CODIGO,NOME,SERIE,TURMAfrom ALUNOSwhere MATERIAL = 1order by SERIE,TURMA,NOME LeftpTop TIntegerFieldAlunosCODIGO	FieldNameCODIGOOriginALUNOS.CODIGORequired	  TIBStringField
AlunosNOME	FieldNameNOMEOriginALUNOS.NOMERequired	Size<  TSmallintFieldAlunosSERIE	FieldNameSERIEOriginALUNOS.SERIE  TIBStringFieldAlunosTURMA	FieldNameTURMAOriginALUNOS.TURMA	FixedChar	Size  TStringFieldAlunosSerieX	FieldKindfkCalculated	FieldNameSerieX
Calculated	   TDataSourcedsAlunosDataSetAlunosLeft@Top   