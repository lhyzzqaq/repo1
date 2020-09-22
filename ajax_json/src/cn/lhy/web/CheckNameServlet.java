package cn.lhy.web;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.tomcat.util.http.mapper.Mapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/checkNameServlet")
public class CheckNameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json;charset=utf-8");
        String username = request.getParameter("username");
        Map<String,Object> map=new HashMap<String, Object>();

        if(username.equals("lhy")){
            map.put("userExsit",true);
            map.put("msg","用户名已存在");
        }else{
            map.put("userExsit",false);
            map.put("msg","用户名可用");
        }
        System.out.println(map);
        ObjectMapper mapper = new ObjectMapper();
        String s = mapper.writeValueAsString(map);
        System.out.println(s);
        mapper.writeValue(response.getWriter(),map);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
