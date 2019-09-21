.class public Lorg/codeaurora/ims/ImsConfigImplCache;
.super Ljava/lang/Object;
.source "ImsConfigImplCache.java"


# static fields
.field private static final DBG:Z = false

.field private static sCacheInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsConfigImplCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

.field private mContext:Landroid/content/Context;

.field private mImsConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImsFeatureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/Context;I)V
    .locals 1
    .param p1, "configImpl"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 56
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mContext:Landroid/content/Context;

    .line 57
    iput p3, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mPhoneId:I

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.method public static getConfigString(I)Ljava/lang/String;
    .locals 1
    .param p0, "item"    # I

    .line 243
    packed-switch p0, :pswitch_data_0

    .line 387
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :pswitch_1
    const-string v0, "IMS_MCFG_SUPPORTED_SERVICES"

    return-object v0

    .line 381
    :pswitch_2
    const-string v0, "VOICE_OVER_WIFI_MDN"

    return-object v0

    .line 379
    :pswitch_3
    const-string v0, "E911_FAILOVER_TIMER"

    return-object v0

    .line 377
    :pswitch_4
    const-string v0, "TVOLTE_HYS_TIMER"

    return-object v0

    .line 375
    :pswitch_5
    const-string v0, "VICE_SETTING_ENABLED"

    return-object v0

    .line 373
    :pswitch_6
    const-string v0, "T_EPDG_1X"

    return-object v0

    .line 371
    :pswitch_7
    const-string v0, "T_EPDG_WIFI"

    return-object v0

    .line 369
    :pswitch_8
    const-string v0, "T_EPDG_LTE"

    return-object v0

    .line 367
    :pswitch_9
    const-string v0, "VOWT_B"

    return-object v0

    .line 365
    :pswitch_a
    const-string v0, "VOWT_A"

    return-object v0

    .line 363
    :pswitch_b
    const-string v0, "TH_1x"

    return-object v0

    .line 361
    :pswitch_c
    const-string v0, "TH_LTE3"

    return-object v0

    .line 359
    :pswitch_d
    const-string v0, "TH_LTE2"

    return-object v0

    .line 357
    :pswitch_e
    const-string v0, "TH_LTE1"

    return-object v0

    .line 355
    :pswitch_f
    const-string v0, "VIDEO_QUALITY"

    return-object v0

    .line 353
    :pswitch_10
    const-string v0, "SMS_PSI"

    return-object v0

    .line 351
    :pswitch_11
    const-string v0, "AMR_DEFAULT_MODE"

    return-object v0

    .line 349
    :pswitch_12
    const-string v0, "DTMF_NB_PT"

    return-object v0

    .line 347
    :pswitch_13
    const-string v0, "DTMF_WB_PT"

    return-object v0

    .line 345
    :pswitch_14
    const-string v0, "AMR_BANDWIDTH_EFFICIENT_PT"

    return-object v0

    .line 343
    :pswitch_15
    const-string v0, "AMR_OCTET_ALIGNED_PT"

    return-object v0

    .line 341
    :pswitch_16
    const-string v0, "AMR_WB_BANDWIDTH_EFFICIENT_PT"

    return-object v0

    .line 339
    :pswitch_17
    const-string v0, "AMR_WB_OCTET_ALIGNED_PT"

    return-object v0

    .line 337
    :pswitch_18
    const-string v0, "SIP_NON_INVITE_RSP_RETX_WAIT_TIME_MSEC"

    return-object v0

    .line 335
    :pswitch_19
    const-string v0, "SIP_NON_INVITE_REQ_RETX_WAIT_TIME_MSEC"

    return-object v0

    .line 333
    :pswitch_1a
    const-string v0, "SIP_ACK_RETX_WAIT_TIME_MSEC"

    return-object v0

    .line 331
    :pswitch_1b
    const-string v0, "SIP_ACK_RECEIPT_WAIT_TIME_MSEC"

    return-object v0

    .line 329
    :pswitch_1c
    const-string v0, "SIP_INVITE_RSP_RETX_INTERVAL_MSEC"

    return-object v0

    .line 327
    :pswitch_1d
    const-string v0, "SIP_NON_INVITE_TXN_TIMEOUT_TIMER_MSEC"

    return-object v0

    .line 325
    :pswitch_1e
    const-string v0, "SIP_NON_INVITE_REQ_RETX_INTERVAL_MSEC"

    return-object v0

    .line 323
    :pswitch_1f
    const-string v0, "SIP_INVITE_RSP_RETX_WAIT_TIME_MSEC"

    return-object v0

    .line 321
    :pswitch_20
    const-string v0, "SIP_INVITE_RSP_WAIT_TIME_MSEC"

    return-object v0

    .line 319
    :pswitch_21
    const-string v0, "SIP_INVITE_REQ_RETX_INTERVAL_MSEC"

    return-object v0

    .line 317
    :pswitch_22
    const-string v0, "SPEECH_END_PORT"

    return-object v0

    .line 315
    :pswitch_23
    const-string v0, "SPEECH_START_PORT"

    return-object v0

    .line 313
    :pswitch_24
    const-string v0, "REGISTRATION_RETRY_MAX_TIME_SEC"

    return-object v0

    .line 311
    :pswitch_25
    const-string v0, "REGISTRATION_RETRY_BASE_TIME_SEC"

    return-object v0

    .line 309
    :pswitch_26
    const-string v0, "KEEP_ALIVE_ENABLED"

    return-object v0

    .line 307
    :pswitch_27
    const-string v0, "LBO_PCSCF_ADDRESS"

    return-object v0

    .line 305
    :pswitch_28
    const-string v0, "VOLTE_USER_OPT_IN_STATUS"

    return-object v0

    .line 303
    :pswitch_29
    const-string v0, "MOBILE_DATA_ENABLED"

    return-object v0

    .line 301
    :pswitch_2a
    const-string v0, "VOICE_OVER_WIFI_SETTING_ENABLED"

    return-object v0

    .line 299
    :pswitch_2b
    const-string v0, "VOICE_OVER_WIFI_MODE"

    return-object v0

    .line 297
    :pswitch_2c
    const-string v0, "VOICE_OVER_WIFI_ROAMING"

    return-object v0

    .line 295
    :pswitch_2d
    const-string v0, "EAB_SETTING_ENABLED"

    return-object v0

    .line 293
    :pswitch_2e
    const-string v0, "GZIP_FLAG"

    return-object v0

    .line 291
    :pswitch_2f
    const-string v0, "CAPAB_POLL_LIST_SUB_EXP"

    return-object v0

    .line 289
    :pswitch_30
    const-string v0, "MAX_NUMENTRIES_IN_RCL"

    return-object v0

    .line 287
    :pswitch_31
    const-string v0, "SOURCE_THROTTLE_PUBLISH"

    return-object v0

    .line 285
    :pswitch_32
    const-string v0, "CAPABILITIES_POLL_INTERVAL"

    return-object v0

    .line 283
    :pswitch_33
    const-string v0, "AVAILABILITY_CACHE_EXPIRATION"

    return-object v0

    .line 281
    :pswitch_34
    const-string v0, "CAPABILITIES_CACHE_EXPIRATION"

    return-object v0

    .line 279
    :pswitch_35
    const-string v0, "CAPABILITY_DISCOVERY_ENABLED"

    return-object v0

    .line 277
    :pswitch_36
    const-string v0, "PUBLISH_TIMER_EXTENDED"

    return-object v0

    .line 275
    :pswitch_37
    const-string v0, "PUBLISH_TIMER"

    return-object v0

    .line 273
    :pswitch_38
    const-string v0, "SMS_OVER_IP"

    return-object v0

    .line 271
    :pswitch_39
    const-string v0, "SMS_FORMAT"

    return-object v0

    .line 269
    :pswitch_3a
    const-string v0, "DOMAIN_NAME"

    return-object v0

    .line 267
    :pswitch_3b
    const-string v0, "LVC_SETTING_ENABLED"

    return-object v0

    .line 265
    :pswitch_3c
    const-string v0, "VLT_SETTING_ENABLED"

    return-object v0

    .line 263
    :pswitch_3d
    const-string v0, "SIP_TF_TIMER"

    return-object v0

    .line 261
    :pswitch_3e
    const-string v0, "SIP_T2_TIMER"

    return-object v0

    .line 259
    :pswitch_3f
    const-string v0, "SIP_T1_TIMER"

    return-object v0

    .line 257
    :pswitch_40
    const-string v0, "SILENT_REDIAL_ENABLE"

    return-object v0

    .line 255
    :pswitch_41
    const-string v0, "TDELAY"

    return-object v0

    .line 253
    :pswitch_42
    const-string v0, "CANCELLATION_TIMER"

    return-object v0

    .line 251
    :pswitch_43
    const-string v0, "MIN_SE"

    return-object v0

    .line 249
    :pswitch_44
    const-string v0, "SIP_SESSION_TIMER"

    return-object v0

    .line 247
    :pswitch_45
    const-string v0, "VOCODER_AMRWBMODESET"

    return-object v0

    .line 245
    :pswitch_46
    const-string v0, "VOCODER_AMRMODESET"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getFeatureString(I)Ljava/lang/String;
    .locals 1
    .param p0, "feature"    # I

    .line 221
    packed-switch p0, :pswitch_data_0

    .line 239
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
    :pswitch_0
    const-string v0, "UT_OVER_WIFI"

    return-object v0

    .line 233
    :pswitch_1
    const-string v0, "UT_OVER_LTE"

    return-object v0

    .line 231
    :pswitch_2
    const-string v0, "VIDEO_OVER_WIFI"

    return-object v0

    .line 229
    :pswitch_3
    const-string v0, "VOICE_OVER_WIFI"

    return-object v0

    .line 227
    :pswitch_4
    const-string v0, "VIDEO_OVER_LTE"

    return-object v0

    .line 225
    :pswitch_5
    const-string v0, "VOICE_OVER_LTE"

    return-object v0

    .line 223
    :pswitch_6
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getImsFeature(I)Z
    .locals 3
    .param p1, "feature"    # I

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "value":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 111
    .local v1, "bObject":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 115
    :cond_0
    return v0
.end method

.method public static getInstance(I)Lorg/codeaurora/ims/ImsConfigImplCache;
    .locals 3
    .param p0, "phoneId"    # I

    .line 33
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImplCache;

    monitor-exit v0

    return-object v1

    .line 38
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/Context;I)Lorg/codeaurora/ims/ImsConfigImplCache;
    .locals 4
    .param p0, "configImpl"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 43
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImplCache;

    monitor-exit v0

    return-object v1

    .line 48
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImplCache;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/Context;I)V

    .line 49
    .local v1, "cache":Lorg/codeaurora/ims/ImsConfigImplCache;
    sget-object v2, Lorg/codeaurora/ims/ImsConfigImplCache;->sCacheInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    monitor-exit v0

    return-object v1

    .line 51
    .end local v1    # "cache":Lorg/codeaurora/ims/ImsConfigImplCache;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private setImsFeature(IZ)V
    .locals 6
    .param p1, "feature"    # I
    .param p2, "value"    # Z

    .line 82
    const/4 v0, -0x1

    .line 83
    .local v0, "prev_value":I
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsFeatureExist(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsFeature(I)Z

    move-result v1

    move v0, v1

    .line 87
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v1, -0x1

    const-string v2, ", name="

    const-string v3, ", value="

    if-ne v0, v1, :cond_1

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsFeature: new feature="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getFeatureString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplCache;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 94
    .local v1, "bvalue":Z
    :goto_0
    if-eq v1, p2, :cond_3

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setImsFeature: update feature="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getFeatureString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->logi(Ljava/lang/String;)V

    .line 105
    .end local v1    # "bvalue":Z
    :goto_1
    return-void

    .line 98
    .restart local v1    # "bvalue":Z
    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 65
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 66
    return-void
.end method

.method public getImsConfig(I)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I

    .line 139
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 141
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v1

    .line 143
    .local v1, "val_int":I
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .end local v1    # "val_int":I
    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mConfigImpl:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(ILjava/lang/String;)V

    .line 149
    :cond_1
    return-object v0
.end method

.method public getImsConfigInt(I)I
    .locals 3
    .param p1, "item"    # I

    .line 123
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfig(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "str":Ljava/lang/String;
    const/4 v1, -0x1

    .line 127
    .local v1, "value":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 129
    goto :goto_0

    .line 128
    :catch_0
    move-exception v2

    .line 131
    :goto_0
    return v1
.end method

.method public getImsFeatureInt(I)I
    .locals 1
    .param p1, "feature"    # I

    .line 77
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsFeature(I)Z

    move-result v0

    .line 78
    .local v0, "value":Z
    return v0
.end method

.method public isImsConfigExist(I)Z
    .locals 2
    .param p1, "item"    # I

    .line 119
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isImsFeatureExist(I)Z
    .locals 2
    .param p1, "feature"    # I

    .line 69
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setImsConfig(II)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 135
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(ILjava/lang/String;)V

    .line 136
    return-void
.end method

.method public setImsConfig(ILjava/lang/String;)V
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 154
    if-nez p2, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsConfig: value is null string for item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    const-string p2, ""

    .line 160
    :cond_0
    const/4 v0, 0x0

    .line 161
    .local v0, "prev_value":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfig(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, ", name="

    const-string v2, ", value="

    if-nez v0, :cond_2

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsConfig: new item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getConfigString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplCache;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setImsConfig: update item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getConfigString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplCache;->logi(Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_3
    return-void
.end method

.method public setImsFeatureInt(II)V
    .locals 1
    .param p1, "feature"    # I
    .param p2, "value"    # I

    .line 73
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsFeature(IZ)V

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ImsConfigImplCache\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "\tImsFeatureCache\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance v1, Ljava/util/TreeMap;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsFeatureMap:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 201
    .local v1, "featureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\n"

    const-string v5, ", name="

    const-string v6, ", value="

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 202
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const-string v7, "\t\tFeature="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImplCache;->getFeatureString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 208
    :cond_0
    const-string v2, "\tImsConfigCache\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImplCache;->mImsConfigMap:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 210
    .local v2, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 211
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v8, "\t\tItem="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lorg/codeaurora/ims/ImsConfigImplCache;->getConfigString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_1

    .line 217
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
