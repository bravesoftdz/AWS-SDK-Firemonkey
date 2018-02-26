unit AWS.IoT.Comm;

interface

uses
  System.SysUtils,
  System.Generics.Collections,
  AWS.Core;

type



  TAWSIoTMQTTQoS = (AWSIoTMQTTQoSMessageDeliveryAttemptedAtMostOnce, AWSIoTMQTTQoSMessageDeliveryAttemptedAtLeastOnce);
                    //���һ�� ������һ��
  TAWSIotMqttClientStatus = (AWSIotMqttUnknown, AWSIotMqttConnecting, AWSIotMqttConnected, AWSIotMqttConnectionLost, AWSIotMqttReconnecting, AWSIotMqttConnectionError, AWSIotMqttProtocolError);

  TOnAWSIoTMQTTNewMessage = procedure(NewMessage:string) of object;

  TOnAWSIotMqttClientStatus = procedure(Status:TAWSIotMqttClientStatus) of object;
  /// <summary> AWS IoT Service Configuration </summary>
  /// <summary> Android ƾ֤ Keystore </summary>
  /// <summary> Android ƾ֤ P12 </summary>
  TAWSIoTServiceConfiguration = record
    /// <summary> Service CognitoIdentity ƾ֤ </summary>
    CognitoIdentityPoolId:string;
    /// <summary> Service Iot endpoint �ڵ�</summary>
    IoT_EndPoint:string;
    /// <summary> Service Data Key ����Key</summary>
    DataManagerKey:string;
    /// <summary> Service Region ����</summary>
    Region:TAWSAWSRegionType;
  {$IFDEF iOS}
    /// <summary> Service P12 File Path P12�ļ�·��</summary>
    P12FilePath:string;
    /// <summary> Service P12 PassPhrase P12����</summary>
    P12PassPhrase:string;
  {$ENDIF}
  {$IFDEF Android}
    /// <summary> Service Keystore File Path Keystore�ļ�·��</summary>
    KeystoreFilePath:string;
    /// <summary> Service Keystore PassPhrase Keystore�ļ�����</summary>
    KeystoreName:string;
    /// <summary> Service Keystore PassPhrase Keystore����</summary>
    KeystorePassword:string;
    /// <summary> Service Keystore Certificate and aliases</summary>
    CertificateId:string;
  {$ENDIF}
  end;
  /// <summary> AWS IoT Topic Configuration </summary>
  TAWSIoTTopicConfiguration = record
    /// <summary> AWS IoT Topic ���� </summary>
    Topic:string;
    /// <summary> AWS IoT Topic Qos ���� </summary>
    Qos:TAWSIoTMQTTQoS;
  end;



implementation



end.
