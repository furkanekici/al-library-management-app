page 50100 LIBMembers
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LIBMember;
    Caption = 'Member List';
    Editable = false;
    CardPageId = LIBMemberCard;

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