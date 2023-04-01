report 50102 LIBEmployeeRelative
{
    UsageCategory = None;
    DefaultRenderingLayout = LIBEmployeeRelativeLayout;
    Caption = 'Employee Relatives Report';
    dataset
    {
        dataitem(Employee; LIBEmployee)
        {
            column(No; No)
            {

            }

            column(Name; Name)
            {

            }

            column(Sex; Sex)
            {

            }


            column(MaritalStatus; MaritalStatus)
            {

            }

            column(Title; Title)
            {

            }

            dataitem(Relative; LIBEmployeeRelative)
            {
                DataItemLink = RelativeEmployeeNo = field(No);

                column(RelativeNo;
                No)
                {

                }

                column(RelativeName; Name)
                {

                }

                column(PhoneNo; PhoneNo)
                {

                }

                column(Relation; Relation)
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
        layout(LIBEmployeeRelativeLayout)
        {
            Type = RDLC;
            LayoutFile = 'LIBEmployeeRelativesReport.rdl';
        }
    }

    labels
    {
        ReportCaption = 'Employee Relatives Report';
        EmployeeInfoCaption = 'Employee Info';
        RelativesInfoCaption = 'Relatives Info';
        NoCaption = 'No.';
        NameCaption = 'Name';
        SexCaption = 'Sex';
        MaritalStatusCaption = 'Marital Status';
        TitleCaption = 'Title';
        RelativeNoCaption = 'Relative No.';
        RelativeNameCaption = 'Relative Name';
        PhoneNoCaption = 'Phone No.';
        RelationCaption = 'Relation';


    }
}