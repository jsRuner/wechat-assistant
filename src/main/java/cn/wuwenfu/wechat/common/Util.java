package cn.wuwenfu.wechat.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Util {
    public static String byte2hex(byte[] b) // 二行制转字符串
    {
        String hs="";
        String stmp="";
        for (int n=0;n<b.length;n++)
            {
            stmp=(java.lang.Integer.toHexString(b[n] & 0XFF));
            if (stmp.length()==1)
                hs=hs+"0"+stmp;
            else
                hs=hs+stmp;
            if (n<b.length-1)
                hs=hs+":";
            }
            return hs.toUpperCase();
    }

    public static String getPasswordShaStr(String password,String salt){
        String passwordSha1Str = "";
        try {
            MessageDigest alga= MessageDigest.getInstance("SHA-1");
            password = password+ salt;
            alga.update(password.getBytes());
            passwordSha1Str = Util.byte2hex(alga.digest());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }finally {
            return passwordSha1Str;
        }
    }
}
