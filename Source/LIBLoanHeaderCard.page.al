page 50105 LIBLoanHeaderCard
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = LIBLoanHeader;

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

                field(MemberNo; Rec.MemberNo)
                {
                    ApplicationArea = All;

                }

                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }

                field(Employee; Rec.Employee)
                {
                    ApplicationArea = All;
                }

                field(UserName; Rec.UserName)
                {
                    ApplicationArea = All;
                }

                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
            }
            part(LIBLoansHeaderSubPage; LIBLoansHeaderSubPage)
            {
                ApplicationArea = all;
                SubPageLink = DocumentNo = field(No);
                UpdatePropagation = Both;
            }
        }
    }

    actions
    {
        area(Processing)
        {


            action(ReleaseHeaderAction)
            {
                Caption = 'Release Loan Header';
                Image = ReleaseDoc;
                ApplicationArea = All;
                ToolTip = 'Executes the Release Loan Header action.';

                trigger OnAction()
                begin
                    Rec.Release();
                end;
            }

            action(ReopenLoanHeaderAction)
            {
                Caption = 'Re-open Loan Header';
                Image = ReOpen;
                ApplicationArea = All;
                ToolTip = 'Executes the Re-open Loan Header action.';

                trigger OnAction()
                begin
                    Rec.Reopen();
                end;
            }
        }
    }

}