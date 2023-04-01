codeunit 50100 LIBManagement
{
    procedure UpdateBookLoanFields(BookNo: Code[20])

    var
        LIBBook: Record LIBBook;
        LIBReturnLine: Record LIBReturnLine;
        LIBReturnHeader: Record LIBReturnHeader;
        LIBLoanLine: Record LIBLoanLine;
        LIBLoanHeader: Record LIBLoanHeader;
    begin
        LIBReturnLine.SetRange(ReturnedBookNo, BookNo);
        if LIBReturnLine.FindLast() then
            LIBReturnHeader.Get(LIBReturnLine.ReturnDocumentNo);


        LIBLoanLine.SetRange(BookNo, BookNo);
        if LIBLoanLine.FindLast() then
            LIBLoanHeader.Get(LIBLoanLine.DocumentNo);


        if LIBBook.Get(BookNo) then
            if LIBReturnHeader.ReturnDate > LIBLoanHeader.Date then begin
                LIBBook.IsLoaned := false;
                LIBBook.LoanMemberName := '';
                LIBBook.LoanDate := 0D;
                LIBBook.MemberNo := '';
                LIBBook.Modify();
            end

            else
                if LIBReturnHeader.MemberNo = LIBBook.MemberNo then begin
                    LIBBook.IsLoaned := true;
                    LIBBook.LoanMemberName := LIBLoanHeader.MemberName;
                    LIBBook.LoanDate := LIBLoanHeader.Date;
                    LIBBook.MemberNo := LIBLoanHeader.MemberNo;
                    LIBBook.Modify();
                end;
    end;
}