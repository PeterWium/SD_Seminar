table 123456700 "Seminar Setup"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(10;"Primary Key";Code[10])
        {
            Caption = 'PrimaryKey';
            DataClassification = ToBeClassified;
        }   
        field(20;"Seminar Nos.";Code[20])
        {
            TableRelation = "No. Series";
            Caption= 'Seminar Numbers';
            DataClassification = ToBeClassified;
        }
        field(30;"Seminar Registration Nos.";Code[20])
        {
            TableRelation = "No. Series";
            Caption='Seminar Registration Numbers';
            DataClassification = ToBeClassified;
        }

        field(40;"Posted Seminar Reg. Nos.";Code[20])
        {
            TableRelation = "No. Series";
            Caption='Posted Seminar Registration Numbers';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK;"Primary Key")
        {
            Clustered = true;
        }
    }
}