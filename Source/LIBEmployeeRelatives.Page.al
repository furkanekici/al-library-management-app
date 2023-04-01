page 50115 LIBEmployeeRelatives
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LIBEmployeeRelative;
    Caption = 'Employee Relatives List';
    Editable = false;
    CardPageId = LIBEmployeeRelativeCard;

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

                field(PhoneNo; Rec.PhoneNo)
                {
                    ApplicationArea = All;

                }

                field(Relation; Rec.Relation)
                {
                    ApplicationArea = All;

                }

                field(RelativeEmployeeNo; Rec.RelativeEmployeeNo)
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}