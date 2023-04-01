table 50106 LIBEmployee
{
    DataClassification = ToBeClassified;
    Caption = 'Employee Table';

    fields
    {
        field(1; No; Code[20])
        {
            DataClassification = ToBeClassified;

        }

        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;

        }

        field(3; Sex; Text[10])
        {
            DataClassification = ToBeClassified;

        }

        field(4; MaritalStatus; Text[50])
        {
            DataClassification = ToBeClassified;

        }

        field(5; Title; Text[50])
        {
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(Key1; No)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}