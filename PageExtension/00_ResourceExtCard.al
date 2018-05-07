pageextension 123456700 CSD_ResourceCardExt extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD_Resource type";"CSD_Resource type")
            {

            }
            field("CSD_Quantity Per Day";"CSD_Quantity Per Day")   
            {

            }
        }
        addafter("Personal Data")
        {
            group("room")
            {
                    
                field("CSD_Maximum Participents";"CSD_Maximum Participents")
                {
                    Visible=ShowMaxField;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    
    trigger OnOpenPage();
    begin
        ShowMaxField := (type = type::Machine);
        CurrPage.Update(false);
            
    end;
    var
        [InDataSet]
        ShowMaxField: Boolean;


}