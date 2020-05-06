table 50216 "Barcode"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; guid)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Value; text[250])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Type; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,c39,c128a,c128b,c128c,i2of5,qr;
            CaptionML = ENU = 'Type of Barcode';
            OptionCaptionML = ENU = ',c39,c128a,c128b,c128c,i2of5,qr';
        }
        field(4; Width; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Height; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Include Text"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Border; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Reverse Colors"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "ECC Level"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = ,Low,"Medium-Low (M)","Medium-High (Q)","High (H)";
            CaptionML = ENU = 'ECC Level';
            OptionCaptionML = ENU = 'Low (L),Medium-Low (M),Medium-High (Q),High (H)';
        }
        field(10; Size; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "1","2","3","4","5","6","7","8","9","10";
            InitValue = 5;
            //OptionCaptionML = ENU = ,'21x21','42x42','63x63','84x84','105x105','126x126','147x147','168x168','189x189','210x210';

        }


    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
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