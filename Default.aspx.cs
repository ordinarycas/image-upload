using System;
using System.Web.UI;

namespace image_upload
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // ASP.NET學習經驗#9----FileUpload好難使喚只好動手自己來
            // https://ithelp.ithome.com.tw/articles/10156570
            // [ASP.NET][C#]WebForm FileUpload控制項上傳問題
            // https://dotblogs.com.tw/stanley14/2016/08/10/173019
            if (!IsPostBack)
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string saveDir = @"\Uploads\";
            string appPath = Request.PhysicalApplicationPath;
            string timeStamp = DateTime.Now.ToString("yyyyMMddhhmmss");

            if (FileUpload1.HasFile)
            {
                string savePath = appPath + saveDir + timeStamp + "01" + System.IO.Path.GetExtension(FileUpload1.FileName);
                FileUpload1.SaveAs(savePath);
                Response.Write(string.Format("第一張圖：檔案名稱是{0}，送出成功", FileUpload1.FileName));
            }

            if (FileUpload2.HasFile)
            {
                // string savePath = appPath + saveDir + Server.HtmlEncode(FileUpload2.FileName);
                string savePath = appPath + saveDir + timeStamp + "02" + System.IO.Path.GetExtension(FileUpload2.FileName);
                FileUpload2.SaveAs(savePath);
                Response.Write(string.Format("第二張圖：檔案名稱是{0}，送出成功", FileUpload2.FileName));
            }
        }
    }
}