page 50108 LIBLoansHeaderSubPage
{
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = LIBLoanLine;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(RepeaterGroup)
            {
                field(BookNo; Rec.BookNo)
                {
                    ApplicationArea = All;

                }

                field(BookCondition; Rec.BookCondition)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}