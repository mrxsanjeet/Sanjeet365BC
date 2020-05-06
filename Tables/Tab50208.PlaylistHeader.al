table 50208 "Playlist Header"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(10; "Radio show No."; Code[20]) { }
        field(20; Description; Text[50]) { }
        field(30; "Broadcast Date"; Date) { }
        field(40; Duration; Duration) { }
        field(50; "Start Time"; Time) { }
        field(60; "End Time"; Time) { }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

}