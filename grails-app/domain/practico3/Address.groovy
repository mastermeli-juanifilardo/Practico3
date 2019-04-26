package practico3

class Address {

    String address_line;
    String city;
    String country;
    String location;
    String other_info;
    String state;
    String zip_code;

    static constraints = {
        address_line blank: false, nullable: false
        city blank: false, nullable: false
        country blank: false, nullable: false
        location  blank: false, nullable: false
        other_info blank: true, nullable: true
        state blank: false, nullable: false
        zip_code blank: false, nullable: false
    }
}
