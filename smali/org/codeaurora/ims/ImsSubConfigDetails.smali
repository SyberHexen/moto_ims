.class public Lorg/codeaurora/ims/ImsSubConfigDetails;
.super Ljava/lang/Object;
.source "ImsSubConfigDetails.java"


# instance fields
.field private final mImsStackEnabled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSimultStackCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mSimultStackCount:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mImsStackEnabled:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public addImsStackEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 45
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mImsStackEnabled:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public getImsStackEnabledList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mImsStackEnabled:Ljava/util/List;

    return-object v0
.end method

.method public getSimultStackCount()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mSimultStackCount:I

    return v0
.end method

.method public setSimultStackCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 37
    iput p1, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mSimultStackCount:I

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsSubConfigDetails simultStackCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mSimultStackCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mImsStackEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubConfigDetails;->mImsStackEnabled:Ljava/util/List;

    .line 55
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    return-object v0
.end method
