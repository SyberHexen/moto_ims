.class public Lorg/codeaurora/ims/ImsMultiIdentityImpl;
.super Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;
.source "ImsMultiIdentityImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;
    }
.end annotation


# instance fields
.field private final EVENT_MULTI_IDENTITY_INFO_PENDING_INDICATION:I

.field private final EVENT_MULTI_IDENTITY_INFO_PENDING_RESPONSE:I

.field private final EVENT_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE:I

.field private final EVENT_MULTI_IDENTITY_UPDATE_REGISTRATION_STATE_RESPONSE:I

.field private final EVENT_MULTI_IDENTITY_VIRTUAL_LINE_INFO_RESPONSE:I

.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLinesInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

.field private mPhoneId:I

.field private mRegisteredSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final recipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>(ILorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 56
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;-><init>()V

    .line 39
    new-instance v0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl$1;-><init>(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->recipient:Landroid/os/IBinder$DeathRecipient;

    .line 46
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 47
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->READ_PHONE_STATE:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_UPDATE_REGISTRATION_STATE_RESPONSE:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_REGISTRATION_STATUS_CHANGE:I

    .line 51
    const/4 v1, 0x3

    iput v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_INFO_PENDING_INDICATION:I

    .line 52
    const/4 v2, 0x4

    iput v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_INFO_PENDING_RESPONSE:I

    .line 53
    const/4 v2, 0x5

    iput v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->EVENT_MULTI_IDENTITY_VIRTUAL_LINE_INFO_RESPONSE:I

    .line 57
    iput p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    .line 58
    iput-object p2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 59
    iput-object p3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mContext:Landroid/content/Context;

    .line 60
    new-instance v2, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;

    invoke-direct {v2, p0, p4}, Lorg/codeaurora/ims/ImsMultiIdentityImpl$ImsMultiIdentityHandler;-><init>(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    .line 63
    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMultiIdentityRegistrationStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v4}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMultiIdentityInfoPendingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    .line 30
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onClientDeath()V

    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 30
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onRegisterMultiIdentityLinesResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 30
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityRegistrationStatusChange(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    .line 30
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityInfoPendingIndication()V

    return-void
.end method

.method static synthetic access$400(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 30
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityInfoPendingResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lorg/codeaurora/ims/ImsMultiIdentityImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;
    .param p1, "x1"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 30
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->onMultiIdentityVirtualLineInfoResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method private getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 126
    .local v0, "intf":Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    if-eqz v0, :cond_0

    .line 131
    return-object v0

    .line 127
    :cond_0
    const-string v1, "getMultiIdentityListener :: IImsMultiIdentityListener is null."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private onClientDeath()V
    .locals 1

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 137
    return-void
.end method

.method private onMultiIdentityInfoPendingIndication()V
    .locals 4

    .line 175
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 177
    .local v1, "lines":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    .line 179
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 178
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->requestMultiIdentityLinesRegistration(Ljava/util/Collection;Landroid/os/Message;)V

    .line 180
    return-void

    .line 177
    .end local v1    # "lines":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private onMultiIdentityInfoPendingResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 166
    const-string v0, "multiIdentityInfoPendingResponse"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    const-string v0, "multiIdentity Info Pending action was unsuccessfull"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    :cond_1
    return-void
.end method

.method private onMultiIdentityRegistrationStatusChange(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 225
    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_2

    .line 229
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiIdentityRegistrationStatusChange :: AsyncResult exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    return-void

    .line 235
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 236
    .local v0, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 239
    .local v3, "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    invoke-virtual {v3}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v3}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 242
    iget-object v5, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mRegisteredSet:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v3    # "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 245
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    :try_start_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    invoke-interface {v1, v2, v0}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->onRegistrationStatusChange(ILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    goto :goto_1

    .line 249
    :catchall_0
    move-exception v1

    .line 250
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMultiIdentityRegistrationStatusChange exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 245
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 226
    .end local v0    # "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    :cond_4
    :goto_2
    const-string v0, "onMultiIdentityRegistrationStatusChange :: AsyncResult is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private onMultiIdentityVirtualLineInfoResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 150
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/VirtualLineInfo;

    .line 151
    .local v0, "virtualInfo":Lorg/codeaurora/ims/VirtualLineInfo;
    if-nez v0, :cond_0

    .line 152
    const-string v1, "multiIdentityVirtualLineInfoResponse :: virtualInfo is null."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    return-void

    .line 155
    :cond_0
    iget-object v1, v0, Lorg/codeaurora/ims/VirtualLineInfo;->mMsisdn:Ljava/lang/String;

    .line 156
    .local v1, "msisdn":Ljava/lang/String;
    iget-object v2, v0, Lorg/codeaurora/ims/VirtualLineInfo;->mVirtualInfo:Ljava/util/ArrayList;

    .line 158
    .local v2, "virtualLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    invoke-interface {v3, v4, v1, v2}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->onQueryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    goto :goto_0

    .line 160
    :catchall_0
    move-exception v3

    .line 161
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multiIdentityVirtualLineInfoResponse exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private onRegisterMultiIdentityLinesResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 209
    if-nez p1, :cond_0

    .line 210
    const-string v0, "registerMultiIdentityLinesResponse :: NULL response received. Returning"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    return-void

    .line 215
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const/4 v0, 0x0

    :goto_0
    nop

    .line 218
    .local v0, "ret":I
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->getMultiIdentityListener()Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    move-result-object v1

    iget v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mPhoneId:I

    invoke-interface {v1, v2, v0}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->onUpdateRegistrationInfoResponse(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    goto :goto_1

    .line 219
    :catchall_0
    move-exception v1

    .line 220
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerMultiIdentityLinesResponse exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 256
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public queryVirtualLineInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "queryVirtualLineInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryVirtualLineInfo(Ljava/lang/String;Landroid/os/Message;)V

    .line 147
    return-void

    .line 142
    :cond_0
    const-string v0, "queryVirtualLineInfo :: msisdn is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMultiIdentityListener(Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setMultiIdentityListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 109
    .local v0, "intf":Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 111
    .local v2, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->recipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 113
    .end local v2    # "binder":Landroid/os/IBinder;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 115
    if-eqz p1, :cond_1

    .line 116
    invoke-interface {p1}, Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 117
    .restart local v2    # "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->recipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 118
    .end local v2    # "binder":Landroid/os/IBinder;
    goto :goto_0

    .line 119
    :cond_1
    const-string v1, "Trying to set a NULL listener."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    :goto_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mMultiIdentityListener:Lorg/codeaurora/ims/internal/IImsMultiIdentityListener;

    .line 122
    return-void
.end method

.method public updateRegistrationStatus(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p1, "linesInfo":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateRegistrationStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 190
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 191
    .local v2, "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    invoke-virtual {v2}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineStatus()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 194
    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    goto :goto_0

    .line 197
    :cond_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    new-instance v5, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-direct {v5, v2}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Lorg/codeaurora/ims/MultiIdentityLineInfo;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    nop

    .end local v2    # "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mLinesInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 200
    .local v1, "lines":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->mHandler:Landroid/os/Handler;

    .line 205
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->requestMultiIdentityLinesRegistration(Ljava/util/Collection;Landroid/os/Message;)V

    .line 206
    return-void

    .line 200
    .end local v1    # "lines":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
