.class public Lorg/codeaurora/ims/ImsSubController;
.super Ljava/lang/Object;
.source "ImsSubController.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;,
        Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;,
        Lorg/codeaurora/ims/ImsSubController$ImsStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_DDS_SWITCH_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

.field private static final ACTION_GET_RADIO_ACCESS_FAMILY_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final EVENT_GET_SUB_CONFIG:I = 0x2

.field private static final EVENT_IMS_SERVICE_DOWN:I = 0x4

.field private static final EVENT_IMS_SERVICE_UP:I = 0x3

.field private static final EVENT_RADIO_AVAILABLE:I = 0x5

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x6

.field private static final EVENT_SUB_CONFIG_CHANGED:I = 0x1

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static mImsPhoneId:I

.field private static mSimultStackCount:I

.field private static mStackStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAX_VALID_STACK_STATUS_COUNT:I

.field private mActiveStacks:[Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsDsdv:Z

.field private mIsReceiverRegistered:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNumMultiModeStacks:I

.field private mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

.field private mStackConfigListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 80
    const/4 v0, -0x1

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mImsPhoneId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxrs"    # [Lorg/codeaurora/ims/ImsSenderRxr;

    .line 134
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxrs"    # [Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 58
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 68
    const/4 v0, 0x6

    iput v0, p0, Lorg/codeaurora/ims/ImsSubController;->MAX_VALID_STACK_STATUS_COUNT:I

    .line 69
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 78
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 79
    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 578
    new-instance v2, Lorg/codeaurora/ims/ImsSubController$1;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsSubController$1;-><init>(Lorg/codeaurora/ims/ImsSubController;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 595
    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 596
    new-instance v1, Lorg/codeaurora/ims/ImsSubController$2;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsSubController$2;-><init>(Lorg/codeaurora/ims/ImsSubController;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 138
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    .line 139
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 140
    iput-object p2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    .line 141
    new-instance v1, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;

    invoke-direct {v1, p0, p3}, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;-><init>(Lorg/codeaurora/ims/ImsSubController;Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 143
    aget-object v2, p2, v1

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    aget-object v2, p2, v1

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    aget-object v2, p2, v1

    invoke-virtual {v2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerListener(Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsSubController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 43
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsSubController;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 43
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsSubController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 43
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsSubController;)[Lorg/codeaurora/ims/ImsSenderRxr;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 43
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    return-object v0
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsSubController;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 43
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    return-void
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsSubController;IZ)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 43
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSubController;->updateStackConfig(IZ)V

    return-void
.end method

.method static synthetic access$600(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForSubId(I)V

    return-void
.end method

.method static synthetic access$700(Lorg/codeaurora/ims/ImsSubController;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 43
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->handleRafInfoChange()V

    return-void
.end method

.method static synthetic access$800(Lorg/codeaurora/ims/ImsSubController;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 43
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 43
    sget v0, Lorg/codeaurora/ims/ImsSubController;->mImsPhoneId:I

    return v0
.end method

.method public static getDefaultPhoneId()I
    .locals 1

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public static getImsPhoneId()I
    .locals 2

    .line 219
    const-class v0, Lorg/codeaurora/ims/ImsSubController;

    monitor-enter v0

    .line 220
    :try_start_0
    sget v1, Lorg/codeaurora/ims/ImsSubController;->mImsPhoneId:I

    monitor-exit v0

    return v1

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleRafInfoChange()V
    .locals 10

    .line 507
    iget v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-lez v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRafInfoChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "Multimode stacks. Handled by DDS switch. EXIT!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 515
    .local v0, "numPhones":I
    const/4 v1, 0x0

    .line 516
    .local v1, "tempPhoneId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 517
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 518
    invoke-virtual {v4, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 519
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_2

    .line 520
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 521
    .local v5, "subId":I
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v6

    .line 522
    .local v6, "rafInfo":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleRafInfoChange: Phone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Info:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-direct {p0, v6, v7}, Lorg/codeaurora/ims/ImsSubController;->isMultiModeSupported(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 524
    iget v8, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    add-int/2addr v8, v3

    iput v8, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 525
    move v1, v2

    .line 527
    .end local v5    # "subId":I
    .end local v6    # "rafInfo":J
    :cond_1
    goto :goto_1

    .line 528
    :cond_2
    const-string v3, "handleRafInfoChange: subIds not valid"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRafInfoChange: NumPhones: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Multiple Multimode stacks: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    iget v2, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_6

    .line 541
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    if-eqz v2, :cond_4

    .line 542
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 543
    iput-boolean v4, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 545
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    if-eqz v2, :cond_4

    .line 546
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v4}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 547
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 556
    :cond_4
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForSubId(I)V

    .line 560
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    if-nez v2, :cond_5

    .line 561
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 562
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mSubChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 563
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsServicePreferences;->createInstance(Landroid/content/Context;)V

    .line 566
    :cond_5
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 568
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 569
    const-string v2, "handleRafInfoChange: registered for DDS switch..."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 572
    :cond_6
    iput v4, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 573
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 575
    :goto_2
    return-void
.end method

.method private handleSubConfigChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 256
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 258
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    .line 260
    .local v0, "config":Lorg/codeaurora/ims/ImsSubConfigDetails;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSubConfigChanged config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getSimultStackCount()I

    move-result v1

    sput v1, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 262
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getImsStackEnabledList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    .line 263
    const/4 v1, 0x6

    new-array v1, v1, [Z

    .line 265
    .local v1, "activeStacks":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 266
    sget-object v3, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 270
    const-string v2, "handleSubConfigChanged ar.userObj is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    return-void

    .line 274
    :cond_2
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 275
    .end local v0    # "config":Lorg/codeaurora/ims/ImsSubConfigDetails;
    .end local v1    # "activeStacks":[Z
    goto :goto_1

    .line 276
    :cond_3
    const-string v0, "ar.result and ar.exception are null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    :goto_1
    return-void
.end method

.method private handleSubConfigException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 241
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lorg/codeaurora/telephony/utils/Preconditions;->checkArgument(Z)V

    .line 242
    move-object v1, p1

    check-cast v1, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v1

    .line 243
    .local v1, "errorCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubConfigException error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 245
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 249
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    goto :goto_1

    .line 251
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled error code : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    :goto_1
    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 5

    .line 409
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 410
    const/4 v1, 0x0

    sput-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    .line 412
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 413
    const-string v0, "initSubscriptionStatus: [Multi-sim] Using RAF and DDS to decide IMS Sub"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->handleRafInfoChange()V

    .line 417
    iget v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-nez v0, :cond_1

    .line 418
    const-string v0, "initSubscriptionStatus: registered for RAF info"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 423
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    goto :goto_0

    .line 427
    :cond_0
    const-string v1, "initSubscriptionStatus: Not multi-sim."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 430
    :cond_1
    :goto_0
    return-void
.end method

.method private isCarrierConfigLoaded(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 684
    const/4 v0, 0x0

    .line 686
    .local v0, "isCarrierConfigLoaded":Z
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    const-string v2, " isCarrierConfigLoaded "

    if-nez v1, :cond_0

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    return v0

    .line 691
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    .line 692
    const-string v3, "carrier_config"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 694
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 696
    .local v3, "subIds":[I
    if-eqz v3, :cond_2

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 700
    :cond_1
    aget v4, v3, v4

    invoke-virtual {v1, v4}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 701
    .local v4, "carrierConfig":Landroid/os/PersistableBundle;
    nop

    .line 702
    const-string v5, "default_carrierconfig_loaded"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 698
    .end local v4    # "carrierConfig":Landroid/os/PersistableBundle;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 704
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 706
    return v0
.end method

.method private isMultiModeSupported(J)Z
    .locals 4
    .param p1, "nRatMask"    # J

    .line 501
    const-wide/16 v0, 0x1000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyStackConfigChanged([ZI)V
    .locals 2
    .param p1, "activeStacks"    # [Z
    .param p2, "phoneId"    # I

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStackConfigChanged: activeStacks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 236
    .local v1, "listener":Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;->onStackConfigChanged([ZI)V

    .line 237
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method

.method private static setImsPhoneId(I)V
    .locals 2
    .param p0, "phoneId"    # I

    .line 212
    const-class v0, Lorg/codeaurora/ims/ImsSubController;

    monitor-enter v0

    .line 213
    :try_start_0
    sput p0, Lorg/codeaurora/ims/ImsSubController;->mImsPhoneId:I

    .line 214
    monitor-exit v0

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateActiveImsStackForSubId(I)V
    .locals 3
    .param p1, "ddsSubId"    # I

    .line 475
    const/4 v0, 0x0

    .line 481
    .local v0, "phoneId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    goto :goto_0

    .line 485
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 487
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 492
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateActiveImsStackForSubId: new DDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 494
    return-void
.end method

.method private updateStackConfig(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStackConfig phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsDsdv : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    const-string v1, "updateStackConfig nothing to update"

    if-eqz v0, :cond_2

    .line 360
    sget-object v0, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    if-nez v0, :cond_0

    .line 361
    const-string v0, "updateStackConfig Stacks are not yet initialized"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    return-void

    .line 365
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 366
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    return-void

    .line 370
    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 371
    .local v0, "activeStacks":[Z
    sget-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 372
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 373
    sget-object v2, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "activeStacks":[Z
    .end local v1    # "i":I
    :cond_2
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 379
    const-string v0, "updateStackConfig: unregistering BroadcastReceiver"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 381
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 384
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aget-boolean v0, v0, p1

    if-ne v0, p2, :cond_4

    .line 385
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    return-void

    .line 389
    :cond_4
    if-nez p2, :cond_5

    .line 398
    iput v2, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 401
    :cond_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aput-boolean p2, v0, p1

    .line 402
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    .line 404
    .restart local v0    # "activeStacks":[Z
    :cond_6
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 405
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isDsdv()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    return v0
.end method

.method public onServiceDown(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDown :: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 175
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 176
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 177
    return-void
.end method

.method public onServiceUp(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceUp :: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 167
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 169
    return-void
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;I)V
    .locals 2
    .param p1, "stackConfigListener"    # Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    .param p2, "phoneId"    # I

    .line 106
    if-eqz p1, :cond_1

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_0
    const-string v0, "registerListener :: duplicate stackConfigListener!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    invoke-direct {p0, v1, p2}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stackConfigListener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 186
    if-eqz p1, :cond_1

    .line 189
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIsDsdv(Z)V
    .locals 0
    .param p1, "isDsdv"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 153
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 154
    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;)Z
    .locals 2
    .param p1, "stackConfigListener"    # Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 127
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stackConfigListener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)Z
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 204
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 205
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateActiveImsStackForPhoneId(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 435
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchImsPhone: Invalid phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    return-void

    .line 440
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    monitor-enter v1

    .line 441
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 442
    if-ne v3, p1, :cond_1

    .line 443
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aput-boolean v5, v4, v3

    goto :goto_1

    .line 445
    :cond_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aput-boolean v2, v4, v3

    .line 441
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    invoke-direct {p0, v3, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 450
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 454
    invoke-static {}, Lorg/codeaurora/ims/ImsSubController;->getImsPhoneId()I

    move-result v1

    .line 455
    .local v1, "imsPhoneId":I
    if-ne v1, p1, :cond_3

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchImsPhone: ImsPhoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Unchanged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 458
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchImsPhone: ImsPhoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    invoke-static {p1}, Lorg/codeaurora/ims/ImsSubController;->setImsPhoneId(I)V

    .line 461
    :goto_2
    if-ne v1, v0, :cond_4

    move v0, v5

    goto :goto_3

    :cond_4
    move v0, v2

    .line 464
    .local v0, "firsttime":Z
    :goto_3
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->isCarrierConfigLoaded(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 465
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    move v2, v5

    :cond_5
    invoke-static {v3, p1, v2}, Lorg/codeaurora/ims/ImsUtils;->sendUpdateImsServiceConfigRequest(Landroid/content/Context;IZ)V

    .line 470
    .end local v0    # "firsttime":Z
    .end local v1    # "imsPhoneId":I
    :cond_6
    return-void

    .line 450
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
