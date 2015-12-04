program RomanToArabic;

var
   romanNumber: string;
   index: integer;
   digitsType1: array[0..3] of char = ('I', 'X', 'C', 'M');
   digitsType2: array[0..2] of char = ('V', 'L', 'D');

function getSequenceBasis(rank: integer): integer;
begin 
    result:=0;
    for index:=index to index+3 do
    begin
        if ((index<=Length(romanNumber)) and (romanNumber[index]=digitsType1[rank]))
        then result:=result+1
        else break;
    end;
end;

function getGroupValue(rank: integer): integer;
begin
    result:=0;
    if (Copy(romanNumber,index,2)=digitsType1[rank]+digitsType2[rank]) then
    begin 
        result:=4;
        index:=index+2;
    end
    else if (Copy(romanNumber,index,2)=digitsType1[rank]+digitsType1[rank+1]) then
    begin
        result:=9;
        index:=index+2;
    end  
    else if (romanNumber[index]=digitsType2[rank]) then
    begin
        index:=index+1;
        result:=(5+getSequenceBasis(rank));
    end
    else result:=getSequenceBasis(rank);
    result:=result*(10 pow rank);
end;

begin
    var groupRank, arabicValue: integer;
    readln(romanNumber);
    arabicValue:=0;
    index:=1;
    for groupRank:=3 downto 0 do arabicValue:=arabicValue+getGroupValue(groupRank); 
    if index>length(romanNumber) then writeln(arabicValue)
    else writeln("ERROR");
    readln;
end.
