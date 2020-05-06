page 50213 "Radio Show Type"
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = Administration;
    SourceTable = "Radio show Type";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Code)
                {
                    ApplicationArea = Basic;

                }
                field(Description; Description) { ApplicationArea = Basic; }
            }
        }
    }
}