.class public final Lorg/codeaurora/ims/UssdInfo;
.super Ljava/lang/Object;
.source "UssdInfo.java"


# static fields
.field public static final INVALID:I = -0x1

.field public static final LOCAL_CLIENT:I = 0x3

.field public static final NOTIFY:I = 0x0

.field public static final NOT_SUPPORTED:I = 0x4

.field public static final NW_RELEASE:I = 0x2

.field public static final NW_TIMEOUT:I = 0x5

.field public static final REQUEST:I = 0x1


# instance fields
.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/UssdInfo;->mType:I

    .line 42
    iput v0, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorCode:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorMessage:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/codeaurora/ims/UssdInfo;->mType:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 51
    iput p1, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorCode:I

    .line 52
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorMessage:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 47
    iput p1, p0, Lorg/codeaurora/ims/UssdInfo;->mType:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UssdInfo type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/UssdInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
