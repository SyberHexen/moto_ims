.class public Lcom/qualcomm/ims/vt/ImsVideoGlobals;
.super Ljava/lang/Object;
.source "ImsVideoGlobals.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;


# instance fields
.field private mActivePhoneId:I

.field private mCameraController:Lcom/qualcomm/ims/vt/CameraController;

.field private mContext:Landroid/content/Context;

.field private mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

.field private mMediaController:Lcom/qualcomm/ims/vt/MediaController;

.field private mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "VideoCall_ImsVideoGlobals"

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    return-void
.end method

.method private constructor <init>([Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 5
    .param p1, "serviceSubs"    # [Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mActivePhoneId:I

    .line 85
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 87
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setActivePhoneId(I)V

    .line 89
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/qualcomm/ims/vt/CameraController;->init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)Lcom/qualcomm/ims/vt/CameraController;

    .line 91
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/qualcomm/ims/vt/MediaController;->init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 92
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 94
    invoke-static {}, Lcom/qualcomm/ims/vt/CameraController;->getInstance()Lcom/qualcomm/ims/vt/CameraController;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    .line 95
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    .line 96
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 97
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 98
    .local v3, "sub":Lorg/codeaurora/ims/ImsServiceSub;
    iget-object v4, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 97
    .end local v3    # "sub":Lorg/codeaurora/ims/ImsServiceSub;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method private getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    iget v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mActivePhoneId:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 165
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    .locals 3

    const-class v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 49
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ImsVideoGlobals: getInstance called before init."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init([Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 3
    .param p0, "serviceSubArr"    # [Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "context"    # Landroid/content/Context;

    const-class v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    monitor-enter v0

    .line 32
    if-eqz p0, :cond_1

    :try_start_0
    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v1, p0, v1

    if-eqz v1, :cond_1

    .line 36
    sget-object v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;-><init>([Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    goto :goto_0

    .line 41
    :cond_0
    const-string v1, "init ignored!"

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :goto_0
    monitor-exit v0

    return-void

    .line 33
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Default subscription is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .end local p0    # "serviceSubArr":[Lorg/codeaurora/ims/ImsServiceSub;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 215
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method private setActivePhoneId(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 107
    iput p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mActivePhoneId:I

    .line 108
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 6

    .line 55
    const-string v0, "dispose()"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 56
    const-class v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 58
    .local v4, "sub":Lorg/codeaurora/ims/ImsServiceSub;
    iget-object v5, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsServiceSub;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 57
    .end local v4    # "sub":Lorg/codeaurora/ims/ImsServiceSub;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 61
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/CameraController;->dispose()V

    .line 62
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/MediaController;->dispose()V

    .line 63
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->dispose()V

    .line 64
    const/4 v1, 0x0

    sput-object v1, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method findSessionbyMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1
    .param p1, "mediaId"    # I

    .line 200
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1
    .param p1, "mediaId"    # I

    .line 205
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    .line 112
    nop

    .line 113
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple Active Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method getActiveCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getActiveOrBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 158
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 161
    :cond_0
    return-object v0
.end method

.method getActiveOrBackgroundCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveOrBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getActiveOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 149
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 152
    :cond_0
    return-object v0
.end method

.method getActiveOrOutgoingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    .line 140
    nop

    .line 141
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple Background Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method getBackgroundCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getBackgroundCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getCameraController()Lcom/qualcomm/ims/vt/CameraController;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    return-object v0
.end method

.method getIncomingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    .line 132
    nop

    .line 133
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple Incoming Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 135
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method getIncomingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getIncomingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getMediaController()Lcom/qualcomm/ims/vt/MediaController;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    return-object v0
.end method

.method getOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    .line 120
    nop

    .line 121
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 126
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple Outgoing Calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 127
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method

.method getOutgoingCallVideoProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public setPhoneIdWithActiveCall(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneIdWithActiveCall, phoneId # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 71
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setActivePhoneId(I)V

    .line 80
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->onActiveSubChanged(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 81
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getActiveServiceSub()Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 82
    return-void

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid phoneId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
