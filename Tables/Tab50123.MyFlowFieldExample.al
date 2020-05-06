table 50123 "MyFlowFieldExample"
{
    fields
    {
        field(1; MyField; Decimal)
        {
            Description = 'New field';
        }
        field(3; "no."; Text[20])
        {
            Description = 'Serial number of the service';
        }
        field(4; "Global Dimension 1 Filter"; Code[20])
        {
            FieldClass = FlowFilter;
        }
        field(5; "Global Dimension 2 Filter"; Code[20])
        {
            FieldClass = FlowFilter;
        }
        field(6; "Currency Filter"; Code[10])
        {
            FieldClass = FlowFilter;
        }
        field(2; "Total Amount"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry"."Amount (LCY)"
            WHERE ("Customer No." = FIELD ("No."),
            "Initial Entry Global Dim. 1" = FIELD ("Global Dimension 1 Filter"),
            "Initial Entry Global Dim. 2" = FIELD ("Global Dimension 2 Filter"),
            "Currency Code" = FIELD ("Currency Filter")
            ));
        }
    }
}