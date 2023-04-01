table 50103 LIBLoanLine
{
    DataClassification = ToBeClassified;
    Caption = 'Loan Line';


    fields
    {
        field(1; DocumentNo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Document No.';
            TableRelation = LIBLoanHeader;
            Editable = false;
        }

        field(2; BookNo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Book No.';
            TableRelation = LIBBook;


            trigger OnValidate()
            var
                LoanLine: Record LIBLoanLine;
                Management: Codeunit LIBManagement;
                ExistErr: Label 'Already exists in the database.';

            begin
                TestStatusOpen();
                LoanLine.Reset();
                LoanLine.SetRange(BookNo, Rec.BookNo);

                if not LoanLine.IsEmpty() then
                    Error(ExistErr)
                else
                    Management.UpdateBookLoanFields(Rec.BookNo);
            end;

        }

        field(3; BookCondition; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Book Condition';
            trigger OnValidate()

            begin
                TestStatusOpen();
            end;
        }

        field(4; BookName; Text[50])
        {
            FieldClass = FlowField;
            Caption = 'Book Name';

            CalcFormula = lookup(LIBBook.Name where("No" = field("BookNo")));
            trigger OnValidate()

            begin
                TestStatusOpen();
            end;

        }

    }

    keys
    {
        key(Key1; DocumentNo, BookNo)
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

    end;

    trigger OnRename()
    begin

    end;

    procedure TestStatusOpen()
    var
        LIBLoanHeader: Record LIBLoanHeader;

    begin
        LIBLoanHeader.Get(Rec.DocumentNo);
        LIBLoanHeader.TestField(Status, LIBLoanHeader.Status::Open);
    end;

}