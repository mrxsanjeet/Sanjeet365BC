table 50214 "Date Formula"
{
    fields
    {
        field(1; "Primary Key"; Code[10]) { }
        field(10; "Reference for Date Calculation"; Date)
        {

            trigger OnValidate()
            begin
                CalculateNewDate;
            end;
        }
        field(20; "Date Formula to Test"; DateFormula)
        {
            trigger OnValidate()
            begin
                CalculateNewDate;
            end;

        }

        field(30; "Date Result"; Date) { }
    }
    local Procedure CalculateNewDate()
    begin
        "Date Result" := CalcDate("Date Formula to Test", "Reference for Date Calculation");
    end;
}