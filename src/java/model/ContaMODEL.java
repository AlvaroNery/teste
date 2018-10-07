
package model;


public class ContaMODEL {

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the NumeroConta
     */
    public String getNumeroConta() {
        return NumeroConta;
    }

    /**
     * @param NumeroConta the NumeroConta to set
     */
    public void setNumeroConta(String NumeroConta) {
        this.NumeroConta = NumeroConta;
    }

    /**
     * @return the CPF_Titular
     */
    public String getCPF_Titular() {
        return CPF_Titular;
    }

    /**
     * @param CPF_Titular the CPF_Titular to set
     */
    public void setCPF_Titular(String CPF_Titular) {
        this.CPF_Titular = CPF_Titular;
    }
    private int id;
    private String NumeroConta;
    private String CPF_Titular;
    
}
