.class public Lorg/codeaurora/ims/CapabilityStatus;
.super Ljava/lang/Object;
.source "CapabilityStatus.java"


# static fields
.field private static final INVALID_CAPABILITY:I = -0x1


# instance fields
.field private mCapability:I

.field private mRadioTech:I

.field private mStatus:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "status"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lorg/codeaurora/ims/CapabilityStatus;->mCapability:I

    .line 36
    iput p2, p0, Lorg/codeaurora/ims/CapabilityStatus;->mRadioTech:I

    .line 37
    iput p3, p0, Lorg/codeaurora/ims/CapabilityStatus;->mStatus:I

    .line 38
    return-void
.end method


# virtual methods
.method public getCapability()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/codeaurora/ims/CapabilityStatus;->mCapability:I

    return v0
.end method

.method public getRadioTech()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/codeaurora/ims/CapabilityStatus;->mRadioTech:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/codeaurora/ims/CapabilityStatus;->mStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/CapabilityStatus;->mCapability:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/codeaurora/ims/CapabilityStatus;->mRadioTech:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/CapabilityStatus;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
