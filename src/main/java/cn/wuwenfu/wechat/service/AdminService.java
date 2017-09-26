package cn.wuwenfu.wechat.service;


public interface AdminService {

    public boolean login( String userName, String password);

    public boolean passwordEdit(String password,String newPassword);

}
