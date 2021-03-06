unit UBloquetoBrc;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TBloquetoBrc = class(TQuickRep)
    DetailBand1: TQRBand;
    QRShape57: TQRShape;
    QRShape42: TQRShape;
    QRLabel73: TQRLabel;
    QRShape34: TQRShape;
    QRShape2: TQRShape;
    QRShape21: TQRShape;
    QRShape20: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape12: TQRShape;
    QRShape5: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRShape22: TQRShape;
    QRShape10: TQRShape;
    QRShape23: TQRShape;
    QRShape6: TQRShape;
    QRLabel9: TQRLabel;
    QRShape8: TQRShape;
    QRShape19: TQRShape;
    QRShape18: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape35: TQRShape;
    QRShape33: TQRShape;
    QRShape32: TQRShape;
    QRShape31: TQRShape;
    QRShape9: TQRShape;
    QRShape47: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRShape56: TQRShape;
    QRShape55: TQRShape;
    QRShape54: TQRShape;
    QRShape53: TQRShape;
    QRShape49: TQRShape;
    QRLabel55: TQRLabel;
    QRShape50: TQRShape;
    QRShape48: TQRShape;
    QRShape58: TQRShape;
    QRLabel56: TQRLabel;
    QRShape51: TQRShape;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape43: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRShape64: TQRShape;
    QRLabel69: TQRLabel;
    QRShape65: TQRShape;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRShape52: TQRShape;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRShape66: TQRShape;
    QRLabel85: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape44: TQRShape;
    QRShape46: TQRShape;
    QRShape45: TQRShape;
    QRLabel91: TQRLabel;
    QRLabel97: TQRLabel;
    PeriodoX: TQRLabel;
    QRImage1: TQRImage;
    QRShape1: TQRShape;
    QRImage2: TQRImage;
    QRShape4: TQRShape;
    QRLabel1: TQRLabel;
    QRShape36: TQRShape;
    QRImage3: TQRImage;
    QRShape37: TQRShape;
    QRLabel2: TQRLabel;
    QRShape38: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRLabel38: TQRLabel;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRShape78: TQRShape;
    QRLabel92: TQRLabel;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRLabel93: TQRLabel;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRLabel121: TQRLabel;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRLabel122: TQRLabel;
    QRShape105: TQRShape;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRShape112: TQRShape;
    QRLabel133: TQRLabel;
    QRShape113: TQRShape;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRShape114: TQRShape;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRShape115: TQRShape;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRShape116: TQRShape;
    QRShape117: TQRShape;
    QRShape118: TQRShape;
    QRLabel145: TQRLabel;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRImage4: TQRImage;
    QRShape121: TQRShape;
    QRImage5: TQRImage;
    QRShape122: TQRShape;
    QRLabel148: TQRLabel;
    QRShape123: TQRShape;
    QRImage6: TQRImage;
    QRShape124: TQRShape;
    QRLabel149: TQRLabel;
    QRShape125: TQRShape;
    QRDBText2: TQRDBText;
    QRShape126: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
  private

  public

  end;

var
  BloquetoBrc: TBloquetoBrc;

implementation

uses UDM;

{$R *.DFM}

end.
