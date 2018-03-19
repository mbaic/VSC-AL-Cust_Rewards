codeunit 50500 "RWD Install Code"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    var
        Reward : Record "RWD Rewards";
    begin
        if Reward.IsEmpty() then begin
            InsertDefaultRewards();
        end;
    end;
    procedure InsertDefaultRewards();
    begin
        InsertRewardLevel('GOLD', 'Gold Level', 20);
        InsertRewardLevel('SILVER', 'Silver Level', 10);
        InsertRewardLevel('BRONZE', 'Bronze Level', 5);
    end;

    procedure InsertRewardLevel(in_Code : Code[20]; in_Description : Text[250]; in_Discount : Decimal);
    var
        l_Reward : Record "RWD Rewards";
    begin
        l_Reward.Init();
        l_Reward.Code := in_Code;
        l_Reward.Description := in_Description;
        l_Reward."Discount Percentage" := in_Discount;
        l_Reward.Insert();
    end;

}