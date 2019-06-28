codeunit 50100 MyExampleCodeunit
{
    trigger OnRun()
    begin

    end;

    var
        MyLongString: Text[50];
        Customer: Record Customer;

    procedure SingleifSatatement()
    var
        a: Integer;
        b: Integer;
        c: Integer;
    begin
        a := 10;
        b := 5;
        if a > b then
            c := a - b
        else
            c := a + b;
    end;

    procedure SingleifCompoundSatatement()
    var
        a: Integer;
        b: Integer;
        c: Integer;
    begin
        a := 10;
        b := 5;
        if a > b then begin
            c := a - b;
            Message('%1', c);
        end;
    end;

    procedure ForToStatement()
    var
        intCount: Integer;
        Total: Integer;
    begin
        for intCount := 1 to 5 do
            Total := Total + 3;
    end;

    procedure ForToDownStatement()
    var
        intCount: Integer;
        TotalSales: Integer;
        NumberSales: Integer;
        Sales: array[5] of Integer;
    begin
        for intCount := 5 downto 1 do begin
            TotalSales := TotalSales + Sales[intCount];
            NumberSales := NumberSales + 1;
        end;
    end;

    procedure ForEachInStatement()
    var
        StringList: List of [Text[20]];
        StringItem: text[20];
        a: text[20];
    begin
        foreach StringItem in StringList do
            message(StringItem);
    end;

    procedure WhileStatement()
    var
        index: Integer;
        TotalSales: Integer;
        Sales: array[5] of Integer;
    begin
        while TotalSales < 8 do begin
            index := index + 1;
            TotalSales := TotalSales + Sales[index];
        end;
    end;

    procedure RepeatUntilStatement()
    var
        index: Integer;
        TotalSales: Integer;
        Sales: array[5] of Integer;
    begin
        repeat
            index := index + 1;
            TotalSales := TotalSales + Sales[index];
        until TotalSales >= 8;
    end;

    procedure BreakStatement()
    var
        intCount: Integer;
        Total: Integer;
    begin
        for intCount := 1 to 5 do Begin
            if Total > 8 then
                break;
            Total := Total + 3;
        End;
    end;

    procedure GetLongString(): Text[50]
    begin
        exit('Helloworldofmaycharacterscharacters');
    end;

    procedure StrPosFunction()
    begin
        MyLongString := GetLongString();
        Message('%1', StrPos(MyLongString, 'l'));//Result in 3
    end;

    procedure CopyStrFunction()
    var
        NewString: Text[10];
    begin
        MyLongString := GetLongString();
        NewString := CopyStr(MyLongString, 5, 10);
        Message('%1', NewString);
    end;

    procedure SelectStrFunction()
    var
        newString: Text;
    begin
        MyLongString := 'This,is a comma,Seperated,string';
        newString := SelectStr(2, MyLongString);//Result 'is a comma'
        Message('%1', newString);
    end;

    procedure InsStringFunction()
    var
        newString: Text;
    begin
        MyLongString := 'Press ENTER to Continue';
        newString := InsStr(MyLongString, 'or ESC', 13);
        Message('%1', newString);
    end;

    procedure StrLenFunction()
    var
        NewString: Text[10];
    begin
        MyLongString := GetLongString();
        Message('STRLN : %1', StrLen(MyLongString));
        Message('MAXSTRLEN : %1', MaxStrLen(MyLongString));

        NewString := CopyStr(MyLongString, 5, MaxStrLen(MyLongString));
        Message('%1', NewString);
    end;

    procedure InCSTRFunction()
    var
        Text000: Text;
        Text001: Text;
    begin
        Text000 := 'Account No 99 does not Balance';
        Text001 := 'Account no 2342 shows a total of $-452.';
        Message(IncStr(Text000));
        Message(IncStr(Text001));
    end;

    procedure FindFunction()
    begin
        Customer.find('-');
        Customer.find('+');
        Customer.FindFirst();
        Customer.FindLast();

        Customer.find('-');
        //Select * From Customer.

        Customer.find('+');
        //Select * from Customer Order by No. Desc

        Customer.FindFirst();
        //Select Top 1 * from Customer 

        Customer.FindLast();
        //Select Top 1 * form Customer Order by no Desc
    end;
}