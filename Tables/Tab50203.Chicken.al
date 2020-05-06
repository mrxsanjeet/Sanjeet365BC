table 50203 "Chicken"
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "Chicken List";
    LookupPageId = "Chicken List";
    fields
    {
        field(1; "No."; Code[20])
        {
            trigger OnValidate();
            begin
                if "No." <> xRec."No." then begin
                    ChickenSetup.Get;
                    //Check manual edit in nos is allowed or not
                    NoSeriesManagement.TestManual(ChickenSetup."Chicken Nos.");
                    "No. Series" := '';
                end;
            end;

        }
        field(2; Description; Text[50])
        {

        }
        field(3; "Chicket Type code"; Code[20])
        {

        }
        field(4; "No. Series"; Code[20])
        {

        }
        field(5; Blocked; Boolean)
        {

        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
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
            NoSeriesManagement.InitSeries(ChickenSetup."Chicken Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
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

    procedure AssistEdit(OldChicken: Record Chicken): Boolean
    var
        Chicken: Record Chicken;
    begin
        with Chicken do begin
            Chicken := Rec;
            ChickenSetup.Get;
            ChickenSetup.TestField("Chicken Nos.");
            if NoSeriesManagement.SelectSeries(ChickenSetup."Chicken Nos.", OldChicken."No. Series", "No. Series") then begin
                NoSeriesManagement.SetSeries("No.");
                Rec := Chicken;
                exit(true);
            end;

        end;
    end;

    procedure IsBlocked(): Boolean
    begin
        exit(Rec.Blocked);
    end;


}