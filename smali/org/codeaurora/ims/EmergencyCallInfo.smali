.class public final Lorg/codeaurora/ims/EmergencyCallInfo;
.super Ljava/lang/Object;
.source "EmergencyCallInfo.java"


# instance fields
.field private mEmergencyCallRouting:I

.field private mEmergencyCallTesting:Z

.field private mEmergencyServiceCategories:I

.field private mEmergencyUrns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasKnownUserIntentEmergency:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/EmergencyCallInfo;-><init>(ILjava/util/List;IZZ)V

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/util/List;IZZ)V
    .locals 0
    .param p1, "categories"    # I
    .param p3, "routing"    # I
    .param p4, "isTesting"    # Z
    .param p5, "hasIntentEmergency"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZZ)V"
        }
    .end annotation

    .line 39
    .local p2, "urns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyServiceCategories:I

    .line 41
    iput-object p2, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyUrns:Ljava/util/List;

    .line 42
    iput p3, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyCallRouting:I

    .line 43
    iput-boolean p4, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyCallTesting:Z

    .line 44
    iput-boolean p5, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mHasKnownUserIntentEmergency:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getEmergencyCallRouting()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyCallRouting:I

    return v0
.end method

.method public getEmergencyServiceCategories()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyServiceCategories:I

    return v0
.end method

.method public getEmergencyUrns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyUrns:Ljava/util/List;

    return-object v0
.end method

.method public hasKnownUserIntentEmergency()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mHasKnownUserIntentEmergency:Z

    return v0
.end method

.method public isEmergencyCallTesting()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyCallTesting:Z

    return v0
.end method

.method public setEmergencyCallRouting(I)V
    .locals 0
    .param p1, "routing"    # I

    .line 58
    iput p1, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyCallRouting:I

    .line 59
    return-void
.end method

.method public setEmergencyCallTesting(Z)V
    .locals 0
    .param p1, "isTesting"    # Z

    .line 62
    iput-boolean p1, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyCallTesting:Z

    .line 63
    return-void
.end method

.method public setEmergencyServiceCategories(I)V
    .locals 0
    .param p1, "categories"    # I

    .line 49
    iput p1, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyServiceCategories:I

    .line 50
    return-void
.end method

.method public setEmergencyUrns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "urns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyUrns:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setHasKnownUserIntentEmergency(Z)V
    .locals 0
    .param p1, "hasIntentEmergency"    # Z

    .line 66
    iput-boolean p1, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mHasKnownUserIntentEmergency:Z

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmergencyCallInfo mEmergencyServiceCategories "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyServiceCategories:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mEmergencyUrns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mEmergencyCallRouting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyCallRouting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mEmergencyCallTesting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mEmergencyCallTesting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mHasKnownUserIntentEmergency "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/EmergencyCallInfo;->mHasKnownUserIntentEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
