.class public Lorg/codeaurora/ims/SuppService;
.super Ljava/lang/Object;
.source "SuppService.java"


# static fields
.field public static final IP_PRESENTATION_NUM_ALLOWED:I = 0x0

.field public static final IP_PRESENTATION_NUM_DEFAULT:I = 0x2

.field public static final IP_PRESENTATION_NUM_RESTRICTED:I = 0x1

.field public static final NOT_PROVISIONED:I = 0x0

.field public static final PROVISIONED:I = 0x1

.field public static final STATUS_UNKNOWN:I = 0x2


# instance fields
.field private mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

.field private mPresentation:I

.field private mProvisionStatus:I

.field private mServiceClassStatus:I

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 30
    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/SuppService;-><init>(IIIILandroid/telephony/ims/ImsReasonInfo;)V

    .line 31
    return-void
.end method

.method public constructor <init>(IIIILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "serviceClassStatus"    # I
    .param p2, "provisionStatus"    # I
    .param p3, "status"    # I
    .param p4, "presentation"    # I
    .param p5, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lorg/codeaurora/ims/SuppService;->mServiceClassStatus:I

    .line 36
    iput p2, p0, Lorg/codeaurora/ims/SuppService;->mProvisionStatus:I

    .line 37
    iput p3, p0, Lorg/codeaurora/ims/SuppService;->mStatus:I

    .line 38
    iput p4, p0, Lorg/codeaurora/ims/SuppService;->mPresentation:I

    .line 39
    iput-object p5, p0, Lorg/codeaurora/ims/SuppService;->mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

    .line 40
    return-void
.end method


# virtual methods
.method public getErrorDetails()Landroid/telephony/ims/ImsReasonInfo;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/codeaurora/ims/SuppService;->mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

    return-object v0
.end method

.method public getPresentation()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/codeaurora/ims/SuppService;->mPresentation:I

    return v0
.end method

.method public getProvisionStatus()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/codeaurora/ims/SuppService;->mProvisionStatus:I

    return v0
.end method

.method public getServiceClassStatus()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/codeaurora/ims/SuppService;->mServiceClassStatus:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/codeaurora/ims/SuppService;->mStatus:I

    return v0
.end method

.method public setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "errorInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 75
    iput-object p1, p0, Lorg/codeaurora/ims/SuppService;->mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

    .line 76
    return-void
.end method

.method public setPresentation(I)V
    .locals 0
    .param p1, "presentation"    # I

    .line 67
    iput p1, p0, Lorg/codeaurora/ims/SuppService;->mPresentation:I

    .line 68
    return-void
.end method

.method public setProvisionStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 51
    iput p1, p0, Lorg/codeaurora/ims/SuppService;->mProvisionStatus:I

    .line 52
    return-void
.end method

.method public setServiceClassStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 43
    iput p1, p0, Lorg/codeaurora/ims/SuppService;->mServiceClassStatus:I

    .line 44
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 59
    iput p1, p0, Lorg/codeaurora/ims/SuppService;->mStatus:I

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuppService status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/SuppService;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/SuppService;->mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/SuppService;->mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

    .line 84
    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/SuppService;->mErrorDetails:Landroid/telephony/ims/ImsReasonInfo;

    .line 85
    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    return-object v0
.end method
