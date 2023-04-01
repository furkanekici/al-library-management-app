table 50105 LIBReturnLine
{
    DataClassification = ToBeClassified;
    Caption = 'Return Line';

    fields
    {
        field(1; ReturnDocumentNo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Return Document No.';
            TableRelation = LIBReturnHeader;
            Editable = false;
        }

        field(2; ReturnedBookNo; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Returned Book No.';
            TableRelation = LIBBook;


            trigger OnValidate()

            var
                Management: Codeunit LIBManagement;

            begin
                TestStatusOpen();
                Management.UpdateBookLoanFields(Rec.ReturnedBookNo);

            end;
        }



        field(3; ReturnedBookCondition; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Returned Book Condition';

            trigger OnValidate()

            begin
                TestStatusOpen();
            end;
        }

    }

    keys
    {
        key(Key1; ReturnDocumentNo, ReturnedBookNo)
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


    procedure TestStatusOpen()
    var
        LIBReturnHeader: Record LIBReturnHeader;

    begin
        LIBReturnHeader.Get(Rec.ReturnDocumentNo);
        LIBReturnHeader.TestField(Status, LIBReturnHeader.Status::Open);
    end;


}