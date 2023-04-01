report 50101 LIBReturnReport
{
    UsageCategory = None;
    DefaultRenderingLayout = LIBReturnReportLayout;
    Caption = 'Return Report';

    dataset
    {
        dataitem(Header; LIBReturnHeader)
        {
            column(MemberNo; MemberNo)
            {

            }

            column(ReturnDate; ReturnDate)
            {

            }
            column(Status; Status)
            {

            }
            dataitem(Line; LIBReturnLine)
            {
                DataItemLink = ReturnDocumentNo = field(No);

                column(ReturnedBookNo; ReturnedBookNo)
                {

                }

                column(ReturnedBookCondition; ReturnedBookCondition)
                {

                }
            }
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
        layout(LIBReturnReportLayout)
        {
            Type = RDLC;
            LayoutFile = 'LIBReturnReport.rdl';
        }
    }

    labels
    {
        ReportCaption = 'Return Report';
        ReturnedBookNoCaption = 'Returned Book No.';
        ReturnedBookConditionCaption = 'Returned Book Condition';
        MemberNoCaption = 'Member No.';
    }

    var
        myInt: Integer;
}