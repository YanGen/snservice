```
接口文档
baseUrl：http://ip:port/mail
```

# 邮件模块

 ### **发送文本** 

**接口描述**：发送简单文本

**URL**：/simple

**请求Method**：post 

**请求头**：Content-Type: " application/json" 

**请求参数**：


**请求示例**：

 ```json 
 {
	"from":"zorage@163.com",
	"to":"zorage@qq.com",
	"subject":"提醒",
	"text":"到货了"
}
 ```

**返回结果**：

 ```json 
 {
    "msg": "SUCCESS",
    "code": 0,
    "data": "提交成功"
}
 ```

 ### **发送Html文本** 

**接口描述**：发送Html文本 需注意格式

**URL**：/html

**请求Method**：post 

**请求头**：Content-Type: " application/json" 

**请求参数**：


**请求示例**：

 ```json 
 {
	"from":"zorage@163.com",
	"to":"zorage@qq.com",
	"subject":"提醒",
	"text":"<html><body><h1>提醒</h1></body></html>"
}
 ```

**返回结果**：

 ```json 
 {
    "msg": "SUCCESS",
    "code": 0,
    "data": "提交成功"
}
 ```

## 