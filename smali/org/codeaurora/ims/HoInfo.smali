.class public Lorg/codeaurora/ims/HoInfo;
.super Ljava/lang/Object;
.source "HoInfo.java"


# static fields
.field public static final CANCEL:I = 0x3

.field public static final COMPLETE_FAIL:I = 0x2

.field public static final COMPLETE_SUCCESS:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final NOT_TRIGGERED:I = 0x4

.field public static final NOT_TRIGGERED_MOBILE_DATA_OFF:I = 0x5

.field public static final START:I


# instance fields
.field private mErrorCode:Ljava/lang/String;

.field private mErrorMessage:Ljava/lang/String;

.field private mExtraInfo:[B

.field private mExtraType:I

.field private mSrcTech:I

.field private mTargetTech:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/HoInfo;->mType:I

    .line 44
    const v1, 0x7fffffff

    iput v1, p0, Lorg/codeaurora/ims/HoInfo;->mSrcTech:I

    .line 45
    iput v1, p0, Lorg/codeaurora/ims/HoInfo;->mTargetTech:I

    .line 46
    iput v0, p0, Lorg/codeaurora/ims/HoInfo;->mExtraType:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/HoInfo;->mExtraInfo:[B

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/HoInfo;->mErrorCode:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/codeaurora/ims/HoInfo;->mErrorMessage:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/codeaurora/ims/HoInfo;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/codeaurora/ims/HoInfo;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()[B
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/codeaurora/ims/HoInfo;->mExtraInfo:[B

    return-object v0
.end method

.method public getExtraType()I
    .locals 1

    .line 81
    iget v0, p0, Lorg/codeaurora/ims/HoInfo;->mExtraType:I

    return v0
.end method

.method public getSrcTech()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/codeaurora/ims/HoInfo;->mSrcTech:I

    return v0
.end method

.method public getTargetTech()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/codeaurora/ims/HoInfo;->mTargetTech:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/codeaurora/ims/HoInfo;->mType:I

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lorg/codeaurora/ims/HoInfo;->mErrorCode:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lorg/codeaurora/ims/HoInfo;->mErrorMessage:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setExtra(I[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "info"    # [B

    .line 93
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/HoInfo;->setExtraType(I)V

    .line 94
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/HoInfo;->setExtraInfo([B)V

    .line 95
    return-void
.end method

.method public setExtraInfo([B)V
    .locals 0
    .param p1, "value"    # [B

    .line 85
    iput-object p1, p0, Lorg/codeaurora/ims/HoInfo;->mExtraInfo:[B

    .line 86
    return-void
.end method

.method public setExtraType(I)V
    .locals 0
    .param p1, "value"    # I

    .line 77
    iput p1, p0, Lorg/codeaurora/ims/HoInfo;->mExtraType:I

    .line 78
    return-void
.end method

.method public setSrcTech(I)V
    .locals 0
    .param p1, "value"    # I

    .line 61
    iput p1, p0, Lorg/codeaurora/ims/HoInfo;->mSrcTech:I

    .line 62
    return-void
.end method

.method public setTargetTech(I)V
    .locals 0
    .param p1, "value"    # I

    .line 69
    iput p1, p0, Lorg/codeaurora/ims/HoInfo;->mTargetTech:I

    .line 70
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "value"    # I

    .line 53
    iput p1, p0, Lorg/codeaurora/ims/HoInfo;->mType:I

    .line 54
    return-void
.end method
