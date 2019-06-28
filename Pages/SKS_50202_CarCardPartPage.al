page 50202 "Car Picture"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Cars;

    layout
    {
        area(Content)
        {
            group(Image)
            {
                field(Picture; Picture)
                {
                    ApplicationArea = All;
                    ShowCaption = false;
                }
            }
        }
    }
}