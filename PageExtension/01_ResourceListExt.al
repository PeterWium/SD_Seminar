pageextension 123456701 ResorceListExt extends "Resource List"
{
    layout
    {
        Modify(Type)
        {
            Visible = Showtype;
        }
        addafter(Type)
        {
            field("CSD_Resource type"; "CSD_Resource type")
            {
                Visible = ShowMaxfield;
            }
        }
        addlast(Control1)
        {

            field("CSD_Maximum Participents"; "CSD_Maximum Participents")
            {

            }
        }
    }

    actions
    {

    }
    trigger OnOpenPage();
    begin
        FilterGroup(3);
        Showtype := (GetFilter(Type) = '');
        ShowMaxfield := (GetFilter(Type) = format(type::Machine));
        FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowMaxfield: Boolean;
        [InDataSet]
        Showtype: Boolean;
}