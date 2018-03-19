tableextension 50502 "RWD Cust. Ext" extends Customer
{
    fields
    {
        field(50500;"Reward Code";Code[20])
        {
            TableRelation = "RWD Rewards".Code;
            ValidateTableRelation = true;
            trigger OnValidate();
            begin    
                if (Rec."Reward Code" <> xRec."Reward Code") and
                    (Rec.Blocked <> Blocked::" ") then
                begin
                    Error('Cannot update the rewards status of a blocked customer.')
                end;
            end;
        }
    }
}