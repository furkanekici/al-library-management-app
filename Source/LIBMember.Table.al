table 50100 LIBMember
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(3; Phone; Text[100])
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


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    var
        LoanHeader: Record LIBLoanHeader;
        errorMsg: Label 'User has loaned books.';
    begin
        LoanHeader.Reset();
        LoanHeader.SetRange(MemberNo, Rec.No);

        if not LoanHeader.IsEmpty() then
            Error(errorMsg);
    end;

    trigger OnRename()
    begin

    end;

}