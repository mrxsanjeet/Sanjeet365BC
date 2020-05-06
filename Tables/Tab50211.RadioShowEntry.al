table 50211 "Radio Show Entry"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(10; "Radio show No."; code[20]) { }
        field(20; Type; Option) { OptionMembers = ,Resource,show,item; }
        field(30; "No."; code[20]) { }
        field(40; "Data Format"; Option) { OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisment; }
        field(50; Description; Text[50]) { }
        field(60; Date; Date) { }
        field(70; Time; Time) { }
        field(80; Duration; Duration) { }
        field(90; "Free Amount"; Decimal) { }
        field(100; "ACSAP ID"; Integer) { }
        field(110; "Publisher code"; code[10]) { }

    }
    keys
    {
        key(PK; "Entry No.") { Clustered = true; }

        Key(Reporting; "Radio show No.", Date) { SumIndexFields = "Free Amount"; }

        Key(Reporting2; Type, "No.", Date) { SumIndexFields = "Free Amount"; }
    }

}