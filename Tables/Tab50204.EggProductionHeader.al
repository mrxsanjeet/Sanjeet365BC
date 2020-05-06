table 50204 "Egg. Production Header"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            trigger OnValidate();
            begin
                if "No." <> xRec."No." then begin
                    ChickenSetup.Get;
                    //Check manual edit in nos is allowed or not
                    NoSeriesManagement.TestManual(ChickenSetup."Egg. Production Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; "Document Date"; Date)
        {

        }
        field(3; "No. Series"; code[20])
        {

        }
        field(10; "Posting Date"; Date)
        {
            CaptionML = ENU = 'Posting Date';
        }
        field(13; "No. of Printed"; Integer)
        {
            CaptionML = ENU = 'No. of Printed';
            Editable = false;
        }
        field(51; "Shortcut Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,2,1';
            CaptionML = ENU = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code where ("Global Dimension No." = const (1));
            trigger OnValidate();
            begin
                //ValidateShortcutDimCode(1,"Shortcut Dimension 1 Code");
            end;
        }
        field(52; "Shortcut Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,2,1';
            CaptionML = ENU = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code where ("Global Dimension No." = const (1));
            trigger OnValidate();
            begin
                //ValidateShortcutDimCode(1,"Shortcut Dimension 2 Code");
            end;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            CaptionML = ENU = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
            trigger OnLookup()
            begin
                //ShowDocDim;
            end;
        }

    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {

    }
    var
        ChickenSetup: Record "Chicken Setup";
        NoSeriesManagement: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "No." = '' then begin
            ChickenSetup.get;
            ChickenSetup.TestField("Chicken Nos.");
            //Generate new no series
            NoSeriesManagement.InitSeries(ChickenSetup."Egg. Production Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
        InitRecord;
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

    procedure InitRecord()
    begin
        if "Posting Date" = 0D then
            "Posting Date" := WorkDate;
        "Document Date" := WorkDate;
        ChickenSetup.GET;
    end;

    local procedure EggProdLinesExist(): Boolean
    begin

    end;
}