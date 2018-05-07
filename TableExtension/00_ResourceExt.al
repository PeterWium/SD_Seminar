tableextension 123456700 ResourceExt extends Resource
{
    fields
    {
        field(123456701;"CSD_Resource type";Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal","External";
            OptionCaption = 'Internal,External';
            DataClassification = ToBeClassified;
        }
        field(123456702;"CSD_Maximum Participents";Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = ToBeClassified;
        }
        field(123456703;"CSD_Quantity Per Day";Decimal)
        {
            Caption = 'Quantity Per Day';
            DataClassification  = ToBeClassified;
        }
        
        modify("Profit %")
        {
            trigger OnBeforeValidate();
            begin
                Rec.TestField("Unit Cost");                
            end;
        }
    }
    
    var
        myInt : Integer;
}