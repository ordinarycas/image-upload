<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="image_upload._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-xs-4">
            <div class="upload-img-filed">
              <label class="upload-img-square" data-file-id="pic01" data-file-title="商品主圖1" data-maxsize="600">
                <div class="upload-img-square__upload">
                  <div class="upload-img-square__upload__button">
                    <img class="upload-img-square__upload__button__icon" src="https://static.thenounproject.com/png/1156517-200.png">
                    <div class="upload-img-square__upload__button__label">上傳商品主圖1</div>
                  </div>
                </div>
                <asp:FileUpload ID="FileUpload1" runat="server" accept="image/*" />
              </label>
            </div>

            <div class="upload-img-filed">
              <label class="upload-img-square" data-file-id="pic01" data-file-title="商品主圖2" data-maxsize="600">
                <div class="upload-img-square__upload">
                  <div class="upload-img-square__upload__button">
                    <img class="upload-img-square__upload__button__icon" src="https://static.thenounproject.com/png/1156517-200.png">
                    <div class="upload-img-square__upload__button__label">上傳商品主圖2</div>
                  </div>
                </div>
                <asp:FileUpload ID="FileUpload2" runat="server" accept="image/*" />
              </label>
            </div>

            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="送出" OnClick="Button1_Click" />
        </div>
        <div class="col-xs-8">
            <figure>
              <img id="figure-previwe-1" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="img-responsive" alt="previwe image">
              <figcaption class="figure-caption">1. Use JavaScript previwe image for Base64.</figcaption>
            </figure>
            <figure>
              <img id="figure-previwe-2" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" class="img-responsive" alt="previwe image">
              <figcaption class="figure-caption">2. Use JavaScript previwe image for Base64.</figcaption>
            </figure>
        </div>
    </div>
    <script type="text/javascript">
        // JavaScrip 寫外面是不好的作法，重複的功能請寫成 function()
        (function ($) {
            const fileUpload01 = document.getElementById('<%= FileUpload1.ClientID%>');
            const fileUpload02 = document.getElementById('<%= FileUpload2.ClientID%>');
            const previweImage01 = document.getElementById('figure-previwe-1');
            const previweImage02 = document.getElementById('figure-previwe-2');

            fileUpload01.addEventListener('change', (event) => {
                console.log(event.target);
                if (event.target.files.length > 0) {
                    let src = URL.createObjectURL(event.target.files[0]);
                    console.log(src);
                    previweImage01.src = src;
                }
            })

            fileUpload02.addEventListener('change', (event) => {
                console.log(event.target);
                if (event.target.files.length > 0) {
                    let src = URL.createObjectURL(event.target.files[0]);
                    console.log(src);
                    previweImage02.src = src;
                }
            })

        })(jQuery)
    </script>
</asp:Content>
