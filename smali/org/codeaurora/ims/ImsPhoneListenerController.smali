.class public Lorg/codeaurora/ims/ImsPhoneListenerController;
.super Ljava/lang/Object;
.source "ImsPhoneListenerController.java"


# static fields
.field private static final DBG:Z = false

.field private static sInstance:Lorg/codeaurora/ims/ImsPhoneListenerController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

.field private mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/ImsPhoneListenerController;->sInstance:Lorg/codeaurora/ims/ImsPhoneListenerController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/codeaurora/ims/ImsPhoneListenerController$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsPhoneListenerController$1;-><init>(Lorg/codeaurora/ims/ImsPhoneListenerController;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 42
    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 45
    const/4 v0, 0x1

    .line 46
    .local v0, "nPhones":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 50
    :cond_0
    new-array v1, v0, [Lorg/codeaurora/ims/ImsPhoneStateListener;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 52
    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->registerForNotifications()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsPhoneListenerController;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsPhoneListenerController;

    .line 17
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->updatePhoneStateListeners()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/codeaurora/ims/ImsPhoneListenerController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lorg/codeaurora/ims/ImsPhoneListenerController;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/ImsPhoneListenerController;->sInstance:Lorg/codeaurora/ims/ImsPhoneListenerController;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lorg/codeaurora/ims/ImsPhoneListenerController;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/codeaurora/ims/ImsPhoneListenerController;->sInstance:Lorg/codeaurora/ims/ImsPhoneListenerController;

    .line 29
    :cond_0
    sget-object v1, Lorg/codeaurora/ims/ImsPhoneListenerController;->sInstance:Lorg/codeaurora/ims/ImsPhoneListenerController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 25
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 131
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 125
    const-string v0, "QImsService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method private registerForNotifications()V
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 110
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->updatePhoneStateListeners()V

    .line 111
    return-void
.end method

.method private unregisterForNotifications()V
    .locals 3

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 115
    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 116
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneStateListener;->unregister()V

    .line 117
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 121
    return-void
.end method

.method private updatePhoneStateListeners()V
    .locals 9

    .line 67
    const-string v0, "updatePhoneStateListeners"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->logv(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "activeSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto/16 :goto_3

    .line 78
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 79
    .local v2, "activeSubInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activeSubInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsPhoneListenerController;->logv(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    .line 82
    .local v3, "idx":I
    iget-object v4, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 83
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 87
    .local v4, "subId":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    array-length v7, v6

    if-ge v5, v7, :cond_6

    .line 88
    aget-object v7, v6, v5

    if-eqz v7, :cond_5

    .line 89
    aget-object v6, v6, v5

    invoke-virtual {v6}, Lorg/codeaurora/ims/ImsPhoneStateListener;->getSubscriptionId()I

    move-result v6

    .line 90
    .local v6, "mSubId":I
    if-ne v3, v5, :cond_3

    if-ne v4, v6, :cond_3

    .line 91
    goto :goto_2

    .line 93
    :cond_3
    if-eq v3, v5, :cond_4

    if-eq v4, v6, :cond_4

    .line 94
    goto :goto_2

    .line 96
    :cond_4
    iget-object v7, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsPhoneStateListener;->unregister()V

    .line 97
    iget-object v7, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    const/4 v8, 0x0

    aput-object v8, v7, v5

    .line 87
    .end local v6    # "mSubId":I
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 101
    .end local v5    # "i":I
    :cond_6
    aget-object v5, v6, v3

    if-nez v5, :cond_7

    .line 102
    new-instance v5, Lorg/codeaurora/ims/ImsPhoneStateListener;

    iget-object v7, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v4, v3}, Lorg/codeaurora/ims/ImsPhoneStateListener;-><init>(Landroid/content/Context;II)V

    aput-object v5, v6, v3

    .line 103
    iget-object v5, p0, Lorg/codeaurora/ims/ImsPhoneListenerController;->mListeners:[Lorg/codeaurora/ims/ImsPhoneStateListener;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsPhoneStateListener;->register()V

    .line 105
    .end local v2    # "activeSubInfo":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "idx":I
    .end local v4    # "subId":I
    :cond_7
    goto :goto_0

    .line 106
    :cond_8
    return-void

    .line 74
    :cond_9
    :goto_3
    const-string v1, "There is no ActiveSubscriptionInfo"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsPhoneListenerController;->logv(Ljava/lang/String;)V

    .line 75
    return-void

    .line 69
    .end local v0    # "activeSubList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 33
    const-string v0, "start"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->logd(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public stop()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->unregisterForNotifications()V

    .line 38
    const-string v0, "stop"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->logd(Ljava/lang/String;)V

    .line 39
    return-void
.end method
