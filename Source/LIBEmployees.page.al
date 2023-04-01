page 50113 LIBEmployees
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LIBEmployee;
    Editable = false;
    CardPageId = LIBEmployeeCard;


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

                field(Sex; Rec.Sex)
                {
                    ApplicationArea = All;

                }

                field(MaritalStatus; Rec.MaritalStatus)
                {
                    ApplicationArea = All;

                }

                field(Title; Rec.Title)
                {
                    ApplicationArea = All;

                }
            }
        }

    }


}