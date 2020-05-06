page 50210 "Egg Production"
{
    PageType = Document;
    SourceTable = "Egg. Production Header";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;

                }
                field("Document Date"; "Document Date")
                {
                    ApplicationArea = all;
                }
                field("Posting Date"; "Posting Date")
                {
                    ApplicationArea = all;
                }
                field("No. of Printed"; "No. of Printed")
                {
                    ApplicationArea = all;
                }
            }
            part(EggProdLineSubPage; "Egg ProdLine subpage")
            {
                SubPageLink = "Document No." = field ("No.");
                ApplicationArea = all;
            }
        }
        area(FactBoxes)
        {
            part(Control17; "FactBox page")
            {
                Provider = EggProdLineSubPage;
                SubPageLink = "No." = field ("Chicken No.");
                ApplicationArea = all;
            }
            systempart(Control18; Notes)
            {

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