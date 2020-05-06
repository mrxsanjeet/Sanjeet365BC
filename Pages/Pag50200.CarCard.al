page 50200 "Car Card"
{
    PageType = Card;
    SourceTable = Cars;
    CaptionML = ENU = 'Car Card';
    UsageCategory = Administration;
    layout
    {
        area(Content)
        {
            group(General)
            {
                CaptionML = ENU = 'General';
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
        area(FactBoxes)
        {
            part("Car Picture"; "Car Picture")
            {
                ApplicationArea = all;
                SubPageLink = "No." = field ("No.");
            }
            systempart("Notes"; Notes)
            {
                ApplicationArea = all;
            }
        }
    }
}