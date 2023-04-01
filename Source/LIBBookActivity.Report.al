report 50103 LIBBookActivity
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LIBBookActivityLayout;
    Caption = 'Book Activity Report';

    dataset
    {
        dataitem(Book; LIBBook)
        {
            column(BookNo; Book.No)
            {

            }
            column(BookName; Name)
            {

            }

            column(Date; format(Date))
            {

            }

            column(Member; Member)
            {

            }

            column(Condition; Condition)
            {

            }

            column(Activity; Activity)
            {

            }




            dataitem(Integer; Integer)
            {
                //MaxIteration = 1;
                DataItemTableView = where(Number = const(1));

                PrintOnlyIfDetail = true;
                dataitem(LoanLine; LIBLoanLine)
                {
                    DataItemLinkReference = Book;
                    DataItemLink = BookNo = field(No);
                    column(LoanEntry; true)
                    {
                    }

                    trigger OnAfterGetRecord()
                    var

                        LoanHeader: Record LIBLoanHeader;
                    begin
                        LoanHeader.Get(DocumentNo);

                        Date := LoanHeader.Date;
                        Member := LoanHeader.MemberNo;
                        Activity := Activity::Loaned;
                        Condition := BookCondition;
                    end;
                }

                dataitem(ReturnLine; LIBReturnLine)
                {
                    DataItemLinkReference = Book;
                    DataItemLink = ReturnedBookNo = field(No);
                    column(ReturnEntry; true)
                    {

                    }

                    trigger OnAfterGetRecord()
                    var
                        ReturnHeader: Record LIBReturnHeader;

                    begin
                        ReturnHeader.Get(ReturnDocumentNo);

                        Date := ReturnHeader.ReturnDate;
                        Member := ReturnHeader.MemberNo;
                        Activity := Activity::Returned;
                        Condition := ReturnedBookCondition;

                    end;
                }
            }
            trigger OnAfterGetRecord()

            begin
                Date := 0D;
                Member := '';
                Activity := Activity::None;
                Condition := '';
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                // group(GroupName)
                // {
                //     field(Name; SourceExpression)
                //     {
                //         ApplicationArea = All;

                //     }
                // }
            }
        }

    }

    rendering
    {
        layout(LIBBookActivityLayout)
        {
            Type = RDLC;
            LayoutFile = 'LIBBookActivityReport.rdl';
        }
    }

    labels
    {
        ReportCaption = 'Book Activity Report';
        BookNoCaption = 'Book No.';
        BookNameCaption = 'Book Name';
        DateCaption = 'Date';
        MemberCaption = 'Member';
        ConditionCaption = 'Condition';
        ActivityCaption = 'Activity';
    }

    var
        Date: Date;
        Member: Code[20];
        Condition: Text[50];
        Activity: Enum LIBActivity;
}