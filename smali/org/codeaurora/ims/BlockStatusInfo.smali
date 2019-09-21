.class public final Lorg/codeaurora/ims/BlockStatusInfo;
.super Ljava/lang/Object;
.source "BlockStatusInfo.java"


# static fields
.field public static final REASON_HANDOVER_FAILURE:I = 0x3

.field public static final REASON_INVALID:I = -0x1

.field public static final REASON_OTHER_FAILURE:I = 0x4

.field public static final REASON_PDP_FAILURE:I = 0x1

.field public static final REASON_REGISTRATION_FAILURE:I = 0x2


# instance fields
.field private mReason:I

.field private mReasonDetails:Lorg/codeaurora/ims/BlockReasonDetailsInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/BlockStatusInfo;-><init>(ILorg/codeaurora/ims/BlockReasonDetailsInfo;)V

    .line 23
    return-void
.end method

.method public constructor <init>(ILorg/codeaurora/ims/BlockReasonDetailsInfo;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "info"    # Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lorg/codeaurora/ims/BlockStatusInfo;->mReason:I

    .line 27
    iput-object p2, p0, Lorg/codeaurora/ims/BlockStatusInfo;->mReasonDetails:Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    .line 28
    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 1

    .line 35
    iget v0, p0, Lorg/codeaurora/ims/BlockStatusInfo;->mReason:I

    return v0
.end method

.method public getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/codeaurora/ims/BlockStatusInfo;->mReasonDetails:Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    return-object v0
.end method

.method public setReason(I)V
    .locals 0
    .param p1, "value"    # I

    .line 31
    iput p1, p0, Lorg/codeaurora/ims/BlockStatusInfo;->mReason:I

    .line 32
    return-void
.end method

.method public setReasonDetails(Lorg/codeaurora/ims/BlockReasonDetailsInfo;)V
    .locals 0
    .param p1, "value"    # Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    .line 39
    iput-object p1, p0, Lorg/codeaurora/ims/BlockStatusInfo;->mReasonDetails:Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlockStatusInfo blockReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/BlockStatusInfo;->mReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
