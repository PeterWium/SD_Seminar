page 123456701 "Seminar Page"
{
    PageType = Card;
    SourceTable = Seminar;
    Caption = 'Seminar Card';
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    Caption = 'Number';
                    trigger OnAssistEdit();

                    begin
                        if Rec.AssistEdit = true then
                            CurrPage.Update;

                    end;
                }
                field(Name; Name)
                {
                    caption = 'Name';
                }
                field("Search Name"; "Search Name")
                {
                    caption = 'Search Name';
                }
                field("Seminar Duration"; "Seminar Duration")
                {
                    caption = 'Seminar Duration';
                }
                field("Minimum Participants"; "Minimum Participants")
                {
                    Caption = 'Minimum Participants';
                }
                field("Maximum Participants"; "Maximum Participants")
                {
                    caption = 'Maximum Participants';
                }
                field(Blocked; Blocked)
                {
                    caption = 'Blocked';
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                    caption = 'Last Date Modified';
                }
            }
            group(Invoicing)
            {
                Caption = 'Invoicing';
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                    caption = 'Gen. Prod. Posting Group';
                }
                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                    caption = 'VAT Prod. Posting Group';
                }
                field("Seminar Price"; "Seminar Price")
                {
                    caption = 'Seminar Price';
                }
            }
        }
        area(FactBoxes)
        {
            systempart("Links"; Links)
            {
                Caption = 'Links';
            }

            systempart("Notes"; Notes)
            {
                Caption = 'Notes';
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
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
}