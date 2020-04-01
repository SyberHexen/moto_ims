.class public Lorg/codeaurora/ims/CallForwardStatus;
.super Ljava/lang/Object;
.source "CallForwardStatus.java"


# instance fields
.field private final FAILED:I

.field private final INVALID:I

.field private reason:I

.field private sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 16
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/CallForwardStatus;->INVALID:I

    .line 17
    const/4 v2, 0x1

    iput v2, p0, Lorg/codeaurora/ims/CallForwardStatus;->FAILED:I

    .line 26
    iput v1, p0, Lorg/codeaurora/ims/CallForwardStatus;->reason:I

    .line 27
    iput v2, p0, Lorg/codeaurora/ims/CallForwardStatus;->status:I

    .line 28
    iput-object v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 29
    return-void
.end method

.method public constructor <init>(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reason"    # I
    .param p2, "status"    # I
    .param p3, "sipError"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->INVALID:I

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->FAILED:I

    .line 20
    iput p1, p0, Lorg/codeaurora/ims/CallForwardStatus;->reason:I

    .line 21
    iput p2, p0, Lorg/codeaurora/ims/CallForwardStatus;->status:I

    .line 22
    iput-object p3, p0, Lorg/codeaurora/ims/CallForwardStatus;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 23
    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 1

    .line 37
    iget v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->reason:I

    return v0
.end method

.method public getSipErrorInfo()Landroid/telephony/ims/ImsReasonInfo;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/codeaurora/ims/CallForwardStatus;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ CallForwardStatus : reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/CallForwardStatus;->reason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/CallForwardStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ImsReasonInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/CallForwardStatus;->sipErrorInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
