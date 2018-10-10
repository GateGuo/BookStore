package com.sxt.bookstore.servlet;

import com.alibaba.fastjson.JSON;
import com.sxt.bookstore.entity.Books;
import com.sxt.bookstore.entity.Page;
import com.sxt.bookstore.entity.Type;
import com.sxt.bookstore.service.BooksService;
import com.sxt.bookstore.service.TypeService;
import com.sxt.bookstore.service.impl.BooksServiceImpl;
import com.sxt.bookstore.service.impl.TypeServiceImpl;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.*;

/**
 * @author Q2665_yubiums
 */
@WebServlet(name = "BookServlet", value = "/books")
public class BookServlet extends BaseServlet {

    BooksService booksService = new BooksServiceImpl();

    private void doShow(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();

            String page1 = request.getParameter("page");
            String limit = request.getParameter("limit");

            int page = Integer.parseInt(page1);
            int size = Integer.parseInt(limit);


            Page<Books> booksPage = booksService.getPage(page, size);

            HashMap<Object, Object> map = new HashMap<>(4);

            map.put("code", 200);
            map.put("msg", "success");
            map.put("count", booksPage.getTotalCount());
            map.put("data", JSON.toJSONString(booksPage.getPageData()));


            Object mapString = JSON.toJSON(map);
            out.print(mapString);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void doEditGet(HttpServletRequest request, HttpServletResponse response) {
        String bId = request.getParameter("bId");
        try {
            Books books = booksService.getOneByPrimaryKey(Integer.valueOf(bId));

            TypeService typeService = new TypeServiceImpl();

            List<Type> all = typeService.getAll();
            String string = JSON.toJSONString(all);


            request.setAttribute("Bean", books);
            request.setAttribute("data", string);

            request.getRequestDispatcher("jsp/upd/booksUpd.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void doEdit(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();

            Integer bCount = Integer.valueOf(request.getParameter("bCount"));
            String bDescription = request.getParameter("bDescription");
            Integer bId = Integer.valueOf(request.getParameter("bId"));
            String bImgName = request.getParameter("bImgName");
            String bName = request.getParameter("bName");
            String bAuthor = request.getParameter("bAuthor");
            Double bPrice = Double.valueOf(request.getParameter("bPrice"));

            Integer bSalesVolume = 0;
            if (request.getParameter("bSalesVolume") != null && request.getParameter("bSalesVolume") != "") {
                bSalesVolume = Integer.valueOf(request.getParameter("bSalesVolume"));
            }

            String bTag = request.getParameter("bTag");
            String bUpTime = request.getParameter("bUpTime");
            Integer type1 = Integer.valueOf(request.getParameter("type[1]"));

            Books book = new Books(bId,bAuthor,bName,bPrice,bCount,bTag,bDescription,type1,bUpTime,bSalesVolume,bImgName);

            boolean flag = booksService.upd(book);


            out.print(flag == true ? "success" : "fail");
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void doDel(HttpServletRequest request, HttpServletResponse response) {
        Integer bId = Integer.valueOf(request.getParameter("bId"));

        try {
            PrintWriter out = response.getWriter();
            boolean flag = booksService.del(bId);


            out.print(flag == true ? "success" : "fail");
            out.flush();
            out.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void doUpload(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        //存储文件夹
        String path = getServletContext().getRealPath("upload");
        //临时文件夹
        String tmpPath = getServletContext().getRealPath("tmp");
        System.out.println(path);
        System.out.println(tmpPath);

        DiskFileItemFactory disk = new DiskFileItemFactory(1024 * 1024,
                new File(tmpPath));
        ServletFileUpload up = new ServletFileUpload(disk);

        try {
            List<FileItem> list = up.parseRequest(request);
            List<Map<String, String>> ups = new ArrayList<>();
            String files = null;
            for (FileItem file : list) {
                Map<String, String> upMap = new HashMap<>(3);

                String fileName = file.getName();
                String fileType = file.getContentType();
                InputStream inputStream = file.getInputStream();
                int size = inputStream.available();

                if (fileName != null && !"".equals(fileName)) {
                    UUID uuid = UUID.randomUUID();
                    String newFileName = fileName.substring(0, fileName.lastIndexOf('.'))
                            + '_' + uuid.toString() + fileName.substring(fileName.lastIndexOf('.'));

                    FileUtils.copyInputStreamToFile(inputStream,
                            new File(path + '/' + newFileName));

                    upMap.put("fileName", newFileName);
                    upMap.put("fileType", fileType);
                    upMap.put("size", String.valueOf(size));
                    ups.add(upMap);
                    file.delete();
                    files = JSON.toJSONString(ups);
                }
            }
            out.print(files == null ? "fail" : files);
        } catch (FileUploadException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        out.flush();
        out.close();
    }

    private void doGetType(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        TypeService typeService = new TypeServiceImpl();

        List<Type> all = typeService.getAll();
        String string = JSON.toJSONString(all);

        System.out.println(string);

        PrintWriter out = response.getWriter();
        out.print(string);
        out.flush();
        out.close();
    }

    private void doAdd(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        PrintWriter out = response.getWriter();

        Integer bCount = Integer.valueOf(request.getParameter("bCount"));
        String bDescription = request.getParameter("bDescription");
        String bImgName = request.getParameter("bImgName");
        String bName = request.getParameter("bName");
        String bAuthor = request.getParameter("bAuthor");
        Double bPrice = Double.valueOf(request.getParameter("bPrice"));
        String bTag = request.getParameter("bTag");
        Integer bTId = Integer.valueOf(request.getParameter("bTId"));

        Books book = new Books();
        book.setBAuthor(bAuthor);
        book.setBCount(bCount);
        book.setBDescription(bDescription);
        book.setBImgName(bImgName);
        book.setBName(bName);
        book.setBPrice(bPrice);
        book.setBTag(bTag);
        book.setBTId(bTId);

        boolean flag = booksService.add(book);


        out.print(flag == true ? "success" : "fail");
        out.flush();
        out.close();
    }
}
