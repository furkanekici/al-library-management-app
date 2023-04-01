page 50101 LIBMemberCard
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = LIBMember;

    layout
    {
        area(Content)
        {
            group(GeneralGroup)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }

                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}