.class public Lorg/codeaurora/ims/CallForwardStatusInfo;
.super Ljava/lang/Object;
.source "CallForwardStatusInfo.java"


# instance fields
.field private callForwardStatus:[Lorg/codeaurora/ims/CallForwardStatus;

.field private sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 18
    iput-object v0, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->callForwardStatus:[Lorg/codeaurora/ims/CallForwardStatus;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsReasonInfo;[Lorg/codeaurora/ims/CallForwardStatus;)V
    .locals 1
    .param p1, "sipError"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p2, "cfStatus"    # [Lorg/codeaurora/ims/CallForwardStatus;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 18
    iput-object v0, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->callForwardStatus:[Lorg/codeaurora/ims/CallForwardStatus;

    .line 21
    iput-object p1, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 22
    iput-object p2, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->callForwardStatus:[Lorg/codeaurora/ims/CallForwardStatus;

    .line 23
    return-void
.end method


# virtual methods
.method public getCallForwardStatus()[Lorg/codeaurora/ims/CallForwardStatus;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->callForwardStatus:[Lorg/codeaurora/ims/CallForwardStatus;

    return-object v0
.end method

.method public getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " { CallForwardStatusInfo :: sipErrorInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Individual status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/CallForwardStatusInfo;->callForwardStatus:[Lorg/codeaurora/ims/CallForwardStatus;

    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    return-object v0
.end method
