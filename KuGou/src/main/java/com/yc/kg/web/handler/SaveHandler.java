package com.yc.kg.web.handler;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.kg.entity.KgSave;
import com.yc.kg.entity.KuSongDetail;
import com.yc.kg.entity.PaginationBean;
import com.yc.kg.service.SaveService;

@Controller
@RequestMapping("/save")
public class SaveHandler {

	@Autowired
	private SaveService saveService;
	
	/**
	 * 分页显示歌曲
	 */
	@RequestMapping("/list")
	@ResponseBody
	public PaginationBean<KgSave> list(String page,String rows){
		LogManager.getLogger().debug("请求saveHandler处理list....");
		return saveService.listPartSave(page,rows);
	}

	//详细表的添加
	@RequestMapping("/add")
	@ResponseBody
	public boolean addDetail(KuSongDetail kd){
		LogManager.getLogger().debug("请求saveHandler处理add...."+kd);
		return saveService.addDetail(kd);
	}
	//收藏
	@RequestMapping("/save")
	public String addSave(HttpSession session,KgSave ks){
		System.out.println(ks+"=============="+ks.getKgSavenext());
		if(session.getAttribute("loginUserId")!=null){
			ks.setKuserSaveId((Integer)session.getAttribute("loginUserId"));
			ks.setKgSavesecond("1");
			LogManager.getLogger().debug("请求saveHandler处理save...."+ks);
			boolean flag= saveService.saveSong(ks);
			return "forward:/page/saveSccess.jsp";
		}
		return "forward:/page/saveFail.jsp";
	}
	
	
	//显示收藏
	@RequestMapping("/findDetail")
	@ResponseBody
	public List<KgSave> selectSave(@RequestParam(name="kuSongId")int id){
		LogManager.getLogger().debug("请求saveHandler处理save的用户id...."+id);
		System.out.println("==============="+saveService.findDetail(id));
		return saveService.findDetail(id);
	}
	

    @RequestMapping("download.do")
    public void downloadFile(HttpSession session,String fileName,HttpServletResponse response){  
        response.setCharacterEncoding("utf-8");  
        response.setContentType("multipart/form-data");  
        response.setHeader("Content-Disposition", "attachment;fileName="+fileName);  
        try { 
        	System.out.println("============="+fileName);
        	String path=session.getServletContext().getRealPath("")+"/"+fileName;
            InputStream inputStream=new FileInputStream(path);
            OutputStream os=response.getOutputStream();
            byte[] b=new byte[1024];  
            int length;  
            while((length=inputStream.read(b))>0){  
                os.write(b,0,length);
            }  
            inputStream.close();  
        } catch (FileNotFoundException e) {
            e.printStackTrace();  
        } catch (IOException e) {
            e.printStackTrace();
        }  
    }  
}  