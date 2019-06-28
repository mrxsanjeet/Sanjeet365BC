page 50207 "Chicken List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Chicken;

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
                field("Chicket Type code"; "Chicket Type code")
                {
                    ApplicationArea = all;
                }
                field(Blocked; Blocked)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}