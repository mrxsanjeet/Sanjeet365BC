table 50200 "Cars"
{
    DataClassification = ToBeClassified;
    TableType = Normal;
    CaptionML = ENU = 'Cars';
    LookupPageId = "Car List";
    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'No.';
            FieldClass = Normal;
        }
        field(2; "Description"; text[50])
        {
            CaptionML = ENU = 'Description';
        }
        field(3; Type; Option)
        {
            OptionMembers = Hatchback,Sedan,MPV,Coupe,Convertible;
            CaptionML = ENU = 'Body Type';
            OptionCaptionML = ENU = 'Hatchback,Sedan,MPV,Coupe,Convertible';
        }
        field(4; "Manufacturer No."; Code[20])
        {
            TableRelation = "Car Manufacturer";
            CaptionML = ENU = 'Manufacturer No.';
        }
        field(5; Transmission; Option)
        {
            OptionMembers = Manual,Automatic;
            CaptionML = ENU = 'Transmission';
            OptionCaptionML = ENU = 'Manual,Automatic';
        }
        field(6; Fuel; Option)
        {
            OptionMembers = Diesel,Gasoline,Electric,LPG,CNG,"Electric/Diesel","Electric/Gasoline";
            CaptionML = ENU = 'Fuel';
            OptionCaptionML = ENU = 'Diesel,Gasoline,Electric,LPG,CNG,"Electric/Diesel","Electric/Gasoline"';
        }
        field(7; "Car Manuf. Country/Region Code"; Code[10])
        {
            FieldClass = FlowField;
            CalcFormula = lookup ("Car Manufacturer"."Country/Region Code" where ("No." = field ("Manufacturer No.")));
            Editable = false;
            CaptionML = ENU = 'Car Manuf. Country/Region Code';
        }
        field(8; "Vendor No."; Code[20])
        {
            TableRelation = Vendor where ("Partner Type" = const (Company), Blocked = const (" "));
            CaptionML = ENU = 'Vendor No.';
        }
        field(9; Picture; MediaSet)
        {
            CaptionML = ENU = 'Picture';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(SK1; "Manufacturer No.")
        {

        }
    }
    fieldgroups
    {
        fieldgroup("Dropdown"; "No.", Description, Type, Fuel, Transmission) { }

        fieldgroup("Brick"; "No.", Description, Type, Fuel, Transmission, Picture) { }
    }
}