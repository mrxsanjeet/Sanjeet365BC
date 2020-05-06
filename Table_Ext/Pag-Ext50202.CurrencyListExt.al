pageextension 50202 "CurrencyListExt" extends currencies
{
    actions
    {
        addafter("Exch. &Rates")
        {
            action(GetExchangeRate)
            {
                CaptionML = ENU = 'Get Exchange Rate';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ApplicationArea = all;
                trigger OnAction()
                var
                    GetExchangeRate: Codeunit GetExchangeRate;
                begin
                    GetExchangeRate.GetExchangeRate(Rec);
                end;

            }
        }
    }
}