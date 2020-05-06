page 50000 "CompanyInfoWizard"
{
    PageType = NavigatePage;
    SourceTable = "Company Information";
    Caption = 'Company Information';
    layout
    {
        area(Content)
        {
            group(standardBanner)
            {
                Editable = false;
                Visible = TopBannerVissible and (CurrentStep < 3);
                field(MediaResourcesStandard; MediaResourcesStandard."Media Reference")
                {
                    ApplicationArea = All;
                    ShowCaption = false;

                }

            }

            group(FinishBanner)
            {
                Editable = false;
                Visible = TopBannerVissible and (CurrentStep = 3);
                field(MediaResourceDone; MediaResourceDone."Media Reference")
                {
                    ApplicationArea = All;
                    ShowCaption = false;

                }
            }
            group(Step1)
            {
                Visible = CurrentStep = 1;
                group(CompanyName)
                {
                    Caption = 'Company Name';
                    InstructionalText = 'Provide the name of the company';
                    field(Name; Name)
                    {
                        ApplicationArea = All;
                    }
                }
            }
            group(Step2)
            {
                Visible = CurrentStep = 2;
            }
            group(Step3)
            {
                Visible = CurrentStep = 3;
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ActionBack)
            {
                ApplicationArea = All;
                Caption = 'Back';
                InFooterBar = true;
                Enabled = ActionBackAllowed;
                Image = PreviousRecord;
                trigger OnAction()
                begin
                    TakeStep(-1);
                end;
            }
            action(ActionNext)
            {
                ApplicationArea = All;
                Caption = 'Next';
                Enabled = ActionNextAllowed;
                InFooterBar = true;
                Image = NextRecord;
                trigger OnAction()
                begin
                    TakeStep(1);
                end;
            }
            action(ActionFinish)
            {
                ApplicationArea = All;
                Caption = 'Finish';
                InFooterBar = true;
                Enabled = ActionFinishAllowed;
                Image = Approve;
                trigger OnAction()
                begin
                    CurrPage.Close();
                end;
            }
        }
    }
    var
        CurrentStep: Integer;
        ActionBackAllowed: Boolean;
        ActionNextAllowed: Boolean;
        ActionFinishAllowed: Boolean;
        MediaRepositoryStandard: Record "Media Repository";
        MediaRepositoryDone: Record "Media Repository";
        MediaResourcesStandard: Record "Media Resources";
        MediaResourceDone: Record "Media Resources";
        TopBannerVissible: Boolean;

    local procedure SetControls()
    begin
        ActionBackAllowed := CurrentStep > 1;
        ActionNextAllowed := CurrentStep < 3;
        ActionFinishAllowed := CurrentStep = 3;
    end;

    local procedure TakeStep(Step: Integer)
    begin
        CurrentStep += Step;
        SetControls;
    end;

    trigger OnOpenPage()
    begin
        CurrentStep := 1;
        SetControls;
    end;

    local procedure LoadTopBanners()
    begin
        if (MediaRepositoryStandard.Get('AssistedSetup-NoText-400px.png', Format(CurrentClientType()))) and
        MediaRepositoryDone.Get('AssistedSetupDone-NoText-400px.png', Format(CurrentClientType()))
        then
            if MediaResourcesStandard.Get(MediaRepositoryStandard."Media Resources Ref") and
            MediaResourceDone.Get(MediaRepositoryDone."Media Resources Ref")
            then
                TopBannerVissible := MediaResourceDone."Media Reference".HasValue();
    end;

    trigger OnInit()
    begin
        LoadTopBanners();
    end;
}