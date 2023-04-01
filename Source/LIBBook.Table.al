table 50101 LIBBook
{
    DataClassification = ToBeClassified;
    Caption = 'Book Table';

    fields
    {
        field(1; No; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(2; Name; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(3; MemberNo; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = LIBMember;
            Editable = false;
        }

        field(4; ISBN; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(5; PageNumber; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(6; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(7; Employee; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(8; IsLoaned; Boolean)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(9; LoanDate; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;


        }
        field(10; LoanMemberName; Text[100])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(LIBMember.Name where("No" = field("MemberNo")));
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