page 50102 LIBBooks
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LIBBook;
    Caption = 'Books';
    Editable = false;
    CardPageId = LIBBookCard;

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
}