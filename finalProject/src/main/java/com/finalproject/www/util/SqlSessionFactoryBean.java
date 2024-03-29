package com.finalproject.www.util;

import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionFactoryBean {
   private static SqlSessionFactory sessionFactory = null;

   static {
      try {
         if (sessionFactory == null) {
            Reader reader = Resources.getResourceAsReader("sql-map-config.xml");
            sessionFactory = (new SqlSessionFactoryBuilder()).build(reader);
         }
      } catch (Exception var1) {
         var1.printStackTrace();
      }

   }

   public SqlSessionFactoryBean() {
   }

   public static SqlSession getSqlSessionInstance() {
      return sessionFactory.openSession();
   }
}
