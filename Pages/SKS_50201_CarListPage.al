page 50201 "Car List"
{
    PageType = List;
    SourceTable = Cars;
    CaptionML = ENU = 'Car List';
    CardPageId = "Car Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; "No.")
                {
                    ApplicationArea = all;
                }
                field(Description; Description)
                {
                    ApplicationArea = all;
                }
                field(Type; Type)
                {
                    ApplicationArea = all;
                }
                field("Manufacturer No."; "Manufacturer No.")
                {
                    ApplicationArea = all;
                }
                field(Transmission; Transmission)
                {
                    ApplicationArea = all;
                }
                field(Fuel; Fuel)
                {
                    ApplicationArea = all;
                }
                field("Car Manuf. Country/Region Code"; "Car Manuf. Country/Region Code")
                {
                    ApplicationArea = all;
                }
                field("Vendor No."; "Vendor No.")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}