page 50212 "Radio Show Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = RadioShow;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = Basic;

                }
                field("Radio show type"; "Radio show Type")
                {
                    ApplicationArea = Basic;
                }
                field("Name"; "Name")
                {
                    ApplicationArea = Basic;
                }
                field("Run Time"; "Run Time")
                {
                    ApplicationArea = Basic;
                }
                field("Host Code"; "Host Code")
                {
                    ApplicationArea = Basic;
                }
                field("Host name"; "Host Name")
                {
                    ApplicationArea = Basic;
                }
                field("Average Listeners"; "Average Listners")
                {
                    ApplicationArea = Basic;
                }
                field("Audience share"; "Audiance Share")
                {
                    ApplicationArea = Basic;
                }
                field("Advertising Revenue"; "Advertising Revenue")
                {
                    ApplicationArea = Basic;
                }
                field("Royality cost"; "Royality Cost")
                {
                    ApplicationArea = Basic;
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