.class public Lorg/codeaurora/ims/ImsConfigItem;
.super Ljava/lang/Object;
.source "ImsConfigItem.java"


# static fields
.field public static final AMR_BANDWIDTH_EFFICIENT_PT:I = 0x35

.field public static final AMR_DEFAULT_MODE:I = 0x38

.field public static final AMR_OCTET_ALIGNED_PT:I = 0x34

.field public static final AMR_WB_BANDWIDTH_EFFICIENT_PT:I = 0x33

.field public static final AMR_WB_OCTET_ALIGNED_PT:I = 0x32

.field public static final AUTO_REJECT_CALL_MODE:I = 0x4a

.field public static final AVAILABILITY_CACHE_EXPIRATION:I = 0x13

.field public static final CANCELLATION_TIMER:I = 0x5

.field public static final CAPABILITIES_CACHE_EXPIRATION:I = 0x12

.field public static final CAPABILITIES_POLL_INTERVAL:I = 0x14

.field public static final CAPABILITY_DISCOVERY_ENABLED:I = 0x1e

.field public static final CAPAB_POLL_LIST_SUB_EXP:I = 0x17

.field public static final DOMAIN_NAME:I = 0xd

.field public static final DTMF_NB_PT:I = 0x37

.field public static final DTMF_WB_PT:I = 0x36

.field public static final EAB_SETTING_ENABLED:I = 0x19

.field public static final EMERGENCY_CALL_TIMER:I = 0x1f

.field public static final FILE_NOT_AVAILABLE:I = 0x2

.field public static final GZIP_FLAG:I = 0x18

.field public static final IMS_NOT_READY:I = 0x1

.field public static final KEEP_ALIVE_ENABLED:I = 0x23

.field public static final LBO_PCSCF_ADDRESS:I = 0x22

.field public static final LVC_SETTING_ENABLED:I = 0xc

.field public static final MAX_NUM_ENTRIES_IN_RCL:I = 0x16

.field public static final MIN_SESSION_EXPIRY:I = 0x4

.field public static final MOBILE_DATA_ENABLED:I = 0x1a

.field public static final NONE:I = 0x0

.field public static final NO_ERR:I = 0x0

.field public static final OTHER_INTERNAL_ERR:I = 0x5

.field public static final PUBLISH_TIMER:I = 0x10

.field public static final PUBLISH_TIMER_EXTENDED:I = 0x11

.field public static final READ_FAILED:I = 0x3

.field public static final REGISTRATION_RETRY_BASE_TIME_SEC:I = 0x24

.field public static final REGISTRATION_RETRY_MAX_TIME_SEC:I = 0x25

.field public static final RTT_SETTING_ENABLED:I = 0x46

.field public static final SILENT_REDIAL_ENABLE:I = 0x7

.field public static final SIP_ACK_RECEIPT_WAIT_TIME_MSEC:I = 0x2e

.field public static final SIP_ACK_RETX_WAIT_TIME_MSEC:I = 0x2f

.field public static final SIP_INVITE_REQ_RETX_INTERVAL_MSEC:I = 0x28

.field public static final SIP_INVITE_RSP_RETX_INTERVAL_MSEC:I = 0x2d

.field public static final SIP_INVITE_RSP_RETX_WAIT_TIME_MSEC:I = 0x2a

.field public static final SIP_INVITE_RSP_WAIT_TIME_MSEC:I = 0x29

.field public static final SIP_NON_INVITE_REQ_RETX_INTERVAL_MSEC:I = 0x2b

.field public static final SIP_NON_INVITE_REQ_RETX_WAIT_TIME_MSEC:I = 0x30

.field public static final SIP_NON_INVITE_RSP_RETX_WAIT_TIME_MSEC:I = 0x31

.field public static final SIP_NON_INVITE_TXN_TIMEOUT_TIMER_MSEC:I = 0x2c

.field public static final SIP_SESSION_TIMER:I = 0x3

.field public static final SIP_T1_TIMER:I = 0x8

.field public static final SIP_T2_TIMER:I = 0x9

.field public static final SIP_TF_TIMER:I = 0xa

.field public static final SMS_APP:I = 0x47

.field public static final SMS_FORMAT:I = 0xe

.field public static final SMS_OVER_IP:I = 0xf

.field public static final SMS_PSI:I = 0x39

.field public static final SOURCE_THROTTLE_PUBLISH:I = 0x15

.field public static final SPEECH_END_PORT:I = 0x27

.field public static final SPEECH_START_PORT:I = 0x26

.field public static final SSAC_HYSTERESIS_TIMER:I = 0x20

.field public static final THRESHOLD_1x:I = 0x3e

.field public static final THRESHOLD_LTE1:I = 0x3b

.field public static final THRESHOLD_LTE2:I = 0x3c

.field public static final THRESHOLD_LTE3:I = 0x3d

.field public static final THRESHOLD_WIFI_A:I = 0x3f

.field public static final THRESHOLD_WIFI_B:I = 0x40

.field public static final T_DELAY:I = 0x6

.field public static final T_EPDG_1x:I = 0x43

.field public static final T_EPDG_LTE:I = 0x41

.field public static final T_EPDG_WIFI:I = 0x42

.field public static final VCE_SETTING_ENABLED:I = 0x45

.field public static final VIDEO_QUALITY:I = 0x3a

.field public static final VLT_SETTING_ENABLED:I = 0xb

.field public static final VOCODER_AMRMODESET:I = 0x1

.field public static final VOCODER_AMRWBMODESET:I = 0x2

.field public static final VOICE_OVER_WIFI_ENABLED:I = 0x1b

.field public static final VOICE_OVER_WIFI_MDN:I = 0x4b

.field public static final VOICE_OVER_WIFI_MODE:I = 0x1d

.field public static final VOICE_OVER_WIFI_ROAMING:I = 0x1c

.field public static final VOICE_OVER_WIFI_ROAMING_MODE:I = 0x49

.field public static final VOLTE_PREF_DISABLED:I = 0x0

.field public static final VOLTE_PREF_ENABLED:I = 0x1

.field public static final VOLTE_PREF_UNKNOWN:I = 0x2

.field public static final VOLTE_USER_OPT_IN_STATUS:I = 0x21

.field public static final VVM_APP:I = 0x48

.field public static final VWF_SETTING_ENABLED:I = 0x44

.field public static final WRITE_FAILED:I = 0x4


# instance fields
.field private mBoolValue:Z

.field private mErrorCause:I

.field private mIntValue:I

.field private mItem:I

.field private mStringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigItem;->mItem:I

    .line 647
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigItem;->mBoolValue:Z

    .line 648
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigItem;->mIntValue:I

    .line 649
    const-string v1, ""

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigItem;->mStringValue:Ljava/lang/String;

    .line 650
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigItem;->mErrorCause:I

    .line 651
    return-void
.end method


# virtual methods
.method public setBoolValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 658
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigItem;->mBoolValue:Z

    .line 659
    return-void
.end method

.method public setErrorCause(I)V
    .locals 0
    .param p1, "value"    # I

    .line 670
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigItem;->mErrorCause:I

    .line 671
    return-void
.end method

.method public setIntValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 662
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigItem;->mIntValue:I

    .line 663
    return-void
.end method

.method public setItem(I)V
    .locals 0
    .param p1, "value"    # I

    .line 654
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigItem;->mItem:I

    .line 655
    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 666
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigItem;->mStringValue:Ljava/lang/String;

    .line 667
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsConfigItem item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigItem;->mItem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " boolValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigItem;->mBoolValue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " intValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigItem;->mIntValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stringValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigItem;->mStringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorCause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigItem;->mErrorCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
