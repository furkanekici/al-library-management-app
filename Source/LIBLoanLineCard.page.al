page 50107 LIBLoanLineCard
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = LIBLoanLine;


    layout
    {
        area(Content)
        {
            group(GeneralGroup)
            {
                field(DocumentNo; Rec.DocumentNo)
                {
                    ApplicationArea = All;
                }

                field(BookNo; Rec.BookNo)
                {
                    ApplicationArea = All;

                }

                field(BookCondition; Rec.BookCondition)
                {
                    ApplicationArea = All;
                }

                field(BookName; Rec.BookName)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}