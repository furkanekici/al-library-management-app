page 50114 LIBEmployeeCard
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = LIBEmployee;

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

    actions
    {
        area(Processing)
        {
            action(ReportRelativesAction)
            {
                Caption = 'Report Relatives';
                Image = PrintReport;
                ApplicationArea = All;
                ToolTip = 'Executes the Report Relatives action.';

                trigger OnAction()
                var
                    Employee: Record LIBEmployee;
                begin
                    Employee.Get(Rec.No);

                    Employee.SetRecFilter();
                    Report.Run(Report::LIBEmployeeRelative, true, false, Employee);
                end;
            }
        }
    }


}