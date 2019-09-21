.class public final Lorg/codeaurora/ims/BlockReasonDetailsInfo;
.super Ljava/lang/Object;
.source "BlockReasonDetailsInfo.java"


# static fields
.field public static final REG_FAILURE_REASON_TYPE_3GPP_SPEC_DEFINED:I = 0x5

.field public static final REG_FAILURE_REASON_TYPE_CALL_MANAGER_DEFINED:I = 0x4

.field public static final REG_FAILURE_REASON_TYPE_EHRPD:I = 0x7

.field public static final REG_FAILURE_REASON_TYPE_HANDOFF:I = 0xa

.field public static final REG_FAILURE_REASON_TYPE_INTERNAL:I = 0x3

.field public static final REG_FAILURE_REASON_TYPE_INVALID:I = -0x1

.field public static final REG_FAILURE_REASON_TYPE_IPV6:I = 0x8

.field public static final REG_FAILURE_REASON_TYPE_IWLAN:I = 0x9

.field public static final REG_FAILURE_REASON_TYPE_MOBILE_IP:I = 0x2

.field public static final REG_FAILURE_REASON_TYPE_PPP:I = 0x6

.field public static final REG_FAILURE_REASON_TYPE_UNSPECIFIED:I = 0x1


# instance fields
.field private mRegFailureReason:I

.field private mRegFailureReasonType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    const/4 v0, -0x1

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;-><init>(II)V

    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "reasonType"    # I
    .param p2, "reason"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->mRegFailureReasonType:I

    .line 33
    iput p2, p0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->mRegFailureReason:I

    .line 34
    return-void
.end method


# virtual methods
.method public getRegFailureReason()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->mRegFailureReason:I

    return v0
.end method

.method public getRegFailureReasonType()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->mRegFailureReasonType:I

    return v0
.end method

.method public setRegFailureReason(I)V
    .locals 0
    .param p1, "value"    # I

    .line 45
    iput p1, p0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->mRegFailureReason:I

    .line 46
    return-void
.end method

.method public setRegFailureReasonType(I)V
    .locals 0
    .param p1, "value"    # I

    .line 37
    iput p1, p0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->mRegFailureReasonType:I

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlockReasonDetailsInfo regFailureReasonType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->mRegFailureReasonType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " regFailureReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->mRegFailureReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
