# Lng-Device
## v1.1 
* 修改dataToString 格式转换
* senseorDao添加 findByProductIdAndDate接口。根据时间，产品id查询sensorData
## v1.2
* 修改json返回“faultType”，显示“faultTybe”的错误
## v1.3
* ErrorDeviceDao 添加 getPreChangedErrorDevice()，获取被更改过的ErrorDevice的list，即其中的updateMan字段不空的数据
* 修改测试按日期获取sensorData的单元测试
* 修改sql文件  ErrorDevice 表
* 修改 rechargeTime;//最近一次充值时间 字段类型
