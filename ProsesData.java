package com.medium.api;

import java.util.ArrayList;
import java.sql.*;
import com.entity.Module;

public class ProsesData {
	ProsesData(){
		
	}
	
	public ArrayList<Module> getDataModule (String userid){
		ArrayList<Module> arrModule = new ArrayList<Module>();
		
		ConnectionClass connectionClass = new ConnectionClass();
		
		Connection connection=null;
		Statement stmnt = null;
		ResultSet r = null;
		
		try {
			connection = connectionClass.getConnectionMySQL();
			stmnt = connection.createStatement();
			String qq="SELECT d.* FROM tabel_user_id a INNER JOIN tabel_group b ON " + 
					"a.groupID =b.idGroup " + 
					"INNER JOIN tabel_mapping_group_card c ON b.idGroup= c.idGroup " + 
					"INNER JOIN tabel_card d ON c.idCard=d.idCard " + 
					"WHERE a.userID='"+userid+"' " + 
					"ORDER BY c.createDate";
			
            r = stmnt.executeQuery( qq );
            while(r.next()){
            	Module module = new Module();
            	module.setModuleOrder(r.getInt("idCard"));
        		module.setModuleName(r.getString("nameCard"));
        		arrModule.add(module);
        		
            }
		}catch(Exception e){
			
		}finally{
			try {
				r.close();
				stmnt.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return arrModule;
	}
}
