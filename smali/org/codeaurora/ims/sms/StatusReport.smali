.class public Lorg/codeaurora/ims/sms/StatusReport;
.super Ljava/lang/Object;
.source "StatusReport.java"


# instance fields
.field private final mFormat:Ljava/lang/String;

.field private final mMessageRef:I

.field private final mPdu:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 0
    .param p1, "messageRef"    # I
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "pdu"    # [B

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lorg/codeaurora/ims/sms/StatusReport;->mMessageRef:I

    .line 17
    iput-object p2, p0, Lorg/codeaurora/ims/sms/StatusReport;->mFormat:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lorg/codeaurora/ims/sms/StatusReport;->mPdu:[B

    .line 19
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/codeaurora/ims/sms/StatusReport;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgRef()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/codeaurora/ims/sms/StatusReport;->mMessageRef:I

    return v0
.end method

.method public getPdu()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/codeaurora/ims/sms/StatusReport;->mPdu:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ mMessageRef = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/sms/StatusReport;->mMessageRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/sms/StatusReport;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
