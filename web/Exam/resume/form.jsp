<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/12
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>表单形式的表格</title>
    <script type="text/javascript">
        var national = [
            "汉族", "壮族", "满族", "回族", "苗族", "维吾尔族", "土家族", "彝族", "蒙古族", "藏族", "布依族", "侗族", "瑶族", "朝鲜族", "白族", "哈尼族",
            "哈萨克族", "黎族", "傣族", "畲族", "傈僳族", "仡佬族", "东乡族", "高山族", "拉祜族", "水族", "佤族", "纳西族", "羌族", "土族", "仫佬族", "锡伯族",
            "柯尔克孜族", "达斡尔族", "景颇族", "毛南族", "撒拉族", "布朗族", "塔吉克族", "阿昌族", "普米族", "鄂温克族", "怒族", "京族", "基诺族", "德昂族", "保安族",
            "俄罗斯族", "裕固族", "乌孜别克族", "门巴族", "鄂伦春族", "独龙族", "塔塔尔族", "赫哲族", "珞巴族"
        ];
        window.onload = function () {
            var nat = document.getElementById("national");
            for (var i = 0; i < national.length; i++) {
                var option = document.createElement('option');
                option.value = i;
                var txt = document.createTextNode(national[i]);
                option.appendChild(txt);
                nat.appendChild(option);
            }
        }

       /* function CheckPhone(Phone) {
            var reg = /^((13[0-9]{9})|(159[0-9]{8}))$/;
            return reg.test(Phone);
        }
        function Check() {
            var Phone = document.getElementById("Phone").value;
            if (!CheckPhone(Phone)) {
                alert("输入的手机号码错误,请重写输入");
                return;
            }
        }*/
        /*预览照片功能*/
        function viewmypic(mypic, imgfile) {
            if (imgfile.files && imgfile.files[0]) {
                mypic.style.display = "";
                //火狐下，直接设img属性
                //mypic.src = imgfile.files[0].getAsDataURL();

                //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式
                mypic.src = window.URL.createObjectURL(imgfile.files[0]);
            }
            else {
//IE下
                if (imgfile.value) {
                    mypic.src = imgfile.value;
                    mypic.style.display = "";
                    mypic.border = 1;
                }
            }
        }
    </script>
    <style>
        .color {
            background: gray;
        }

        .font1 {
            font-size: 50px;
            font-style: italic;
            text-align: center;
        }

        .font2 {
            font-size: 30px;
            font-style: italic;
            text-align: center;
        }

        table {
            text-align: center;
        }

        .text {
            width: 100%;
            height: 100%;
            border: none;
            text-align: center;
        }

        .full {

            height: 100%;
            border: none;
        }
        textarea {
            font-size: 20px;
        }
    </style>
</head>
<body>
<form action="#" method="post">
    <table border=1 cellspacing=0 cellpadding=0 width="736" height="1024">
        <tr class="color font1">
            <td colspan="8">个人简历</td>
        </tr>
        <tr>
            <td>姓&nbsp;&nbsp;名</td>
            <td width="92">
                <input type="text" title="请输入姓名" class="text">
            </td>
            <td>
                性&nbsp;&nbsp;别
            </td>
            <td width="92">
                <input type="radio" name="sex" value="man">男
                <input type="radio" name="sex" value="woman">女
            </td>
            <td>籍&nbsp;&nbsp;贯</td>
            <td width="92">
                <input type="text" title="请输入籍贯" class="text">
            </td>
            <td class="justify" rowspan="4" colspan="2" width="184" height="100" style="border: none">
                <%--
                照片。未实现预览功能
                --%>
                <img name="showimg" id="showimg" src="" style="display:none;width: 100%;height: 100%" alt="预览图片"/>
                <input name="imgfile" type="file" id="imgfile" size="40" onchange="viewmypic(showimg,this.form.imgfile);" style="width: 100%;border: none" /><br>

            </td>
        </tr>
        <tr>
            <td>出生日期</td>
            <td>
                <input type="date" title="请输入出生年月日" class="full">
            </td>
            <td>
                名&nbsp;&nbsp;族
            </td>
            <td>
                <%--利用function循环遍历所有的名族--%>
                <select id="national" class="full">
                </select>
            </td>
            <td>现所在点</td>
            <td>
                <input type="text" title="请输入您的现居地" class="text">
            </td>
        </tr>
        <tr>
            <td>婚姻状况</td>
            <td>
                <input type="text" class="text">
            </td>
            <td>政治面貌</td>
            <td>
                <input type="text" class="text">
            </td>
            <td>最高学历</td>
            <td>
                <input type="text" class="text">
            </td>
        </tr>
        <tr>
            <td>所学专业</td>
            <td>
                <input type="text" class="text">
            </td>
            <td>毕业院校</td>
            <td>
                <input type="text" class="text">
            </td>
            <td>毕业时间</td>
            <td>
                <input type="date" class="full">
            </td>
        </tr>
        <tr>
            <td>手&nbsp;&nbsp;机</td>
            <td colspan="2">
                <%--收集号码该表单利用正则，限制只能输入数字和"-"--%>
                <input type="text" id="Phone" maxlength="11" class="text" onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();" >
            </td>
            <td>电子邮箱</td>
            <td colspan="4">
                <input type="email" class="full">
            </td>
        </tr>
        <tr>
            <td>求职意向</td>
            <td colspan="7">
                <input type="text" class="text">
            </td>
        </tr>
        <tr>
            <td class="color font2" colspan="8">教育/培训经历</td>
        </tr>
        <tr>
            <td width="184" colspan="2">起止时间</td>
            <td width="184" colspan="2">学校/培训地</td>
            <td width="184" colspan="2">专业/课程</td>
            <td width="184" colspan="2">学历/证书</td>
        </tr>
        <tr>
            <td colspan="2">
                起始：<input type="date" style="border: none"><br>
                截止：<input type="date" style="border: none">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                起始：<input type="date" style="border: none"><br>
                截止：<input type="date" style="border: none">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                起始：<input type="date" style="border: none"><br>
                截止：<input type="date" style="border: none">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                起始：<input type="date" style="border: none"><br>
                截止：<input type="date" style="border: none">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
        </tr>
        <tr>
            <td class="color font2" colspan="8">工作经验</td>
        </tr>
        <tr>
            <td colspan="2">起止时间</td>
            <td colspan="2">公司名称</td>
            <td colspan="4">职位及简单描述</td>
        </tr>
        <tr>
            <td colspan="2">
                起始：<input type="date" style="border: none"><br>
                截止：<input type="date" style="border: none">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
            <td colspan="4">
                <textarea class="text"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                起始：<input type="date" style="border: none"><br>
                截止：<input type="date" style="border: none">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
            <td colspan="4">
                <textarea class="text"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                起始：<input type="date" style="border: none"><br>
                截止：<input type="date" style="border: none">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
            <td colspan="4">
                <textarea class="text"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                起始：<input type="date" style="border: none"><br>
                截止：<input type="date" style="border: none">
            </td>
            <td colspan="2">
                <input type="text" class="text">
            </td>
            <td colspan="4">
                <textarea class="text"></textarea>
            </td>
        </tr>
        <tr>
            <td class="color font2" rowspan="2" colspan="2">技能专长</td>
            <td>专长</td>
            <td colspan="5">
                <textarea class="text"></textarea>
            </td>

        </tr>
        <tr>
            <td>爱好</td>
            <td colspan="5">
                <textarea class="text"></textarea>
            </td>

        </tr>
        <tr>
            <td class="color font2" colspan="2">自我评价</td>
            <td colspan="6">
                <textarea class="text"></textarea>
            </td>
        </tr>
        <tr>
            <td class="color font2" colspan="2">备注</td>
            <td colspan="6">
                <textarea class="text"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <input type="submit"  value="提交" class="full">
            </td>
            <td colspan="4">
                <input type="reset" value="重置" class="full">
            </td>
        </tr>

    </table>
</form>
</body>
</html>
