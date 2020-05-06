table 50206 "RadioShow"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            //adding a comment
        }
        field(10; "Radio show Type"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Radio show Type";
        }
        field(20; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(40; "Run Time"; Duration)
        {

        }
        field(50; "Host Code"; Code[20])
        {

        }
        field(60; "Host Name"; Text[50])
        {

        }
        field(100; "Average Listners"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            //CalcFormula = average ("Listernership Entry"."Listener Count" where ("Radio Show No." = field ("No."), Date = field ("Date Filter")));

        }
        field(110; "Audiance Share"; Decimal)
        {
            //Editable = false;
            //FieldClass = FlowField;
            //CalcFormula = average ("Listernership Entry"."Audience Share" where ("Radio Show No." = field ("No."), Date = field ("Date Filter")));
        }
        field(120; "Advertising Revenue"; Decimal)
        {
            //Editable = false;
            //FieldClass = FlowField;
            //CalcFormula = Sum ("Radio Show Entry"."Free Amount" where ("Radio show No." = field ("No."), "Data Format" = filter (Advertisment)));
        }
        field(130; "Royality Cost"; Decimal)
        {

        }
        field(1000; Frequency; Option) { OptionMembers = Hourly,Daily,Weekly,Monthly; }
        field(1010; "PSA Planned Quantity"; Integer) { }

        field(1020; "Ads Planned Quantity"; Integer) { }


        field(1030; "News Required"; Boolean) { InitValue = true; }
        field(1040; "News Duration"; Duration) { }
        field(1050; "Sports Required"; Boolean) { InitValue = true; }
        field(1060; "Sports Duration"; Duration) { }
        field(1070; "Weather Required"; Boolean) { InitValue = true; }
        field(1080; "Weather Duration"; Duration) { }
        field(1090; "Date Filter"; Date) { FieldClass = FlowFilter; }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Name; Name) { }
        key(HostName; "Host Name") { }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, "Host Name") { }

        fieldgroup(Brick; "No.", Name, "Audiance Share") { }
    }

}