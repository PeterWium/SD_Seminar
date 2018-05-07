table 123456704 "Seminar Comment Line"
{
    DataClassification = ToBeClassified;
    LookupPageId="Seminar Comment List";
    DrillDownPageId="Seminar Comment List";

    fields
    {
        field(10;"Table Name";Option)
        {
            
            OptionMembers="Seminar","Seminar Registration","Posted Seminar Reg. Header";
            OptionCaption='Seminar,Seminar Registration,Posted Seminar Reg. Header';
            DataClassification = ToBeClassified;
        }
        field(20;"Document Line No.";Integer)
        {
            Caption='Document Line No.';
            DataClassification = ToBeClassified;
        }
        field(30;"No.";Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(40;"Line No.";Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
        field(50;Date;Date)
        {
            Caption = 'Date';
            DataClassification = ToBeClassified;
        }   
        field(60;Code;Code[10])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(70;Comment;Text[80])
        {
            Caption = 'Comment';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK;"Table Name","Document Line No.","No.","Line No.")
        {
            Clustered = true;
        }
    }
}