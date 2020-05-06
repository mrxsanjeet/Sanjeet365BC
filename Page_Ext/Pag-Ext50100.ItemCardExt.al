pageextension 50100 "ItemCardExt" extends "Item Card"
{
    layout
    {
        //Add Changes to page layout here
    }
    actions
    {
        addlast("F&unctions")
        {
            action(ImportItemPicture)
            {
                CaptionML = ENU = 'Import Item Picture';
                ApplicationArea = all;
                trigger OnAction()
                var
                    Imagemanagement: Codeunit ImageManagement;
                begin
                    Imagemanagement.ImportItemPicture(Rec);
                end;
            }
            action(ExportItemPicture)
            {
                CaptionML = ENU = 'Export Item Picture';
                ApplicationArea = all;
                trigger OnAction()
                var
                    Imagemanagement: Codeunit ImageManagement;
                begin
                    Imagemanagement.ExportItemPicture(Rec);
                end;
            }
        }
    }
}