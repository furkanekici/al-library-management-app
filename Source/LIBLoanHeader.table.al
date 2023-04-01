table 50102 LIBLoanHeader
{
    DataClassification = ToBeClassified;
    Caption = 'Loan Header';


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

        field(2; MemberNo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Member No';
            TableRelation = LIBMember;
            trigger OnValidate()

            begin
                TestStatusOpen();
            end;
        }

        field(3; MemberName; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Member Name';
            TableRelation = LIBMember;
        }

        field(4; Date; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date';
            trigger OnValidate()

            begin
                TestStatusOpen();
            end;
        }

        field(5; Employee; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Employee No.';
            Editable = false;
        }


        field(6; Status; Enum LIBDocumentStatus)
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
            Editable = false;
        }

        field(7; UserName; Code[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'User Name';
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
    var
        UserSetup: Record "User Setup";

    begin
        if (UserSetup.Get(UserId())) then begin
            Rec.UserName := UserId();
            Rec.Employee := UserSetup.LIBEmployeeNo;
        end;

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
        LoanLine: Record LIBLoanLine;

    begin
        LoanLine.SetRange(DocumentNo, No);
        LoanLine.DeleteAll();
    end;

    procedure TestReleasePossible()
    var
        LIBLoanLine: Record LIBLoanLine;
    begin
        Rec.TestField(No);
        Rec.TestField(MemberNo);
        Rec.TestField(Date);

        LIBLoanLine.SetFilter(DocumentNo, No);
        if LIBLoanLine.FindSet() then
            repeat
                LIBLoanLine.TestField(BookNo);
                LIBLoanLine.TestField(BookCondition);

            until LIBLoanLine.Next() = 0;
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