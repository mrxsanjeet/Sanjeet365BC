report 50100 "Radio Shows"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;
    WordLayout = 'Radioshows.docx';
    //RDLCLayout = 'Radioshows.rdlc';
    DefaultLayout = Word;

    dataset
    {
        dataitem(DataItemName; RadioShow)
        {
            column("No"; "No.") { }
            column(RadioshowType; "Radio show Type") { }
            column(Name; Name) { }
            column(RunTime; "Run Time") { }
            column(HostCode; "Host Code") { }
            column(AverageListeners; "Average Listners") { }
            column(Audienceshare; "Audiance Share") { }
            column(AdvertisingRevenue; "Advertising Revenue") { }
            column(RoyalityCost; "Royality Cost") { }
        }
    }
}