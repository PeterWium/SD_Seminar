page 123456702 "Seminar List"
{
    PageType = List;
    SourceTable = Seminar;

    layout
    {
        area(content)
        {
            repeater("Seminar List")
            {
                Caption = 'Seminar List';
                field("No."; "No.")
                {
                    Caption = 'Number';
                }

                field(Name; Name)
                {
                    Caption = 'Name';
                }

                field("Seminar Duration"; "Seminar Duration")
                {
                    Caption = 'Seminar Duration';
                }

                field("Seminar Price"; "Seminar Price")
                {
                    Caption = 'Seminar Price';
                }

                field("Minimum Participants"; "Minimum Participants")
                {
                    Caption = 'Minimum Participants';
                }

                field("Maximum Participants"; "Maximum Participants")
                {
                    Caption = 'Maximum Participants';
                }

            }
        }
        area(factboxes)
        {
        }
    }

    actions
    {
        area(Creation)
        {
            action("C&omments")
            {
                RunObject = page "Seminar Comment Sheet";
                //RunPageLink = "table name"=const(Seminar),
                //"No."=field(No.);"
                image = Comment;
                Promoted = True;
                PromotedIsBig = true;
                PromotedOnly = true;

            }
        }
    }
}