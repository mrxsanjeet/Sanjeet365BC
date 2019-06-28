table 50205 "Egg.Production Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Line No."; Integer)
        {

        }
        field(3; "Chicken No."; Code[20])
        {
            TableRelation = Chicken;
        }
        field(4; "Egg Date"; Date)
        {

        }
        field(5; "Egg. Type Code"; Code[20])
        {
            //TableRelation = ""
        }
        field(6; Quantity; Decimal)
        {
            DecimalPlaces = 0 : 0;
        }
        field(7; "Chicken Description"; Text[50])
        {
            CalcFormula = lookup (Chicken.Description where ("No." = field ("Chicken No.")));
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {

    }
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