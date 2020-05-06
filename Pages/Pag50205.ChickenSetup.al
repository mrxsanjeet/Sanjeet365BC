page 50205 "Chicken Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Chicken Setup";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Chicken Nos."; "Chicken Nos.")
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

        }
    }
    trigger OnOpenPage();
    begin
        if not GET THEN INSERT;
    end;
}