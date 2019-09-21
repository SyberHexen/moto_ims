.class public Lorg/codeaurora/ims/sms/IncomingSms;
.super Ljava/lang/Object;
.source "IncomingSms.java"


# instance fields
.field private final mFormat:Ljava/lang/String;

.field private final mPdu:[B

.field private final mVerstat:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "pdu"    # [B
    .param p3, "verstat"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mFormat:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mPdu:[B

    .line 18
    iput p3, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mVerstat:I

    .line 19
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mPdu:[B

    return-object v0
.end method

.method public getVerstat()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mVerstat:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ mFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " verstat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codeaurora/ims/sms/IncomingSms;->mVerstat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
