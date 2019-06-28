page 50204 "Car Manufacturer Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Car Manufacturer";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = all;
                }
                field("Phone No."; "Phone No.")
                {
                    ApplicationArea = all;
                }
                field("Country/Region Code"; "Country/Region Code")
                {
                    ApplicationArea = all;
                }
                field("No. of Cars"; "No. of Cars")
                {
                    ApplicationArea = all;
                }
            }
        }
        area(FactBoxes)
        {
            part("Car Factboxes"; "Car Factboxes")
            {
                ApplicationArea = all;
                SubPageLink = "Manufacturer No." = field ("No.");
            }
            systempart("Notes"; Notes)
            {
                ApplicationArea = all;
            }
        }
    }
}