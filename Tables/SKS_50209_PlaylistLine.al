table 50209 "Playlist Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Line No."; Integer) { }
        field(10; Type; Option) { OptionMembers = ,Resource,Show,Item; }
        field(20; "No."; Code[20])
        {
            TableRelation = if (Type = const (Resource)) Resource."No."
            else
            if (Type = const (Show)) RadioShow."No."
            else
            if (Type = const (Item)) Item."No.";

        }
        field(30; "Data Format"; Option) { OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisment; }
        field(40; Purblisher; Code[10]) { }
        field(50; Description; Text[50]) { }
        field(60; Duration; Duration) { }
        field(70; "Start Time"; Time) { }
        field(80; "End Time"; Time) { }
    }
    keys
    {
        Key(PK; "Document No.", "Line No.")
        {
            Clustered = True;
        }
    }

}