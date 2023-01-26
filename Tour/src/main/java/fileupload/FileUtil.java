package fileupload;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

// web.xml에서 최대 용량을 1mb로 기본 세팅함
public class FileUtil {
	
	public static MultipartRequest uploadFile(HttpServletRequest request, String saveDirectory, int maxPostSize) {
		try {
			return new MultipartRequest(request, saveDirectory, maxPostSize, "utf-8");
		} catch(Exception e) {
			System.out.println("파일 업로드 호출 오류");
			e.printStackTrace();
			return null;
		}
	}
	
	// 지정한 위치의 파일 삭제
	public static void deleteFile(HttpServletRequest request, String directory, String filename) {
		
		String sDirectory = request.getServletContext().getRealPath(directory);
		File file = new File(sDirectory + File.separator + filename);
		if(file.exists()) {	// 파일이 존재하면 파일 삭제
			file.delete();
		}
		
	}
	
}
