page 123456707 "Seminar Comment List"
{
    PageType = List;
    SourceTable = "Seminar Comment Line";
    Caption = 'Seminar Comment List';
    Editable=false;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                Caption = 'Seminar Comment Sheet';
                field(Date; Date)
                {
                }
                field(Code; Code)
                {
                    Visible = false;
                }

                field(Comment; Comment)
                {
                    
                }
           }
        }
    }

}