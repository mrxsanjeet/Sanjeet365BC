page 50214 "Date Formula"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Date Formula";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Primary Key"; "Primary Key") { ApplicationArea = all; }
                field("Reference for Date Calculation"; "Reference for Date Calculation") { ApplicationArea = all; }
                field("Date formula to Test"; "Date Formula to Test") { ApplicationArea = All; }
                field("Date Reult"; "Date Result") { }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}