page 50203 "Car Factboxes"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Cars;

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
                field(Transmission; Transmission)
                {
                    ApplicationArea = all;
                }
                field(Fuel; Fuel)
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}