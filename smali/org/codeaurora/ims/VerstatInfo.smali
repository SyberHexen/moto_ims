.class public Lorg/codeaurora/ims/VerstatInfo;
.super Ljava/lang/Object;
.source "VerstatInfo.java"


# static fields
.field public static final VERSTAT_VERIFICATION_FAIL:I = 0x2

.field public static final VERSTAT_VERIFICATION_NONE:I = 0x0

.field public static final VERSTAT_VERIFICATION_PASS:I = 0x1


# instance fields
.field private canMarkUnwantedCall:Z

.field private verstatVerificationStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall:Z

    .line 20
    iput v0, p0, Lorg/codeaurora/ims/VerstatInfo;->verstatVerificationStatus:I

    .line 21
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "canMarkUnwantedCall"    # Z
    .param p2, "verstatVerificationStatus"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall:Z

    .line 26
    iput p2, p0, Lorg/codeaurora/ims/VerstatInfo;->verstatVerificationStatus:I

    .line 27
    return-void
.end method


# virtual methods
.method public canMarkUnwantedCall()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall:Z

    return v0
.end method

.method public getVerstatVerificationStatus()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/codeaurora/ims/VerstatInfo;->verstatVerificationStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerstatInfo : canMarkUnwantedCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , verstatVerificationStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/VerstatInfo;->verstatVerificationStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
