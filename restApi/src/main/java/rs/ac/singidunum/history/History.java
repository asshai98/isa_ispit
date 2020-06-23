package rs.ac.singidunum.history;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class History {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int history_id;

    private String campaign_name;
    private int lasted;
    private String camp_desc;

    public History() {
    }

    public History(int history_id, String campaign_name, int lasted, String camp_desc) {
        this.history_id = history_id;
        this.campaign_name = campaign_name;
        this.lasted = lasted;
        this.camp_desc = camp_desc;
    }

    public int getHistory_id() {
        return history_id;
    }

    public void setHistory_id(int history_id) {
        this.history_id = history_id;
    }

    public String getCampaign_name() {
        return campaign_name;
    }

    public void setCampaign_name(String campaign_name) {
        this.campaign_name = campaign_name;
    }

    public int getLasted() {
        return lasted;
    }

    public void setLasted(int lasted) {
        this.lasted = lasted;
    }

    public String getCamp_desc() {
        return camp_desc;
    }

    public void setCamp_desc(String camp_desc) {
        this.camp_desc = camp_desc;
    }
}


