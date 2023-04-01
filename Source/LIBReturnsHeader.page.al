page 50109 LIBReturnsHeader
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LIBReturnHeader;
    Caption = 'Return List';
    Editable = false;
    CardPageId = LIBReturnHeaderCard;

    layout
    {
        area(Content)
        {
            repeater(RepeaterGroup)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;

                }

                field(LoanDocumentNo; Rec.LoanDocumentNo)
                {
                    ApplicationArea = All;
                }

                field(MemberNo; Rec.MemberNo)
                {
                    ApplicationArea = All;

                }



                field(ReturnDate; Rec.ReturnDate)
                {
                    ApplicationArea = All;

                }

                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}