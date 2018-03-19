table 50500 "RWD Rewards"
{

    fields
    {
        // The Code field represents the unique identifier 
        field(1;Code;Code [20])
        {
        }
        // The "Description" field can contain a string 
        field(2;Description;Text [250])
        {            
        }
        // The "Discount Percentage" field is a Decimal numeric value
        field(3;"Discount Percentage";Decimal)
        {
            MinValue = 0;
            MaxValue = 100;
            DecimalPlaces = 2;
        }
    }

    keys
    {
        key(PK;Code)
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}