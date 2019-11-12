package com.medium.api;


import static spark.Spark.*;

import java.util.ArrayList;

import spark.Filter;
import spark.Request;
import spark.Response;
import spark.Spark;

import com.entity.Module;
import com.google.gson.Gson;

public class Server {
	
	public Server(int port, int minThreads, int maxThreads, int timeOutMillis){
		
		//apply config and start server
		Spark.port(port);
		threadPool(maxThreads, minThreads, timeOutMillis);
		
		Gson gson = new Gson();
		
		//start routing server path
		Spark.get("/api/:UserID", (req, res) -> {
			ProsesData prosesData = new ProsesData();  
			ArrayList<Module> arrModule = prosesData.getDataModule(req.params(":UserID"));
		    return arrModule;
		}, gson::toJson);
		
		//apply filter untuk response header json
		apply();
		
	}
	//fungsi untuk apply response header menggunakan json 
	public final static void apply() {
		Filter filter = new Filter() {
			@Override
			public void handle(Request request, Response response) throws Exception {
				response.type("application/json");
			}
		};
		Spark.after(filter);
	}
	
}
