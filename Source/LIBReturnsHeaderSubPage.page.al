page 50112 LIBReturnsHeaderSubPage
{
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = LIBReturnLine;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(RepeaterGroup)
            {
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