page 50208 "FactBox page"
{
    PageType = ListPart;
    SourceTable = Chicken;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Description; Description)
                {
                    ApplicationArea = All;

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

    var
        myInt: Integer;
}