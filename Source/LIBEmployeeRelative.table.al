table 50107 LIBEmployeeRelative
{
    DataClassification = ToBeClassified;
    Caption = 'Employee Relatives Table';

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

        field(3; PhoneNo; Text[50])
        {
            DataClassification = ToBeClassified;

        }

        field(4; Relation; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(5; RelativeEmployeeNo; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = LIBEmployee;
        }
    }

    keys
    {
        key(Key1; No)
        {
            Clustered = true;
        }
    }



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