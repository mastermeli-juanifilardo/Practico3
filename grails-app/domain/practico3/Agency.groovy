package practico3

class Agency {

    String agency_code;
    String correspondent_id;
    String description;
    boolean disabled;
    Double distance;
    String agency_id;
    String payment_method_id;
    String phone;
    String site_id;
    boolean terminal;
    Address address;

    static constraints = {
        agency_code blank: false, nullable: false
        correspondent_id blank: false, nullable: false
        description blank: true, nullable: true
        distance blank: true, nullable: true
        agency_id blank: false, nullable: false, unique: true
        payment_method_id blank: false, nullable: false
        phone blank: true, nullable: true
        site_id blank: false, nullable: false
        terminal blank: true, nullable: true
        address blank: false, nullable: false
    }
}
