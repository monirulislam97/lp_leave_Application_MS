package Model;

import java.io.Serializable;

public class NewApplication implements Serializable {

    String applicationId;
    String id;
    String name;
    String Sdate;
    String Edate;
    int days;
    String status;
    String reason;

    public NewApplication() {
    }

    public NewApplication(String id, String name,  String Sdate, String Edate, int days,  String reason, String status) {
        this.name = name;
        this.id = id;
        this.Sdate = Sdate;
        this.Edate = Edate;
        this.days = days;
        this.status = status;
        this.reason = reason;
        applicationId = "";
    }

    public String getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(String applicationId) {
        this.applicationId = applicationId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSdate() {
        return Sdate;
    }

    public void setSdate(String Sdate) {
        this.Sdate = Sdate;
    }

    public String getEdate() {
        return Edate;
    }

    public void setEdate(String Edate) {
        this.Edate = Edate;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

}
