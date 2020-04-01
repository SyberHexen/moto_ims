.class public Lcom/qualcomm/ims/vt/LowBatteryHandler;
.super Ljava/lang/Object;
.source "LowBatteryHandler.java"

# interfaces
.implements Lorg/codeaurora/ims/ICallListListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;


# instance fields
.field private final isCarrierOneSupported:Z

.field private mBatteryLevel:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIsLowBattery:Z

.field private mPhoneId:I

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "VideoCall_LowBattery"

    sput-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 4
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    .line 41
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mPhoneId:I

    .line 110
    new-instance v0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;-><init>(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    .line 45
    iput-object p2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    .line 46
    iput-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 47
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mPhoneId:I

    .line 48
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/ims/vt/LowBatteryHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 34
    iget v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mPhoneId:I

    return v0
.end method

.method static synthetic access$100(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 34
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 34
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    return v0
.end method

.method static synthetic access$202(Lcom/qualcomm/ims/vt/LowBatteryHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;
    .param p1, "x1"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    return p1
.end method

.method static synthetic access$300(Lcom/qualcomm/ims/vt/LowBatteryHandler;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 34
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 34
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->disconnectVideoCalls()V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 34
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    return v0
.end method

.method static synthetic access$700(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 34
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->updateLowBatteryStatus()V

    return-void
.end method

.method private disconnectVideoCalls()V
    .locals 2

    .line 197
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    const-string v1, "disconnectVideoCalls "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->disconnectVideoCalls(Lorg/codeaurora/ims/DriverCallIms$State;)V

    .line 199
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->disconnectVideoCalls(Lorg/codeaurora/ims/DriverCallIms$State;)V

    .line 200
    return-void
.end method

.method private disconnectVideoCalls(Lorg/codeaurora/ims/DriverCallIms$State;)V
    .locals 5
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;

    .line 206
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 207
    .local v1, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    sget-object v2, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectVideoCalls session : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const/16 v2, 0x1f9

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->terminate(I)V

    .line 211
    .end local v1    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 212
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;
    .locals 3

    const-class v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 103
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "LowBatteryHandler: Not initialized"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)Lcom/qualcomm/ims/vt/LowBatteryHandler;
    .locals 3
    .param p0, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p1, "context"    # Landroid/content/Context;

    const-class v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;-><init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 84
    sget-object v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 82
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "LowBatteryHandler: Multiple initialization"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local p0    # "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isLowBattery(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 166
    const-string v0, "level"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, "batteryLevel":I
    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateLowBatteryStatus()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->updateLowBatteryStatus()V

    .line 191
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 88
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    const-string v1, "dispose()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-class v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    const/4 v1, 0x0

    sput-object v1, Lcom/qualcomm/ims/vt/LowBatteryHandler;->sInstance:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 92
    monitor-exit v0

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLowBattery()Z
    .locals 2

    .line 179
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mPhoneId:I

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    .line 180
    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    return v0
.end method

.method public onActiveSubChanged(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 4
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 56
    if-nez p1, :cond_0

    .line 57
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    const-string v1, "setActiveSub: serviceSub is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 63
    iput-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mPhoneId:I

    .line 65
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mBatteryLevel:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    :cond_1
    return-void
.end method

.method public onCallSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 134
    sget-object v0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallSessionAdded callSession = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isCarrierOneSupported:Z

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mIsLowBattery:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 142
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 143
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/16 v2, 0x1f5

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->terminate(I)V

    .line 154
    .end local v0    # "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    return-void
.end method

.method public onCallSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0
    .param p1, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 159
    return-void
.end method
