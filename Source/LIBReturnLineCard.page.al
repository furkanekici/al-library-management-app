page 50111 LIBReturnLineCard
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = LIBReturnLine;


    layout
    {
        area(Content)
        {
            group(GeneralGroup)
            {
                field(ReturnDocumentNo; Rec.ReturnDocumentNo)
                {
                    ApplicationArea = All;
                }

                field(ReturnedBookNo; Rec.ReturnedBookNo)
                {
                    ApplicationArea = All;

                }

                field(ReturnedBookCondition; Rec.ReturnedBookCondition)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}