package com.yc.kg.web.handler;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.kg.entity.KgComment;
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
	
	//取消收藏
	@RequestMapping("/cancel")
	@ResponseBody
	public boolean cancelSave(@RequestParam(name="uid")int uid){
		LogManager.getLogger().debug("请求saveHandler处理cancel的用户uid....");
		return saveService.cancelDetail(uid);
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
    
	@RequestMapping("/saveComment")
	public void addComment(HttpServletRequest request, HttpServletResponse response,HttpSession session,int kuSongDetailId,String kuSongName,String kuSingerName) throws ServletException, IOException{
		System.out.println("==============saveComment");
		request.setAttribute("kuSongDetailId", kuSongDetailId);
		request.setAttribute("kuSingerName", kuSingerName);
		request.setAttribute("kuSongName", kuSongName);
		request.setAttribute("loginUser", session.getAttribute("loginUser"));
		if(session.getAttribute("loginUserId")!=null){
			System.out.println(session.getAttribute("loginUser")+"loginUser");
			try {
				request.getRequestDispatcher("/page/comment.jsp").forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			request.getRequestDispatcher("/page/saveFail.jsp").forward(request, response);

		}
	}
	//添加评论
	@RequestMapping("/comment")
	@ResponseBody
	public boolean addComment(KgComment kgComment){
		LogManager.getLogger().debug("请求saveHandler处理add...."+kgComment);
		return saveService.addComment(kgComment);
	
	}
	  //显示评论
  	@RequestMapping("/selectComment")
  	@ResponseBody
  	public List<KgComment> selectComment(){
  		LogManager.getLogger().debug("请求saveHandler处理save的用户id....");
  		System.out.println("==============="+saveService.selectComment());
  		return saveService.selectComment();
  	}
    
    
    
}  