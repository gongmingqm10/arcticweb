<%@ include file="../backend/admin.jsp" %>
 <link rel="stylesheet" href="style/backend/upload.css" type="text/css"/>
  <script type="text/javascript" src="scripts/backend/video.js"></script>


            <c:if test="${not empty message}">
                <div class="alert alert-info alert-dismissible" role="alert">
                  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                  "${message}"
                </div>
            </c:if>

            <form action="admin/video/upload" method="post" class="form-inline upload" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="file">上传视频：&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                    <input type="file" id="videoFile" onchange="readURL(this);" class="form-control" name="file" required/>
                </div>
                <br><br>
                <div class="form-group">
                    <label for="picture">上传视频缩略图：</label>
                    <input type="file" id="picFile" onchange="readPicURL(this);" class="form-control" name="picture" required/>
                </div>

                <button type="submit" class="btn btn-default btn-right" >上传</button>
            </form>

            <form action="admin/video/create"  method="post" role="form">
              <div class="form-group">
                <label for="name">视频名称</label>
                <input class="form-control" id="name" name="name" placeholder="输入视频名称" required>
              </div>
              <div class="form-group">
                <label for="image">视频缩略图</label>
                <input class="form-control" id="image" name="image" placeholder="上传缩略图自动生成地址" required value="${picUrl}">
              </div>
              <div class="form-group">
                  <label for="source">视频地址</label>
                  <input class="form-control" id="source" name="source" placeholder="上传视频自动生成地址" required value="${url}">
                  <input class="hidden" id="fileSize" name="fileSize" value="${size}">
              </div>

              <button type="submit" class="btn btn-success">保存</button>
              <a href="admin/video"><button type="button" class="btn btn-default">返回</button></a>
            </form>


        </div>
    </div>
<%@ include file="../footer.jsp" %>