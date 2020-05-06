page 50209 "Egg ProdLine subpage"
{
    PageType = ListPart;
    AutoSplitKey = true;
    DelayedInsert = true;
    SourceTable = "Egg.Production Line";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Chicken No."; "Chicken No.")
                {
                    ApplicationArea = All;

                }
                field("Chicken Description"; "Chicken Description")
                {
                    ApplicationArea = All;
                }
                field("Egg Date"; "Egg Date")
                {
                    ApplicationArea = All;
                }
                field("Egg Type code"; "Egg. Type Code")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    ApplicationArea = All;
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