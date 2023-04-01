pageextension 50100 LIBUserSetup extends "User Setup"
{
    layout
    {
        addlast(Control1)
        {
            field(LIBEmployeeNo; Rec.LIBEmployeeNo)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}