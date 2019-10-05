.class public Lorg/codeaurora/ims/ImsConfigImplOem;
.super Ljava/lang/Object;
.source "ImsConfigImplOem.java"


# static fields
.field private static final DBG:Z = true

.field private static final HEADER_SIZE:I = 0x8

.field private static final IMS_SERVICES_DEFAULT_ALL:I = 0x3

.field private static final OEM_RIL_REQUEST_GET_IMS_SUPPORTED_SERVICES:I = 0x50030

.field private static final OEM_RIL_REQUEST_GET_SSAC_HYSTERESIS_TIMER:I = 0x5003c

.field private static final OEM_RIL_REQUEST_SET_SSAC_HYSTERESIS_TIMER:I = 0x5003d

.field private static final OEM_RIL_UNSOL_IMS_SUPPORTED_SERVICES_CHANGED:I = 0x40017

.field private static final OEM_RIL_UNSOL_MCFG_MBN_CHANGED:I = 0x40016

.field private static final OEM_RIL_UNSOL_REV_IP_TRANS_CHANGE:I = 0x40018

.field private static final RESPONSE_BUFFER_SIZE:I = 0x800

.field private static sOemInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsConfigImplOem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mImsSupportedServicesRetries:I

.field private mPhoneId:I

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mSubId:I

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V
    .locals 3
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneId"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 65
    const/4 v1, 0x0

    iput v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 292
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    .line 345
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 94
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 95
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    .line 96
    iput p3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 98
    .local v0, "subId":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 100
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsPhoneListenerController;->getInstance(Landroid/content/Context;)Lorg/codeaurora/ims/ImsPhoneListenerController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneListenerController;->start()V

    .line 101
    return-void
.end method

.method private addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "requestId"    # I
    .param p3, "requestSize"    # I

    .line 405
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 408
    const/high16 v0, 0xff0000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 409
    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 410
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 413
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 414
    return-void
.end method

.method private broadcastImsSupportedServices(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prev_value"    # I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastImsSupportedServices, ImsConfigItem=71, prev_value=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", new_value=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "item"

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prev_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 183
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B

    .line 417
    if-nez p1, :cond_0

    .line 418
    const/4 v0, 0x0

    return-object v0

    .line 419
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 421
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 423
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 424
    .local v2, "b":I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    aget-byte v4, p1, v1

    and-int/lit8 v2, v4, 0xf

    .line 426
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "bytes"    # [B

    .line 397
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 398
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 399
    return-object v0
.end method

.method private declared-synchronized getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 348
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 350
    .end local p0    # "this":Lorg/codeaurora/ims/ImsConfigImplOem;
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getImsSupportedServices()I
    .locals 9

    .line 255
    const/4 v0, 0x2

    .line 256
    .local v0, "RIL_E_GENERIC_FAILURE":I
    const/16 v1, 0x2e

    .line 258
    .local v1, "RIL_E_INVALID_MODEM_STATE":I
    const/4 v2, 0x3

    .line 259
    .local v2, "val":I
    const v3, 0x50030

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v3

    .line 261
    .local v3, "result":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getImsSupportedServices: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 263
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_7

    .line 264
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 265
    .local v4, "errorCode":I
    if-gez v4, :cond_0

    mul-int/lit8 v4, v4, -0x1

    .line 266
    :cond_0
    const/4 v6, 0x2

    if-ne v6, v4, :cond_2

    .line 267
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsEnabledByPlatform()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, -0x4

    :cond_1
    move v2, v5

    goto :goto_0

    .line 268
    :cond_2
    const/16 v5, 0x2e

    if-ne v5, v4, :cond_3

    .line 269
    const/4 v2, -0x4

    .line 271
    .end local v4    # "errorCode":I
    :cond_3
    :goto_0
    goto :goto_1

    .line 272
    :cond_4
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 273
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    .line 274
    .local v4, "buf":[B
    if-eqz v4, :cond_5

    array-length v6, v4

    const/16 v7, 0x10

    if-le v6, v7, :cond_5

    .line 275
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v7}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v6

    .line 276
    .local v5, "str":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getImsSupportedServices, raw str: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 277
    invoke-static {v5, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v2, v6

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getImsSupportedServices: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 280
    .end local v4    # "buf":[B
    .end local v5    # "str":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 281
    :cond_6
    const-string v4, "getImsSupportedServices gets null response from RIL"

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 284
    :cond_7
    :goto_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImplCache;->getInstance(I)Lorg/codeaurora/ims/ImsConfigImplCache;

    move-result-object v4

    .line 285
    .local v4, "configCache":Lorg/codeaurora/ims/ImsConfigImplCache;
    if-eqz v4, :cond_8

    .line 286
    const/16 v5, 0x47

    invoke-virtual {v4, v5, v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(II)V

    .line 289
    :cond_8
    return v2
.end method

.method public static getInstance(I)Lorg/codeaurora/ims/ImsConfigImplOem;
    .locals 3
    .param p0, "phoneId"    # I

    .line 72
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    monitor-exit v0

    return-object v1

    .line 77
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)Lorg/codeaurora/ims/ImsConfigImplOem;
    .locals 4
    .param p0, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 82
    sget-object v0, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    monitor-exit v0

    return-object v1

    .line 87
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)V

    .line 88
    .local v1, "oemImpl":Lorg/codeaurora/ims/ImsConfigImplOem;
    sget-object v2, Lorg/codeaurora/ims/ImsConfigImplOem;->sOemInstances:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v0

    return-object v1

    .line 90
    .end local v1    # "oemImpl":Lorg/codeaurora/ims/ImsConfigImplOem;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPhoneId()I
    .locals 1

    .line 499
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    return v0
.end method

.method private isCarrierConfigLoaded()Z
    .locals 3

    .line 155
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    const-string v2, "default_carrierconfig_loaded"

    invoke-static {v0, v1, v2}, Lorg/codeaurora/ims/ImsUtils;->getBooleanCarrierConfig(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 157
    .local v0, "bLoaded":Z
    if-nez v0, :cond_0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarrierConfigLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    .line 160
    :cond_0
    return v0
.end method

.method private isImsEnabledByPlatform()Z
    .locals 3

    .line 164
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtils;->isVolteEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mPhoneId:I

    .line 165
    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtils;->isWfcEnabledByPlatform(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 166
    .local v0, "bEnabled":Z
    :goto_1
    if-nez v0, :cond_2

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImsEnabledByPlatform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    .line 169
    :cond_2
    return v0
.end method

.method private isImsStackReady()Z
    .locals 3

    .line 147
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 148
    .local v0, "bReady":Z
    :goto_0
    if-nez v0, :cond_1

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImsStackReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 151
    :cond_1
    return v0
.end method

.method private isValidImsSupportedServicesValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 187
    const/4 v0, -0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method private refreshImsConfigCache()V
    .locals 10

    .line 294
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsEnabledByPlatform()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v0

    .line 299
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    return-void

    .line 302
    :cond_1
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 303
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    .line 304
    return-void

    .line 306
    :cond_2
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    if-ne v1, v0, :cond_3

    .line 307
    return-void

    .line 310
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshImsConfigCache, subId changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v1

    .line 312
    .local v1, "config":Lorg/codeaurora/ims/ImsConfigImpl;
    if-nez v1, :cond_4

    .line 313
    return-void

    .line 315
    :cond_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImplCache;->getInstance(I)Lorg/codeaurora/ims/ImsConfigImplCache;

    move-result-object v3

    .line 316
    .local v3, "configCache":Lorg/codeaurora/ims/ImsConfigImplCache;
    if-nez v3, :cond_5

    .line 317
    return-void

    .line 319
    :cond_5
    const/4 v4, 0x0

    .line 320
    .local v4, "item":I
    :goto_0
    const/16 v5, 0x47

    if-gt v4, v5, :cond_a

    .line 321
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 322
    goto :goto_1

    .line 324
    :cond_6
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v5

    const-string v6, " is changed: "

    const-string v7, "notifyProvisionedValueChanged, item "

    if-eqz v5, :cond_8

    .line 325
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfigInt(I)I

    move-result v5

    .line 326
    .local v5, "val_prev":I
    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v8

    .line 327
    .local v8, "value":I
    if-eq v8, v5, :cond_7

    .line 328
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1, v4, v8}, Lorg/codeaurora/ims/ImsConfigImpl;->notifyProvisionedValueChanged(II)V

    .line 332
    .end local v5    # "val_prev":I
    .end local v8    # "value":I
    :cond_7
    goto :goto_1

    .line 333
    :cond_8
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfig(I)Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "val_prev":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigString(I)Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 336
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1, v4, v8}, Lorg/codeaurora/ims/ImsConfigImpl;->notifyProvisionedValueChanged(ILjava/lang/String;)V

    .line 320
    .end local v5    # "val_prev":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_9
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 342
    .end local v4    # "item":I
    :cond_a
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mSubId:I

    .line 343
    return-void
.end method

.method private sendBroadcastForEpdgIndicator(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.internal.intent.action.EPDG_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 493
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcastForEpdgIndicator, isConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->logi(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method private sendMessage(I)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I

    .line 470
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 471
    .local v0, "request":[B
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 473
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 475
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendMessage(IS)Landroid/os/AsyncResult;
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # S

    .line 479
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 480
    .local v0, "request":[B
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->createBufferWithNativeByteOrder([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 482
    .local v1, "reqBuffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x2

    invoke-direct {p0, v1, p1, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->addRilOemHookHeader(Ljava/nio/ByteBuffer;II)V

    .line 483
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 485
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;

    move-result-object v2

    return-object v2
.end method

.method private sendRilOemHookMsg(I[B)Landroid/os/AsyncResult;
    .locals 8
    .param p1, "requestId"    # I
    .param p2, "request"    # [B

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 435
    new-instance v1, Landroid/os/RemoteException;

    const-string v3, "Cannot get Telephony Service"

    invoke-direct {v1, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 437
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 438
    return-object v0

    .line 441
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_0
    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 442
    .local v1, "response":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendQcRilOemHookMsg: Outgoing Data is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 445
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v4

    invoke-static {v3, v4}, Lorg/codeaurora/ims/ImsUtils;->getActiveSubIdForPhoneId(Landroid/content/Context;I)I

    move-result v3

    .line 446
    .local v3, "subId":I
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v3, p2, v1}, Landroid/telephony/TelephonyManager;->invokeOemRilRequestRaw(I[B[B)I

    move-result v4

    .line 447
    .local v4, "retVal":I
    if-ltz v4, :cond_2

    .line 448
    const/4 v5, 0x0

    .line 450
    .local v5, "validResponseBytes":[B
    if-lez v4, :cond_1

    .line 451
    new-array v5, v4, [B

    .line 452
    const/4 v6, 0x0

    invoke-static {v1, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response Data is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 454
    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response retVal = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 459
    :goto_0
    new-instance v6, Landroid/os/AsyncResult;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7, v5, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 460
    .end local v5    # "validResponseBytes":[B
    goto :goto_1

    .line 461
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMotoExtTelephonyMgr.sendOemRilRequestRaw returns "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 462
    new-instance v2, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 464
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v5, Landroid/os/AsyncResult;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, p2, v6, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 466
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method private updateImsServiceConfig()V
    .locals 3

    .line 135
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsStackReady()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isCarrierConfigLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 139
    .local v0, "bForce":Z
    monitor-enter p0

    .line 140
    :try_start_0
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .line 141
    iput v2, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v2

    invoke-static {v1, v2, v0}, Lorg/codeaurora/ims/ImsUtils;->sendUpdateImsServiceConfigRequest(Landroid/content/Context;IZ)V

    .line 144
    return-void

    .line 142
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 136
    .end local v0    # "bForce":Z
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getDomainName()Ljava/lang/String;
    .locals 2

    .line 356
    const-string v0, ""

    .line 357
    .local v0, "domain":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v0

    .line 360
    :cond_0
    return-object v0
.end method

.method public getImsSupportedServicesInCache()I
    .locals 5

    .line 242
    const/4 v0, -0x1

    .line 243
    .local v0, "value":I
    const/16 v1, 0x47

    .line 245
    .local v1, "item":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->getInstance(I)Lorg/codeaurora/ims/ImsConfigImplCache;

    move-result-object v2

    .line 246
    .local v2, "configCache":Lorg/codeaurora/ims/ImsConfigImplCache;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfigInt(I)I

    move-result v0

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImsSupportedServicesInCache: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 251
    :cond_0
    return v0
.end method

.method public getTVolteHysTimer()I
    .locals 6

    .line 365
    const/4 v0, -0x1

    .line 367
    .local v0, "val":S
    const v1, 0x5003c

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(I)Landroid/os/AsyncResult;

    move-result-object v1

    .line 369
    .local v1, "result":Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "getTVolteHysTimer: "

    if-eqz v2, :cond_0

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 372
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    .line 373
    .local v2, "buf":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 374
    .local v4, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 375
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 377
    .end local v2    # "buf":[B
    .end local v4    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 378
    :cond_1
    const-string v2, "getTVolteHysTimer gets null response from RIL"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 380
    :goto_0
    return v0
.end method

.method public handleOemHookRawEvent([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOemHookRawEvent, data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 106
    if-eqz p1, :cond_6

    array-length v0, p1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

    .line 111
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->isImsStackReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x4

    .line 116
    .local v0, "idx":I
    aget-byte v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 117
    .local v1, "msgId":I
    const v2, 0x40017

    if-ne v2, v1, :cond_2

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM_RIL_UNSOL_IMS_SUPPORTED_SERVICES_CHANGED = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    .line 120
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsSupportedServicesAndNotify()V

    goto :goto_1

    .line 121
    :cond_2
    const v2, 0x40016

    if-ne v2, v1, :cond_3

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM_RIL_UNSOL_MCFG_MBN_CHANGED = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    goto :goto_1

    .line 126
    :cond_3
    const v2, 0x40018

    if-ne v2, v1, :cond_5

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM_RIL_UNSOL_REV_IP_TRANS_CHANGE = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 128
    const/16 v2, 0xc

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 129
    .local v2, "isConnected":Z
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendBroadcastForEpdgIndicator(Z)V

    .line 132
    .end local v2    # "isConnected":Z
    :cond_5
    :goto_1
    return-void

    .line 107
    .end local v0    # "idx":I
    .end local v1    # "msgId":I
    :cond_6
    :goto_2
    const-string v0, "skip for invalid data"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public synthetic lambda$updateImsSupportedServicesAndNotify$0$ImsConfigImplOem()V
    .locals 6

    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getImsSupportedServicesInCache()I

    move-result v1

    .line 204
    .local v1, "prev_value":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getImsSupportedServices()I

    move-result v2

    .line 205
    .local v2, "value":I
    if-eq v2, v1, :cond_0

    .line 206
    invoke-direct {p0, v2, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->broadcastImsSupportedServices(II)V

    .line 209
    :cond_0
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->isValidImsSupportedServicesValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->refreshImsConfigCache()V

    .line 211
    nop

    .line 235
    .end local v1    # "prev_value":I
    .end local v2    # "value":I
    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-lez v1, :cond_1

    .line 236
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsServiceConfig()V

    .line 238
    :cond_1
    return-void

    .line 214
    .restart local v1    # "prev_value":I
    .restart local v2    # "value":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 215
    monitor-enter p0

    .line 216
    const/4 v3, 0x5

    if-lt v0, v3, :cond_3

    .line 217
    :try_start_0
    const-string v3, "getImsSupportedServices failed finally, no more retry"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 218
    const/4 v3, 0x0

    iput v3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 219
    monitor-exit p0

    return-void

    .line 222
    :cond_3
    iget v4, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    add-int/lit8 v4, v0, -0x1

    shl-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    goto :goto_1

    .line 225
    :catch_0
    move-exception v3

    .line 226
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateImsSupportedServices, InterruptedException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 228
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :goto_1
    iget v3, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-nez v3, :cond_4

    .line 229
    const-string v3, "exit updateImsSupportedServicesAndNotify thread for new request"

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 230
    monitor-exit p0

    return-void

    .line 232
    :cond_4
    monitor-exit p0

    .line 233
    .end local v1    # "prev_value":I
    .end local v2    # "value":I
    goto :goto_0

    .line 232
    .restart local v1    # "prev_value":I
    .restart local v2    # "value":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public setTVolteHysTimer(I)I
    .locals 4
    .param p1, "value"    # I

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTVolteHysTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 385
    const/4 v0, -0x1

    .line 386
    .local v0, "retval":I
    int-to-short v2, p1

    const v3, 0x5003d

    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsConfigImplOem;->sendMessage(IS)Landroid/os/AsyncResult;

    move-result-object v2

    .line 389
    .local v2, "result":Landroid/os/AsyncResult;
    iget-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImplOem;->loge(Ljava/lang/String;)V

    .line 393
    :cond_0
    return v0
.end method

.method public updateImsSupportedServicesAndNotify()V
    .locals 2

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    if-lez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter updateImsSupportedServicesAndNotify, mImsSupportedServicesRetries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->logd(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImplOem;->mImsSupportedServicesRetries:I

    .line 197
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 198
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/codeaurora/ims/-$$Lambda$ImsConfigImplOem$oehbF2Ay4egetEcoBFMiDAC3fhk;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/-$$Lambda$ImsConfigImplOem$oehbF2Ay4egetEcoBFMiDAC3fhk;-><init>(Lorg/codeaurora/ims/ImsConfigImplOem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 239
    return-void

    .line 198
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
