page 50110 LIBReturnHeaderCard
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = LIBReturnHeader;

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

                field(LoanDocumentNo; Rec.LoanDocumentNo)
                {
                    ApplicationArea = All;
                }

                field(MemberNo; Rec.MemberNo)
                {
                    ApplicationArea = All;

                }

                field(ReturnDate; Rec.ReturnDate)
                {
                    ApplicationArea = All;

                }

                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }

            }

            part(LIBReturnsHeaderSubPage; LIBReturnsHeaderSubPage)
            {
                ApplicationArea = all;
                SubPageLink = ReturnDocumentNo = field(No);
                UpdatePropagation = Both;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(TestReleaseHeaderAction)
            {
                Caption = 'Release Header';
                Image = ReleaseDoc;
                ApplicationArea = All;
                ToolTip = 'Executes the Release Header action.';

                trigger OnAction()

                begin
                    Rec.Release();
                end;
            }

            action(ReopenReturnHeaderAction)
            {
                Caption = 'Re-open Return Header';
                Image = ReOpen;
                ApplicationArea = All;
                ToolTip = 'Executes the Re-open Return Header action.';

                trigger OnAction()
                begin
                    Rec.Reopen();
                end;
            }

            action(ReportReturnAction)
            {
                Caption = 'Report Return';
                Image = PrintReport;
                ApplicationArea = All;
                ToolTip = 'Executes the Report Return action.';

                trigger OnAction()
                var
                    ReturnHeader: Record LIBReturnHeader;
                    NotReleasedMsg: Label 'The document has not been released.';
                begin

                    ReturnHeader.Get(Rec.No);

                    ReturnHeader.SetRecFilter();
                    if ReturnHeader.Status = ReturnHeader.Status::Released then
                        Report.Run(Report::LIBReturnReport, true, false, ReturnHeader)
                    else
                        Message(NotReleasedMsg);
                end;
            }
        }
    }
}