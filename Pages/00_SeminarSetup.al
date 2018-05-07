page 123456700 "Seminar Setup"
{
    PageType = Card;
    SourceTable = "Seminar Setup";
    caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = "Administration";
    layout
    {
        area(content)
        {
            group(Numbering)
            {
                field("Seminar Nos."; "Seminar Nos.")
                {
                    Caption = 'Seminar Nos.';
                }
                field("Seminar Registration Nos."; "Seminar Registration Nos.")
                {
                    Caption = 'Seminar Registration Nos.';
                }
                field("Posted Seminar Reg. Nos."; "Posted Seminar Reg. Nos.")
                {
                    Caption = 'Posted Seminar Reg. Nos.';

                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }

    var
        myInt: Integer;
}