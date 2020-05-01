codeunit 50102 GetExchangeRate
{
    procedure GetExchangeRate(Currency: Record Currency)
    var
        HttpClient: HttpClient;
        HttpResponse: HttpResponseMessage;
        url: Text;
        ResponseText: Text;
        GeneralLedgerSetup: Record "General Ledger Setup";
    begin
        GeneralLedgerSetup.FindFirst;
        url := StrSubstNo('http://api.fixer.io/latest?base=%1&symbols=%2', GeneralLedgerSetup.GetCurrencyCode(''), Currency.Code);
        if HttpClient.Get(url, HttpResponse) then begin
            HttpResponse.Content.ReadAs(ResponseText);
            Message(ResponseText);
        end;
    end;
}