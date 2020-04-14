.class public final Lorg/codeaurora/ims/ImsRegistrationInfo;
.super Ljava/lang/Object;
.source "ImsRegistrationInfo.java"


# static fields
.field public static final INVALID:I = -0x1

.field public static final NOT_REGISTERED:I = 0x2

.field public static final REGISTERED:I = 0x1

.field public static final REGISTERING:I = 0x3


# instance fields
.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mPAssociatedUris:Ljava/lang/String;

.field private mRadioTech:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mState:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mErrorCode:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 46
    const/16 v1, 0x14

    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mRadioTech:I

    .line 47
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mPAssociatedUris:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPAssociatedUris()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mPAssociatedUris:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioTech()I
    .locals 1

    .line 82
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mRadioTech:I

    return v0
.end method

.method public getState()I
    .locals 2

    .line 55
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mState:I

    .line 58
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mState:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "value"    # I

    .line 62
    iput p1, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mErrorCode:I

    .line 63
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPAssociatedUris(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mPAssociatedUris:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setRadioTech(I)V
    .locals 0
    .param p1, "value"    # I

    .line 78
    iput p1, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mRadioTech:I

    .line 79
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "value"    # I

    .line 51
    iput p1, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mState:I

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsRegistrationInfo state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " radioTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mRadioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pAssociatedUris"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationInfo;->mPAssociatedUris:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
