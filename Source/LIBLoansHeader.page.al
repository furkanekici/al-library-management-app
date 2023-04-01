page 50104 LIBLoans
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LIBLoanHeader;
    Caption = 'Loans List';
    Editable = false;
    CardPageId = LIBLoanHeaderCard;

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

                field(MemberNo; Rec.MemberNo)
                {
                    ApplicationArea = All;

                }

                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }


                field(Employee; Rec.Employee)
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