codeunit 50501 "RWD Upgrade Code"
{
    Subtype = Upgrade;

    trigger OnUpgradePerCompany();
    var
        InstallCode : Codeunit "RWD Install Code";
        Reward : Record "RWD Rewards";
        Module : ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(Module);
        if Module.DataVersion.Major = 1 then begin
            Reward.Get('BRONZE');
            Reward.Rename('ALUMINUM');
            Reward.Description := 'Aluminum Level';
            Reward.Modify();
        end;
    end;
}