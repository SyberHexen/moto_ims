.class public final Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
.super Ljava/lang/Object;
.source "RegistrationBlockStatusInfo.java"


# instance fields
.field private mIsOnWlan:Lorg/codeaurora/ims/BlockStatusInfo;

.field private mIsOnWwan:Lorg/codeaurora/ims/BlockStatusInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;-><init>(Lorg/codeaurora/ims/BlockStatusInfo;Lorg/codeaurora/ims/BlockStatusInfo;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/BlockStatusInfo;Lorg/codeaurora/ims/BlockStatusInfo;)V
    .locals 0
    .param p1, "onWwan"    # Lorg/codeaurora/ims/BlockStatusInfo;
    .param p2, "onWlan"    # Lorg/codeaurora/ims/BlockStatusInfo;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->mIsOnWwan:Lorg/codeaurora/ims/BlockStatusInfo;

    .line 21
    iput-object p2, p0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->mIsOnWlan:Lorg/codeaurora/ims/BlockStatusInfo;

    .line 22
    return-void
.end method


# virtual methods
.method public getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->mIsOnWlan:Lorg/codeaurora/ims/BlockStatusInfo;

    return-object v0
.end method

.method public getStatusOnWwan()Lorg/codeaurora/ims/BlockStatusInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->mIsOnWwan:Lorg/codeaurora/ims/BlockStatusInfo;

    return-object v0
.end method

.method public setStatusOnWlan(Lorg/codeaurora/ims/BlockStatusInfo;)V
    .locals 0
    .param p1, "value"    # Lorg/codeaurora/ims/BlockStatusInfo;

    .line 33
    iput-object p1, p0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->mIsOnWlan:Lorg/codeaurora/ims/BlockStatusInfo;

    .line 34
    return-void
.end method

.method public setStatusOnWwan(Lorg/codeaurora/ims/BlockStatusInfo;)V
    .locals 0
    .param p1, "value"    # Lorg/codeaurora/ims/BlockStatusInfo;

    .line 25
    iput-object p1, p0, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->mIsOnWwan:Lorg/codeaurora/ims/BlockStatusInfo;

    .line 26
    return-void
.end method
