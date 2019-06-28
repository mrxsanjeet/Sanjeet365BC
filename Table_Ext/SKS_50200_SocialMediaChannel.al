tableextension 50200 SocialMediaChannel extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50200; Facebook; text[50])
        {
            ExtendedDatatype = URL;
            DataClassification = CustomerContent;
        }
        field(50201; Instagram; text[50])
        {
            ExtendedDatatype = URL;
            DataClassification = CustomerContent;
        }
        field(50202; Twitter; text[50])
        {
            ExtendedDatatype = URL;
            DataClassification = CustomerContent;
        }
        field(50203; Skype; text[50])
        {
            ExtendedDatatype = URL;
            DataClassification = CustomerContent;
        }
        field(50024; "Pref. channel"; Option)
        {
            OptionMembers = Facebook,Instagram,Twitter,Skype;
            OptionCaption = 'Facebook,Instagram,Twitter,Skype';
            DataClassification = CustomerContent;
        }
    }
}