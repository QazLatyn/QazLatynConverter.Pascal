unit QazLatynHelper;

interface

uses
  SysUtils, Classes;

function Cyrl2Latyn(AText: PChar): PChar; overload;

implementation

function Cyrl2Latyn(AText: PChar): PChar;  overload;
var
  iLen, i: Integer;
  strResult, strText, strTemp: string;
  iChar: Char;
  bLastIsUpper, bPrevIsC, bNextContinue: Boolean;
begin
  strText := AText;
  iLen := Length(strText);
  strResult := '';
  bNextContinue := False;
  for i := 1 to iLen do
  begin
    if bNextContinue then
    begin
      bNextContinue := False;
      Continue;
    end;
    iChar := strText[i];
    bLastIsUpper := False;
    if (i <> iLen) and (iChar = UpperCase(iChar)) then
      bLastIsUpper := True;
    bPrevIsC := False;
    if (i <> 0) and (LowerCase(iChar) = 'c') then
      bPrevIsC := True;
    if (i + 1 < iLen) then
    begin
      strTemp := Copy(strText,i,2);
      if strTemp = 'ЙЯ' then
      begin
        bNextContinue := True;
        strResult := strResult + 'Iа';
        Continue;
      end;
      if strTemp = 'Йя' then
      begin
        bNextContinue := True;
        strResult := strResult + 'Iа';
        Continue;
      end;
      if strTemp = 'йЯ' then
      begin
        bNextContinue := True;
        strResult := strResult + 'ıa';
        Continue;
      end;
      if strTemp = 'ХХ' then
      begin
        bNextContinue := True;
        strResult := strResult + 'ХХ';
        Continue;
      end;
    end;
    case iChar of
      'Я':  strResult := strResult + 'Iа';
      'я':  strResult := strResult + 'ıa';
      'Ю':  strResult := strResult + 'Iy';
      'ю':  strResult := strResult + 'ıy';
      'Ё':  strResult := strResult + 'Io';
      'ё':  strResult := strResult + 'ıo';
      'Щ':
            begin
              if bLastIsUpper then
                strResult := strResult + 'SHSH'
              else
                strResult := strResult + 'Shsh';
            end;
      'щ':  strResult := strResult + 'sh';
      'Э':  strResult := strResult + 'E';
      'э':  strResult := strResult + 'e';

      'А':  strResult := strResult + 'A';
      'а':  strResult := strResult + 'a';
      'Б':  strResult := strResult + 'B';
      'б':  strResult := strResult + 'b';
      'Ц':  strResult := strResult + 'S';
      'ц':  strResult := strResult + 's';
      'Д':  strResult := strResult + 'D';
      'д':  strResult := strResult + 'd';
      'Е':  strResult := strResult + 'E';
      'е':  strResult := strResult + 'e';
      'Ф':  strResult := strResult + 'F';
      'ф':  strResult := strResult + 'f';
      'Г':  strResult := strResult + 'G';
      'г':  strResult := strResult + 'g';
      'Х':
            begin
              if bPrevIsC then
                strResult := strResult + 'Q'
              else
                strResult := strResult + 'H';
            end;
      'х':
            begin
              if bPrevIsC then
                strResult := strResult + 'q'
              else
                strResult := strResult + 'h';
            end;

      'Һ':  strResult := strResult + 'H';
      'һ':  strResult := strResult + 'h';
      'І':  strResult := strResult + 'I';
      'і':  strResult := strResult + 'i';
      'И':  strResult := strResult + 'I';
      'и':  strResult := strResult + 'ı';
      'Й':  strResult := strResult + 'I';
      'й':  strResult := strResult + 'ı';
      'К':  strResult := strResult + 'K';
      'к':  strResult := strResult + 'k';
      'Л':  strResult := strResult + 'L';
      'л':  strResult := strResult + 'l';

      'М':  strResult := strResult + 'M';
      'м':  strResult := strResult + 'm';
      'Н':  strResult := strResult + 'N';
      'н':  strResult := strResult + 'n';
      'О':  strResult := strResult + 'O';
      'о':  strResult := strResult + 'o';
      'П':  strResult := strResult + 'P';
      'п':  strResult := strResult + 'p';
      'Қ':  strResult := strResult + 'Q';
      'қ':  strResult := strResult + 'q';
      'Р':  strResult := strResult + 'R';
      'р':  strResult := strResult + 'r';

      'С':  strResult := strResult + 'S';
      'с':  strResult := strResult + 's';
      'Т':  strResult := strResult + 'T';
      'т':  strResult := strResult + 't';
      'Ұ':  strResult := strResult + 'U';
      'ұ':  strResult := strResult + 'u';
      'В':  strResult := strResult + 'V';
      'в':  strResult := strResult + 'v';
      'У':  strResult := strResult + 'Ý';
      'у':  strResult := strResult + 'ý';
      'Ы':  strResult := strResult + 'Y';
      'ы':  strResult := strResult + 'y';

      'З':  strResult := strResult + 'Z';
      'з':  strResult := strResult + 'z';
      'Ə':  strResult := strResult + 'Á';
      'Ә':  strResult := strResult + 'Á';
      'ә':  strResult := strResult + 'á';
      'ə':  strResult := strResult + 'á';
      'Ө':  strResult := strResult + 'Ó';
      'ө':  strResult := strResult + 'ó';
      'Ɵ':  strResult := strResult + 'Ó';
      'ɵ':  strResult := strResult + 'ó';
      'Ү':  strResult := strResult + 'Ú';
      'ү':  strResult := strResult + 'ú';

      'Ч':
            begin
              if bLastIsUpper then
                strResult := strResult + 'CH'
              else
                strResult := strResult + 'Ch';
            end;
      'ч':  strResult := strResult + 'ch';
      'Ғ':  strResult := strResult + 'Ǵ';
      'ғ':  strResult := strResult + 'ǵ';

      'Ш':
            begin
              if bLastIsUpper then
                strResult := strResult + 'SH'
              else
                strResult := strResult + 'Sh';
            end;

      'ш':  strResult := strResult + 'sh';
      'Ж':  strResult := strResult + 'J';
      'ж':  strResult := strResult + 'j';
      'Ң':  strResult := strResult + 'Ń';
      'ң':  strResult := strResult + 'ń';
      'ь':  strResult := strResult + "" ;
      'Ь':  strResult := strResult + "" ;
      'ъ':  strResult := strResult + "" ;
      'Ъ':  strResult := strResult + "" ;
      '¬':  strResult := strResult + "" ;

    else
      strResult := strResult + iChar;
    end;
  end;
  Result := PChar(strResult);
end;

end.
