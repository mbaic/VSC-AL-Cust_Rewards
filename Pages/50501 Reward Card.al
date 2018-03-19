page 50501 "RWD Reward Card"
{
    PageType = Card;
    SourceTable = "RWD Rewards";

    layout
    {
        area(content)
        {
            group(Reward)
            {
                field(Code;Code)
                {
                    ApplicationArea = All;
                }

                field(Description;Description)
                {
                    ApplicationArea = All;
                }

                field("Discount Percentage";"Discount Percentage")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
    
    var
        myInt : Integer;
}