tableextension 50100 LIBUserSetup extends "User Setup"
{
    fields
    {
        field(50100; LIBEmployeeNo; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee No';
            TableRelation = LIBEmployee;
        }
    }
}