package furama.model;

public class CustomerType {
    private int customerTypeId;
    private  String name;

    public CustomerType() {
    }

    public CustomerType(int customerTypeId, String name) {
        this.customerTypeId = customerTypeId;
        this.name = name;
    }

    public int getCustomerTypeId() {
        return customerTypeId;
    }

    public void setCustomerTypeId(int customerTypeId) {
        this.customerTypeId = customerTypeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
