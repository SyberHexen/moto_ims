.class public Lorg/codeaurora/ims/ImsPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "ImsPhoneStateListener.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneId:I

.field private mTelephony:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I

    .line 34
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 38
    iput p3, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mPhoneId:I

    .line 39
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getSubscriptionId()I
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onOemHookRawEvent([B)V
    .locals 1
    .param p1, "rawData"    # [B

    .line 25
    const-string v0, "onOemHookRawEvent"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneStateListener;->logd(Ljava/lang/String;)V

    .line 26
    iget v0, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mPhoneId:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->getInstance(I)Lorg/codeaurora/ims/ImsConfigImplOem;

    move-result-object v0

    .line 27
    .local v0, "oemImpl":Lorg/codeaurora/ims/ImsConfigImplOem;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsConfigImplOem;->handleOemHookRawEvent([B)V

    .line 30
    :cond_0
    return-void
.end method

.method public register()V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneStateListener;->logd(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mTelephony:Landroid/telephony/TelephonyManager;

    const v1, 0x8000

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    const-string v1, "ImsPhoneStateListener { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    return-object v0
.end method

.method public unregister()V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregister, subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsPhoneStateListener;->logd(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneStateListener;->mTelephony:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 49
    return-void
.end method
