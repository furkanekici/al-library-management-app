page 50103 LIBBookCard
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = LIBBook;

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

                field(MemberNo; Rec.MemberNo)
                {
                    ApplicationArea = All;
                }

                field(ISBN; Rec.ISBN)
                {
                    ApplicationArea = All;

                }

                field(PageNumber; Rec.PageNumber)
                {
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }

                field(Employee; Rec.Employee)
                {
                    ApplicationArea = All;
                }

                field(IsLoaned; Rec.IsLoaned)
                {
                    ApplicationArea = All;
                }

                field(LoanDate; Rec.LoanDate)
                {
                    ApplicationArea = All;
                }

                field(LoanMemberName; Rec.LoanMemberName)
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
            action(UpdateBookLoanFieldsAction)
            {
                Caption = 'Update Book';
                Image = UpdateXML;
                ApplicationArea = All;
                ToolTip = 'Executes the Update Book action.';

                trigger OnAction()
                var
                    Management: Codeunit LIBManagement;
                begin
                    Management.UpdateBookLoanFields(Rec.No);
                end;
            }
        }
    }
}