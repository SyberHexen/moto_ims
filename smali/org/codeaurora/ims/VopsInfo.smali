.class public final Lorg/codeaurora/ims/VopsInfo;
.super Ljava/lang/Object;
.source "VopsInfo.java"


# instance fields
.field private mVopsEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/VopsInfo;->mVopsEnabled:Z

    .line 15
    return-void
.end method


# virtual methods
.method public isVopsEnabled()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lorg/codeaurora/ims/VopsInfo;->mVopsEnabled:Z

    return v0
.end method

.method public setIsVopsEnabled(Z)V
    .locals 0
    .param p1, "isVopsEnabled"    # Z

    .line 19
    iput-boolean p1, p0, Lorg/codeaurora/ims/VopsInfo;->mVopsEnabled:Z

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VopsInfo vopsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/VopsInfo;->mVopsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
