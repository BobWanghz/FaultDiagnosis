# Lng-Device
## v1.1 
* �޸�dataToString ��ʽת��
* senseorDao��� findByProductIdAndDate�ӿڡ�����ʱ�䣬��Ʒid��ѯsensorData
## v1.2
* �޸�json���ء�faultType������ʾ��faultTybe���Ĵ���
## v1.3
* ErrorDeviceDao ��� getPreChangedErrorDevice()����ȡ�����Ĺ���ErrorDevice��list�������е�updateMan�ֶβ��յ�����
* �޸Ĳ��԰����ڻ�ȡsensorData�ĵ�Ԫ���� 
'Calendar ca = Calendar.getInstance();
   ca.set(2016, 11, 4);'  �����·�ʱ����1���·ݴ�0��ʼ
* �޸�sql�ļ�  ErrorDevice ��
* �޸� rechargeTime;//���һ�γ�ֵʱ�� �ֶ�����