.class public Lorg/codeaurora/ims/ImsConfigImpl;
.super Landroid/telephony/ims/stub/ImsConfigImplBase;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;,
        Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;,
        Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;,
        Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;
    }
.end annotation


# static fields
.field private static final BROADCAST_PERMISSION:Ljava/lang/String; = "android.permission.READ_PRIVILEGED_PHONE_STATE"

.field private static final DEFAULT_WFC_MDN:Ljava/lang/String; = "0"

.field private static final EVENT_ACCESS_PROVISIONED_VAL:I = 0x1

.field private static final EVENT_SET_FEATURE_VALUE:I = 0x2


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

.field private mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private mIsCarrierConfigLoaded:Z

.field private mIsContentObserversRegistered:Z

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestHandler:Landroid/os/Handler;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mSubId:I

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mVoWiFiModeObserver:Landroid/database/ContentObserver;

.field private mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

.field private mVolteProvisionFlag:I

.field private mWfcModeUri:Landroid/net/Uri;

.field private mWfcRoamingModeUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 5
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    .line 55
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    .line 62
    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 63
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 65
    const-string v1, "android.permission.READ_PHONE_STATE"

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 70
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$1;

    new-instance v2, Landroid/os/Handler;

    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$1;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    .line 77
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$2;

    new-instance v2, Landroid/os/Handler;

    .line 78
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$2;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    .line 85
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$3;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$3;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$4;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$4;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 862
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$8;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConfigImpl$8;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 993
    iput v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVolteProvisionFlag:I

    .line 114
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 115
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 116
    iput-object p3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 117
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ImsConfigImplHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 119
    new-instance v1, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsConfigImpl$ImsConfigImplHandler;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    .line 120
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/codeaurora/ims/ImsConfigImplOem;->getInstance(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;I)Lorg/codeaurora/ims/ImsConfigImplOem;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    .line 121
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v2

    invoke-static {p0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->getInstance(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/content/Context;I)Lorg/codeaurora/ims/ImsConfigImplCache;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    .line 123
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 125
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v1, :cond_0

    .line 126
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    goto :goto_0

    .line 128
    :cond_0
    const-string v1, "unable to listen for subscription changed due to subscriptionManager is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ImsConfigImplRequestHandler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "reqeustHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    return v0
.end method

.method static synthetic access$002(Lorg/codeaurora/ims/ImsConfigImpl;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubId:I

    return p1
.end method

.method static synthetic access$1000(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 41
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcRoamingModeUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$102(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/codeaurora/ims/ImsConfigImpl;II)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequest(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 41
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->onSetFeatureResponseDone(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/codeaurora/ims/ImsConfigImpl;Lorg/codeaurora/telephony/utils/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;
    .param p2, "x2"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->onAccessProvisionedValDone(Lorg/codeaurora/telephony/utils/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lorg/codeaurora/ims/ImsConfigImpl;I)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # I

    .line 41
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getSubId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/codeaurora/ims/ImsConfigImpl;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # I

    .line 41
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getWfcMDN(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcMDN()V

    return-void
.end method

.method static synthetic access$1800(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->setVolteProvisioningEnabled()V

    return-void
.end method

.method static synthetic access$1900(Lorg/codeaurora/ims/ImsConfigImpl;)I
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    iget v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVolteProvisionFlag:I

    return v0
.end method

.method static synthetic access$1902(Lorg/codeaurora/ims/ImsConfigImpl;I)I
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # I

    .line 41
    iput p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVolteProvisionFlag:I

    return p1
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    return-object v0
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsConfigImpl;)Z
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    return v0
.end method

.method static synthetic access$402(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Z

    .line 41
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsContentObserversRegistered:Z

    return p1
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiModeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mVoWiFiRoamingModeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-object v0
.end method

.method static synthetic access$802(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ims/ImsMmTelManager;)Landroid/telephony/ims/ImsMmTelManager;
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Landroid/telephony/ims/ImsMmTelManager;

    .line 41
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-object p1
.end method

.method static synthetic access$900(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 41
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$902(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 41
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mWfcModeUri:Landroid/net/Uri;

    return-object p1
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "fn"    # Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    .line 389
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method private static getImsConfigImplBaseOperationConstant(I)I
    .locals 1
    .param p0, "imsConfigOpConst"    # I

    .line 783
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 790
    const/4 v0, -0x1

    return v0

    .line 787
    :cond_0
    return v0

    .line 785
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getImsConfigListener(Lorg/codeaurora/telephony/utils/AsyncResult;)Lcom/android/ims/ImsConfigListener;
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 373
    if-nez p1, :cond_0

    .line 374
    const-string v0, "AsyncResult is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/ims/ImsConfigListener;

    return-object v0

    .line 377
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    instance-of v0, v0, Lcom/android/ims/ImsConfigListener;

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->listener:Lcom/android/ims/ImsConfigListener;

    return-object v0

    .line 382
    :cond_2
    :goto_0
    const-string v0, "getImsConfigListener returns null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method private getOperationStatus(Z)I
    .locals 1
    .param p1, "status"    # Z

    .line 368
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 369
    :cond_0
    const/4 v0, 0x1

    .line 368
    :goto_0
    return v0
.end method

.method private getPhoneId()I
    .locals 1

    .line 881
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v0

    return v0
.end method

.method private getProvisionedValueInCache(I)Z
    .locals 3
    .param p1, "item"    # I

    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "value":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfigInt(I)I

    move-result v0

    goto :goto_0

    .line 940
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v0

    .line 943
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProvisionedValueInCache: item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private getSubId(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 823
    const/4 v0, -0x1

    .line 824
    .local v0, "subId":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 825
    .local v1, "subMgr":Landroid/telephony/SubscriptionManager;
    if-eqz v1, :cond_0

    .line 826
    nop

    .line 827
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 828
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 829
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 832
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return v0
.end method

.method private getWfcMDN(I)Ljava/lang/String;
    .locals 2
    .param p1, "subid"    # I

    .line 837
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "wfc_ims_mdn"

    const/4 v0, 0x0

    return-object v0
.end method

.method private logImsConfigChangedCheckin(ILjava/lang/String;I)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "retVal"    # I

    .line 950
    const/4 v0, 0x0

    .line 951
    .local v0, "info":Ljava/lang/String;
    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    const/16 v1, 0xb

    if-eq p1, v1, :cond_3

    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x41

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 965
    :cond_0
    const-string v0, "vice_dm"

    .line 966
    goto :goto_0

    .line 962
    :cond_1
    const-string v0, "wfc_dm"

    .line 963
    goto :goto_0

    .line 959
    :cond_2
    const-string v0, "eab_dm"

    .line 960
    goto :goto_0

    .line 956
    :cond_3
    const-string v0, "vt_dm"

    .line 957
    goto :goto_0

    .line 953
    :cond_4
    const-string v0, "vlt_dm"

    .line 954
    nop

    .line 970
    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 974
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    if-eqz p3, :cond_6

    .line 979
    const-string v2, ", ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 982
    :cond_6
    const/4 v2, 0x1

    .line 983
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 982
    invoke-virtual {p0, v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->checkinVolteProvision(ILjava/lang/String;)V

    .line 984
    return-void

    .line 971
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    :goto_1
    return-void
.end method

.method private onAccessProvisionedValDone(Lorg/codeaurora/telephony/utils/AsyncResult;I)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;
    .param p2, "accessType"    # I

    .line 307
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 308
    .local v0, "response":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getOperationStatus(Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 309
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    iput-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    .line 310
    monitor-enter v0

    .line 311
    :try_start_0
    const-string v1, "Notifyall"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 313
    monitor-exit v0

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSetFeatureResponseDone(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 317
    if-nez p1, :cond_0

    .line 318
    const-string v0, "getSetCapabilityValueListener :: AsyncResult is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    return-void

    .line 321
    :cond_0
    const/4 v0, 0x0

    .line 322
    .local v0, "listener":Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;
    const/4 v1, 0x0

    .line 324
    .local v1, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Lorg/codeaurora/telephony/utils/SomeArgs;

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 326
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    instance-of v2, v2, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;

    if-eqz v2, :cond_1

    .line 327
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;

    .line 330
    :cond_1
    if-eqz v0, :cond_3

    .line 331
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 332
    iget v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    iget v3, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    iget v4, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    invoke-interface {v0, v2, v3, v4}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;->onSetCapabilityValueSuccess(III)V

    goto :goto_0

    .line 335
    :cond_2
    iget v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    iget v3, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    sget-object v4, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;->ERROR_GENERIC:Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;

    invoke-interface {v0, v2, v3, v4}, Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;->onSetCapabilityValueFailure(IILorg/codeaurora/ims/ImsConfigImpl$SetCapabilityFailCause;)V

    goto :goto_0

    .line 339
    :cond_3
    const-string v2, "onSetFeatureResponseDone :: listener is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    :goto_0
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    instance-of v2, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    if-eqz v2, :cond_4

    .line 344
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    .line 345
    .local v2, "f":Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetFeatureResponseDone broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 347
    .local v3, "intent":Landroid/content/Intent;
    iget v4, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    const-string v5, "item"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    iget v4, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    iget v5, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsFeatureInt(I)I

    move-result v4

    .line 351
    .local v4, "prev_value":I
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "prev_value"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    iget v6, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    iget v7, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsFeatureInt(II)V

    .line 354
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v5

    invoke-static {v3, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 355
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 358
    const/4 v5, 0x2

    iget v6, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->feature:I

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    iget v6, v2, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;->value:I

    if-ne v5, v6, :cond_4

    .line 360
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcMDN()V

    .line 365
    .end local v2    # "f":Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "prev_value":I
    :cond_4
    return-void
.end method

.method private sendSetConfigRequest(II)I
    .locals 12
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 536
    const/16 v1, 0x2c

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 538
    .local v0, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 539
    .local v1, "retVal":I
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 542
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfigInt(I)I

    move-result v2

    .line 543
    .local v2, "prev_value":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSetConfigRequest item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", prev_value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    if-nez v1, :cond_4

    .line 549
    const-string v3, "setConfig broadcasting"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    const/4 v3, 0x0

    .line 551
    .local v3, "bProvisioning":Z
    const/16 v4, 0xa

    if-eq p1, v4, :cond_0

    const/16 v4, 0xb

    if-eq p1, v4, :cond_0

    const/16 v4, 0x19

    if-eq p1, v4, :cond_0

    const/16 v4, 0x41

    if-eq p1, v4, :cond_0

    const/16 v4, 0x1b

    if-eq p1, v4, :cond_0

    const/16 v4, 0x1c

    if-eq p1, v4, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    const/4 v3, 0x1

    .line 561
    :goto_0
    const-string v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v5, "prev_value"

    const-string v6, "value"

    const-string v7, "item"

    if-eqz v3, :cond_3

    .line 562
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v2, v9, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    move v10, v8

    .line 563
    .local v10, "bPrev":Z
    :goto_1
    if-ne p2, v9, :cond_2

    move v8, v9

    .line 564
    .local v8, "bNew":Z
    :cond_2
    if-eq v10, v8, :cond_3

    .line 565
    new-instance v9, Landroid/content/Intent;

    const-string v11, "com.motorola.intent.action.PROVISION_STATE_CHANGED"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v9, "provisionIntent":Landroid/content/Intent;
    const/high16 v11, 0x1000000

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    invoke-virtual {v9, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v11

    invoke-static {v9, v11}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 571
    iget-object v11, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 575
    .end local v8    # "bNew":Z
    .end local v9    # "provisionIntent":Landroid/content/Intent;
    .end local v10    # "bPrev":Z
    :cond_3
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v8, "configChangedIntent":Landroid/content/Intent;
    invoke-virtual {v8, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v5

    invoke-static {v8, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 580
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 582
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v4, p1, p2}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(II)V

    .line 587
    .end local v3    # "bProvisioning":Z
    .end local v8    # "configChangedIntent":Landroid/content/Intent;
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V

    .line 588
    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getImsConfigImplBaseOperationConstant(I)I

    move-result v3

    return v3
.end method

.method private setVolteProvisioningEnabled()V
    .locals 2

    .line 848
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$7;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$7;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 857
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 858
    return-void
.end method

.method private syncWfcMDN()V
    .locals 2

    .line 796
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$6;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsConfigImpl$6;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 819
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 820
    return-void
.end method


# virtual methods
.method public checkinVolteProvision(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 995
    invoke-static {}, Lorg/codeaurora/ims/CheckinEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 996
    return-void

    .line 999
    :cond_0
    move v0, p1

    .line 1000
    .local v0, "event_code":I
    move-object v1, p2

    .line 1002
    .local v1, "event_info":Ljava/lang/String;
    new-instance v2, Lorg/codeaurora/ims/ImsConfigImpl$9;

    invoke-direct {v2, p0, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl$9;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;ILjava/lang/String;)V

    .line 1099
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1100
    return-void
.end method

.method public getConfigInt(I)I
    .locals 10
    .param p1, "item"    # I

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigInt :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    const-string v0, "getConfigInt"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 451
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 452
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    return v2

    .line 457
    :cond_0
    const/16 v1, 0x44

    if-ne p1, v1, :cond_1

    .line 458
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getTVolteHysTimer()I

    move-result v0

    return v0

    .line 459
    :cond_1
    const/16 v1, 0x47

    if-ne p1, v1, :cond_2

    .line 460
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getImsSupportedServicesInCache()I

    move-result v0

    return v0

    .line 464
    :cond_2
    const/16 v4, 0x2d

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p1

    invoke-virtual/range {v3 .. v9}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 466
    .local v1, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    .line 467
    goto :goto_0

    .line 468
    :cond_3
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    :goto_0
    nop

    .line 469
    .local v2, "retVal":I
    iget-object v3, v1, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 470
    .local v3, "result_arg2":I
    invoke-virtual {v1}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 472
    if-nez v3, :cond_8

    .line 473
    const/4 v4, 0x0

    .line 474
    .local v4, "bProvisioning":Z
    const/16 v5, 0xa

    if-eq p1, v5, :cond_5

    const/16 v5, 0xb

    if-eq p1, v5, :cond_5

    const/16 v5, 0x19

    if-eq p1, v5, :cond_5

    const/16 v5, 0x1c

    if-eq p1, v5, :cond_5

    goto :goto_1

    .line 479
    :cond_5
    const/4 v4, 0x1

    .line 482
    :goto_1
    if-eqz v4, :cond_8

    .line 483
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->isImsConfigExist(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 484
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v5, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfigInt(I)I

    move-result v5

    .line 485
    .local v5, "prev":I
    const/4 v6, 0x0

    if-ne v5, v0, :cond_6

    move v7, v0

    goto :goto_2

    :cond_6
    move v7, v6

    .line 486
    .local v7, "bPrev":Z
    :goto_2
    if-ne v2, v0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v6

    .line 487
    .local v0, "bNew":Z
    :goto_3
    if-eq v7, v0, :cond_8

    .line 488
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getProvisionedValue Provision item="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", changed to value="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", prev="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.motorola.intent.action.PROVISION_STATE_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v6, "provisionIntent":Landroid/content/Intent;
    const/high16 v8, 0x1000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 492
    const-string v8, "item"

    invoke-virtual {v6, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "value"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "prev_value"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v8

    invoke-static {v6, v8}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 496
    iget-object v8, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 501
    .end local v0    # "bNew":Z
    .end local v4    # "bProvisioning":Z
    .end local v5    # "prev":I
    .end local v6    # "provisionIntent":Landroid/content/Intent;
    .end local v7    # "bPrev":Z
    :cond_8
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v0, p1, v2}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(II)V

    .line 503
    return v2
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 9
    .param p1, "item"    # I

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigString :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    const-string v0, "getConfigString"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 517
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    return-object v1

    .line 522
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 523
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getDomainName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 527
    :cond_1
    const/16 v3, 0x2d

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p1

    invoke-virtual/range {v2 .. v8}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 529
    .local v0, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    .line 530
    :cond_2
    goto :goto_0

    :cond_3
    iget-object v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 531
    .local v1, "retVal":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 532
    return-object v1
.end method

.method public getEabProvisioned()Z
    .locals 3

    .line 913
    const-string v0, "getEabProvisioned"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 915
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    .line 917
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 920
    .local v0, "value":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEabProvisioned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    return v0
.end method

.method public getLvcProvisioned()Z
    .locals 3

    .line 898
    const-string v0, "getLvcProvisioned"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 900
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 902
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    .line 904
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 907
    .local v0, "value":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLvcProvisioned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    return v0
.end method

.method public getVolteProvisioned()Z
    .locals 3

    .line 888
    const-string v0, "getVolteProvisioned"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 890
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    .line 892
    .local v0, "value":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVolteProvisioned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    return v0
.end method

.method public getWfcProvisioned()Z
    .locals 3

    .line 926
    const-string v0, "getWfcProvisioned"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 928
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->getProvisionedValueInCache(I)Z

    move-result v0

    .line 930
    .local v0, "value":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWfcProvisioned = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    return v0
.end method

.method protected sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;
    .locals 19
    .param p1, "requestType"    # I
    .param p2, "item"    # I
    .param p3, "event"    # I
    .param p4, "boolVal"    # Z
    .param p5, "intVal"    # I
    .param p6, "strVal"    # Ljava/lang/String;

    .line 398
    move-object/from16 v1, p0

    move/from16 v10, p1

    move/from16 v11, p2

    const-wide/16 v12, 0xbb8

    .line 399
    .local v12, "TIMEOUT_SEND_REQUEST":J
    const/16 v14, 0x1e

    .line 400
    .local v14, "MAX_RETRY":I
    const/4 v15, 0x0

    .line 407
    .local v15, "count":I
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v9

    .line 409
    .local v9, "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    const/16 v8, 0x1e

    const/4 v7, 0x1

    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v9, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 410
    iget-object v2, v1, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static/range {p2 .. p2}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v4

    const/4 v0, 0x0

    iget-object v3, v1, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    .line 412
    move/from16 v6, p3

    invoke-virtual {v3, v6, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 410
    move/from16 v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v17, v12

    move v12, v7

    .end local v12    # "TIMEOUT_SEND_REQUEST":J
    .local v17, "TIMEOUT_SEND_REQUEST":J
    move-object/from16 v7, p6

    move v13, v8

    move v8, v0

    move-object v12, v9

    .end local v9    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .local v12, "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    move-object/from16 v9, v16

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    .line 414
    monitor-enter v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 415
    :goto_0
    :try_start_2
    iget-object v0, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_1

    add-int/lit8 v2, v15, 0x1

    .end local v15    # "count":I
    .local v2, "count":I
    if-ge v15, v13, :cond_0

    .line 417
    const-wide/16 v3, 0xbb8

    :try_start_3
    invoke-virtual {v12, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 420
    :goto_1
    goto :goto_2

    .line 422
    :catchall_0
    move-exception v0

    move v15, v2

    goto :goto_4

    .line 418
    :catch_0
    move-exception v0

    goto :goto_1

    .line 415
    :goto_2
    move v15, v2

    goto :goto_0

    :cond_0
    move v15, v2

    .line 422
    .end local v2    # "count":I
    .restart local v15    # "count":I
    :cond_1
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 428
    const/4 v2, 0x1

    if-le v15, v2, :cond_2

    if-ge v15, v13, :cond_2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest: retried count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 431
    :cond_2
    if-lt v15, v13, :cond_3

    .line 432
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest: reach max retry, failed for item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    :cond_3
    :goto_3
    return-object v12

    .line 422
    :catchall_1
    move-exception v0

    :goto_4
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v12    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v14    # "MAX_RETRY":I
    .end local v15    # "count":I
    .end local v17    # "TIMEOUT_SEND_REQUEST":J
    .end local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl;
    .end local p1    # "requestType":I
    .end local p2    # "item":I
    .end local p3    # "event":I
    .end local p4    # "boolVal":Z
    .end local p5    # "intVal":I
    .end local p6    # "strVal":Ljava/lang/String;
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 423
    .restart local v12    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .restart local v14    # "MAX_RETRY":I
    .restart local v15    # "count":I
    .restart local v17    # "TIMEOUT_SEND_REQUEST":J
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsConfigImpl;
    .restart local p1    # "requestType":I
    .restart local p2    # "item":I
    .restart local p3    # "event":I
    .restart local p4    # "boolVal":Z
    .restart local p5    # "intVal":I
    .restart local p6    # "strVal":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_5

    .line 428
    .end local v17    # "TIMEOUT_SEND_REQUEST":J
    .restart local v9    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .local v12, "TIMEOUT_SEND_REQUEST":J
    :catchall_2
    move-exception v0

    move-wide/from16 v17, v12

    move v13, v8

    move-object v12, v9

    .end local v9    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .local v12, "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .restart local v17    # "TIMEOUT_SEND_REQUEST":J
    goto :goto_7

    .line 423
    .end local v17    # "TIMEOUT_SEND_REQUEST":J
    .restart local v9    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .local v12, "TIMEOUT_SEND_REQUEST":J
    :catch_2
    move-exception v0

    move-wide/from16 v17, v12

    move v13, v8

    move-object v12, v9

    .line 424
    .end local v9    # "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .local v12, "request":Lorg/codeaurora/telephony/utils/SomeArgs;
    .restart local v17    # "TIMEOUT_SEND_REQUEST":J
    :goto_5
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 428
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x1

    if-le v15, v2, :cond_4

    if-ge v15, v13, :cond_4

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest: retried count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 431
    :cond_4
    if-lt v15, v13, :cond_5

    .line 432
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest: reach max retry, failed for item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    :cond_5
    :goto_6
    return-object v12

    .line 428
    :catchall_3
    move-exception v0

    :goto_7
    const/4 v2, 0x1

    if-le v15, v2, :cond_6

    if-ge v15, v13, :cond_6

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest: retried count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", requestType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 431
    :cond_6
    if-lt v15, v13, :cond_7

    .line 432
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v12, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRequest: reach max retry, failed for item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    :cond_7
    :goto_8
    return-object v12
.end method

.method protected sendSetConfigRequestAsync(II)V
    .locals 9
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSetConfigRequestAsync :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 594
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v3

    .line 593
    const/16 v2, 0x2c

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p2

    invoke-virtual/range {v1 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->sendConfigRequest(IIZILjava/lang/String;ILandroid/os/Message;)V

    .line 596
    return-void
.end method

.method public setCapabilityValue(IILorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;)V
    .locals 12
    .param p1, "feature"    # I
    .param p2, "value"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/ImsConfigImpl$SetCapabilityValueListener;

    .line 720
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setCapabilityValue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCapabilityValue :: feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "srvType":I
    const/16 v1, 0xd

    .line 724
    .local v1, "network":I
    const/16 v2, 0xe

    .line 725
    .local v2, "act":I
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_2

    const/4 v5, 0x4

    if-eq p1, v5, :cond_1

    const/4 v5, 0x5

    if-eq p1, v5, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    const/16 v0, 0x19

    .line 753
    const/16 v1, 0x12

    .line 754
    const/16 v2, 0x13

    .line 755
    goto :goto_0

    .line 747
    :cond_1
    const/16 v0, 0x19

    .line 748
    const/16 v1, 0xd

    .line 749
    const/16 v2, 0xe

    .line 750
    goto :goto_0

    .line 742
    :cond_2
    const/4 v0, 0x3

    .line 743
    const/16 v1, 0x12

    .line 744
    const/16 v2, 0x13

    .line 745
    goto :goto_0

    .line 732
    :cond_3
    const/4 v0, 0x0

    .line 733
    const/16 v1, 0x12

    .line 734
    const/16 v2, 0x13

    .line 735
    goto :goto_0

    .line 737
    :cond_4
    const/4 v0, 0x3

    .line 738
    const/16 v1, 0xd

    .line 739
    const/16 v2, 0xe

    .line 740
    goto :goto_0

    .line 727
    :cond_5
    const/4 v0, 0x0

    .line 728
    const/16 v1, 0xd

    .line 729
    const/16 v2, 0xe

    .line 730
    nop

    .line 760
    :goto_0
    const/4 v5, 0x0

    .line 761
    .local v5, "enabled":I
    if-ne p2, v4, :cond_6

    .line 762
    const/4 v4, 0x2

    .end local v5    # "enabled":I
    .local v4, "enabled":I
    goto :goto_1

    .line 761
    .end local v4    # "enabled":I
    .restart local v5    # "enabled":I
    :cond_6
    move v4, v5

    .line 765
    .end local v5    # "enabled":I
    .restart local v4    # "enabled":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetServiceStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    invoke-static {}, Lorg/codeaurora/telephony/utils/SomeArgs;->obtain()Lorg/codeaurora/telephony/utils/SomeArgs;

    move-result-object v11

    .line 767
    .local v11, "setCapArgs":Lorg/codeaurora/telephony/utils/SomeArgs;
    iput v0, v11, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    .line 768
    iput v1, v11, Lorg/codeaurora/telephony/utils/SomeArgs;->argi2:I

    .line 769
    iput p2, v11, Lorg/codeaurora/telephony/utils/SomeArgs;->argi3:I

    .line 770
    iput-object p3, v11, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    .line 771
    new-instance v5, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v1, p2, v6}, Lorg/codeaurora/ims/ImsConfigImpl$FeatureAccessWrapper;-><init>(IIILcom/android/ims/ImsConfigListener;)V

    iput-object v5, v11, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    .line 772
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/4 v10, 0x0

    move v7, v0

    move v8, v2

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Lorg/codeaurora/ims/ImsSenderRxr;->setServiceStatus(Landroid/os/Message;IIII)V

    .line 774
    return-void
.end method

.method public setConfig(II)I
    .locals 3
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const/4 v0, 0x1

    const/16 v1, 0x1a

    if-ne p1, v1, :cond_0

    .line 614
    const-string v1, "Ignore VoWiFi Roaming enable/disable"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    return v0

    .line 617
    :cond_0
    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 618
    const-string v1, "Invalid API request for item"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    return v0

    .line 623
    :cond_1
    const/16 v1, 0x44

    if-ne p1, v1, :cond_2

    .line 624
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsConfigImplOem;->setTVolteHysTimer(I)I

    move-result v0

    return v0

    .line 625
    :cond_2
    const/16 v1, 0x47

    if-ne p1, v1, :cond_3

    .line 626
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigOem:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->updateImsSupportedServicesAndNotify()V

    .line 627
    const/4 v0, 0x0

    return v0

    .line 638
    :cond_3
    const/16 v1, 0x1b

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 639
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 640
    const-string v1, "VoWiFi mode: config update is done only when mode preference is changed or when sim is loaded"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    return v0

    .line 644
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->sendSetConfigRequest(II)I

    move-result v0

    return v0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 10
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfig :: item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->isConfigRequestValid(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 660
    const-string v0, "Invalid API request for item"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    return v1

    .line 665
    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 666
    const-string v0, "ImsConfig.ConfigConstants.DOMAIN_NAME: value can\'t be changed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    return v1

    .line 672
    :cond_1
    const/16 v0, 0x46

    if-ne p1, v0, :cond_2

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProvisionedStringValue WIFI_MDN set db value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getSubId(I)I

    move-result v1

    .line 675
    .local v1, "subid":I
    const-string v2, "wfc_ims_mdn"

    invoke-static {v1, v2, p2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 681
    .end local v1    # "subid":I
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsConfigImplCache;->getImsConfig(I)Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "prev_value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProvisionedStringValue item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", prev_value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    const/16 v4, 0x2c

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p1

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Lorg/codeaurora/ims/ImsConfigImpl;->sendRequest(IIIZILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 687
    .local v2, "result":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v3, v2, Lorg/codeaurora/telephony/utils/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 688
    .local v3, "retVal":I
    invoke-virtual {v2}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 691
    if-nez v3, :cond_4

    .line 692
    const-string v4, "setConfig broadcasting"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 694
    .local v4, "configChangedIntent":Landroid/content/Intent;
    const-string v5, "item"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 695
    const-string v6, "value"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    const-string v7, "prev_value"

    invoke-virtual {v4, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v8

    invoke-static {v4, v8}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 698
    iget-object v8, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 701
    if-ne p1, v0, :cond_3

    .line 702
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.motorola.intent.action.PROVISION_STATE_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v0, "provisionIntent":Landroid/content/Intent;
    const/high16 v8, 0x1000000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 704
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConfigImpl;->getPhoneId()I

    move-result v5

    invoke-static {v0, v5}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 708
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 711
    .end local v0    # "provisionIntent":Landroid/content/Intent;
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mConfigCache:Lorg/codeaurora/ims/ImsConfigImplCache;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsConfigImplCache;->setImsConfig(ILjava/lang/String;)V

    .line 715
    .end local v4    # "configChangedIntent":Landroid/content/Intent;
    :cond_4
    invoke-direct {p0, p1, p2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->logImsConfigChangedCheckin(ILjava/lang/String;I)V

    .line 716
    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->getImsConfigImplBaseOperationConstant(I)I

    move-result v0

    return v0
.end method

.method public updateWFCMode(Z)I
    .locals 3
    .param p1, "isRoamingMode"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mContext:Landroid/content/Context;

    const-string v1, "updateWFCMode"

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->enforceReadPhoneState(Ljava/lang/String;)V

    .line 205
    new-instance v0, Lorg/codeaurora/ims/ImsConfigImpl$5;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsConfigImpl$5;-><init>(Lorg/codeaurora/ims/ImsConfigImpl;Z)V

    .line 237
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    const/4 v1, 0x0

    return v1
.end method

.method public updateWfcModeConfigurationsToModem()V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWfcModeConfigurationsToModem: mIsCarrierConfigLoaded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl;->mIsCarrierConfigLoaded:Z

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I

    .line 197
    :cond_0
    return-void
.end method
