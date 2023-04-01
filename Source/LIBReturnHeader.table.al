table 50104 LIBReturnHeader
{
    DataClassification = ToBeClassified;
    Caption = 'Return Header';


    fields
    {
        field(1; No; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
            trigger OnValidate()

            begin
                TestStatusOpen();
            end;
        }
        field(3; LoanDocumentNo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Loan Document No';
            TableRelation = LIBLoanHeader;
            trigger OnValidate()

            begin
                TestStatusOpen();
            end;
        }

        field(4; MemberNo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Member No';
            TableRelation = LIBMember;

            trigger OnValidate()

            var
                ReturnLine: Record LIBReturnLine;
            begin
                TestStatusOpen();
                ReturnLine.Reset();
                ReturnLine.SetRange(ReturnDocumentNo, Rec.No);
                ReturnLine.DeleteAll();
            end;
        }

        field(6; ReturnDate; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Return Date';

            trigger OnValidate()

            begin
                TestStatusOpen();
            end;
        }

        field(7; Status; Enum LIBDocumentStatus)
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
            Editable = false;
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
        TestStatusOpen();
        DeleteRelatedLines();
    end;

    trigger OnRename()
    begin

    end;


    local procedure DeleteRelatedLines()
    var
        ReturnLine: Record LIBReturnLine;

    begin
        ReturnLine.SetRange(ReturnDocumentNo, No);
        ReturnLine.DeleteAll();
    end;

    procedure TestReleasePossible()
    var
        LIBReturnLine: Record LIBReturnLine;
    begin
        LIBReturnLine.SetFilter(ReturnDocumentNo, No);
        if LIBReturnLine.FindSet() then
            repeat
                LIBReturnLine.TestField(ReturnedBookNo);
                LIBReturnLine.TestField(ReturnedBookCondition);
            until LIBReturnLine.Next() = 0;
        Rec.TestField(No);
        Rec.TestField(MemberNo);
        Rec.TestField(ReturnDate);
    end;


    procedure Release()
    begin
        TestReleasePossible();
        Rec.Status := Rec.Status::Released;
        Rec.Modify();
    end;

    procedure TestStatusOpen()
    begin
        Rec.TestField(Status, Status::Open);
    end;

    procedure Reopen()
    begin
        if Rec.Status = Rec.Status::Released then
            Rec.Status := Rec.Status::Open;
        Rec.Modify();
    end;
}