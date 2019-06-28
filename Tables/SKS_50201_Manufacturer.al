table 50201 "Car Manufacturer"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'No.';
        }
        field(2; "Description"; Text[50])
        {
            CaptionML = ENU = 'Description';
        }
        field(3; "Country/Region Code"; Code[10])
        {
            CaptionML = ENU = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(4; "No. of Cars"; Integer)
        {
            CaptionML = ENU = 'No. of Cars';
            FieldClass = FlowField;
            CalcFormula = count (cars where ("Manufacturer No." = field ("No.")));
            Editable = false;
        }
        field(5; "Phone No."; Text[30])
        {
            CaptionML = ENU = 'Phone No.';
            ExtendedDatatype = PhoneNo;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(SK1; "Country/Region Code")
        {

        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}