.class public final Lorg/codeaurora/ims/ParticipantStatusDetails;
.super Ljava/lang/Object;
.source "ParticipantStatusDetails.java"


# static fields
.field public static final ADD:I = 0x1

.field public static final INVALID:I = -0x1

.field public static final REMOVE:I


# instance fields
.field private mCallId:I

.field private mIsExplicitTransfer:Z

.field private mOperation:I

.field private mParticipantUri:Ljava/lang/String;

.field private mSipStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const v0, 0x7fffffff

    iput v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mCallId:I

    .line 32
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mOperation:I

    .line 33
    iput v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mSipStatus:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mParticipantUri:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mIsExplicitTransfer:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getCallId()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mCallId:I

    return v0
.end method

.method public getIsEct()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mIsExplicitTransfer:Z

    return v0
.end method

.method public getOperation()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mOperation:I

    return v0
.end method

.method public getParticipantUri()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mParticipantUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSipStatus()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mSipStatus:I

    return v0
.end method

.method public setCallId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 39
    iput p1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mCallId:I

    .line 40
    return-void
.end method

.method public setIsEct(Z)V
    .locals 0
    .param p1, "isTransfer"    # Z

    .line 71
    iput-boolean p1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mIsExplicitTransfer:Z

    .line 72
    return-void
.end method

.method public setOperation(I)V
    .locals 0
    .param p1, "operation"    # I

    .line 47
    iput p1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mOperation:I

    .line 48
    return-void
.end method

.method public setParticipantUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mParticipantUri:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSipStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 55
    iput p1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mSipStatus:I

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParticipantStatusDetails callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mOperation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sipStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mSipStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " participantUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mParticipantUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isExplicitTransfer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ParticipantStatusDetails;->mIsExplicitTransfer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
