package cn.wuwenfu.wechat.pojo;

import java.io.Serializable;
import java.util.Date;

public class Brand  implements Serializable {
    private Short id;

    private String userName;

    private String password;

    private String brandLogo;

    private String brandName;

    private Date dateAdd;

    public Short getId() {
        return id;
    }

    public void setId(Short id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getBrandLogo() {
        return brandLogo;
    }

    public void setBrandLogo(String brandLogo) {
        this.brandLogo = brandLogo == null ? null : brandLogo.trim();
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName == null ? null : brandName.trim();
    }

    public Date getDateAdd() {
        return dateAdd;
    }

    public void setDateAdd(Date dateAdd) {
        this.dateAdd = dateAdd;
    }


    @Override
    public String toString() {
        return "Brand{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", brandLogo='" + brandLogo + '\'' +
                ", brandName='" + brandName + '\'' +
                ", dateAdd=" + dateAdd +
                '}';
    }
}