report 50100 LIBBookList
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;
    Caption = 'Book List Report';

    dataset
    {
        dataitem(DataItemName; LIBBook)
        {


            column(Name; Name)
            {

            }

            column(ISBN; ISBN)
            {

            }
            column(PageNumber; PageNumber)
            {

            }
            column(Description; Description)
            {

            }
            column(Employee; Employee)
            {

            }
            column(IsLoaned; IsLoaned)
            {

            }
            column(LoanDate; LoanDate)
            {

            }

            column(FormattedLoanDate; Format(LoanDate))
            {

            }
            column(LoanMemberName; LoanMemberName)
            {

            }

            column(IsLate; IsLate)
            {

            }
            column(DateToReturn; DateToReturn)
            {

            }

            column(FormattedDateToReturn; Format(DateToReturn))
            {

            }


            trigger OnAfterGetRecord()
            begin

                if LoanDate <> 0D then
                    DateToReturn := LoanDate + 10
                else
                    DateToReturn := 0D;
                if (Today > DateToReturn) and (IsLoaned) and (DateToReturn <> 0D) then
                    IsLate := true
                else
                    IsLate := false;

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

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'BookListLayout.rdl';
        }
    }

    var
        DateToReturn: Date;
        IsLate: Boolean;


}