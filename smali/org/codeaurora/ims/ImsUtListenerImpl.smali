.class public Lorg/codeaurora/ims/ImsUtListenerImpl;
.super Ljava/lang/Object;
.source "ImsUtListenerImpl.java"


# instance fields
.field public mListener:Landroid/telephony/ims/ImsUtListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSupplementaryServiceIndication$7$ImsUtListenerImpl(Landroid/telephony/ims/ImsSsData;)V
    .locals 2
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 114
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSupplementaryServiceIndication :: ssData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsUtListener;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 119
    :cond_0
    return-void
.end method

.method public synthetic lambda$utConfigurationCallBarringQueried$4$ImsUtListenerImpl(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 73
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utConfigurationCallBarringQueried :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cbInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 78
    :cond_0
    return-void
.end method

.method public synthetic lambda$utConfigurationCallForwardQueried$5$ImsUtListenerImpl(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 87
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUtConfigurationCallForwardQueried :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cfInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 92
    :cond_0
    return-void
.end method

.method public synthetic lambda$utConfigurationCallWaitingQueried$6$ImsUtListenerImpl(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 101
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utConfigurationCallWaitingQueried :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cwInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 106
    :cond_0
    return-void
.end method

.method public synthetic lambda$utConfigurationQueried$2$ImsUtListenerImpl(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "ssInfo"    # Landroid/os/Bundle;

    .line 48
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utConfigurationQueried :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ssInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V

    .line 53
    :cond_0
    return-void
.end method

.method public synthetic lambda$utConfigurationQueryFailed$3$ImsUtListenerImpl(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 59
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utConfigurationQueryFailed :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 64
    :cond_0
    return-void
.end method

.method public synthetic lambda$utConfigurationUpdateFailed$1$ImsUtListenerImpl(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 34
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utConfigurationUpdateFailed :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 39
    :cond_0
    return-void
.end method

.method public synthetic lambda$utConfigurationUpdated$0$ImsUtListenerImpl(I)V
    .locals 2
    .param p1, "id"    # I

    .line 24
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "utConfigurationUpdated :: id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUtListenerImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsUtListener;->onUtConfigurationUpdated(I)V

    .line 28
    :cond_0
    return-void
.end method

.method public onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .locals 1
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;

    .line 113
    new-instance v0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$qGq-9QKQgjclOsub0oc3TDlZGsc;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$qGq-9QKQgjclOsub0oc3TDlZGsc;-><init>(Lorg/codeaurora/ims/ImsUtListenerImpl;Landroid/telephony/ims/ImsSsData;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerImpl;->startThread(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method startThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 123
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ImsUtListenerImplThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 124
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method

.method public utConfigurationCallBarringQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 72
    new-instance v0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$ca1uXN9C9JCfOxE-EJ1BeMHtoCs;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$ca1uXN9C9JCfOxE-EJ1BeMHtoCs;-><init>(Lorg/codeaurora/ims/ImsUtListenerImpl;I[Landroid/telephony/ims/ImsSsInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerImpl;->startThread(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public utConfigurationCallForwardQueried(I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;

    .line 86
    new-instance v0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$k_Hu50r6tfbK6yoIuBJS3dnxi7E;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$k_Hu50r6tfbK6yoIuBJS3dnxi7E;-><init>(Lorg/codeaurora/ims/ImsUtListenerImpl;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerImpl;->startThread(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public utConfigurationCallWaitingQueried(I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;

    .line 100
    new-instance v0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$qVaNK7VgXQJ_kTp4ThUVnYWYTVs;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$qVaNK7VgXQJ_kTp4ThUVnYWYTVs;-><init>(Lorg/codeaurora/ims/ImsUtListenerImpl;I[Landroid/telephony/ims/ImsSsInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerImpl;->startThread(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method public utConfigurationQueried(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "ssInfo"    # Landroid/os/Bundle;

    .line 47
    new-instance v0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$yEzzOoy14MK1565ZT7mIl3_mNx0;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$yEzzOoy14MK1565ZT7mIl3_mNx0;-><init>(Lorg/codeaurora/ims/ImsUtListenerImpl;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerImpl;->startThread(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public utConfigurationQueryFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 58
    new-instance v0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$q5HYAs1kjKsm8_IEnNuTKvN_LG4;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$q5HYAs1kjKsm8_IEnNuTKvN_LG4;-><init>(Lorg/codeaurora/ims/ImsUtListenerImpl;ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerImpl;->startThread(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public utConfigurationUpdateFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "error"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 33
    new-instance v0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$u2i6BuUtTA-I1x9Pfi4pkLzQDcg;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$u2i6BuUtTA-I1x9Pfi4pkLzQDcg;-><init>(Lorg/codeaurora/ims/ImsUtListenerImpl;ILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerImpl;->startThread(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method

.method public utConfigurationUpdated(I)V
    .locals 1
    .param p1, "id"    # I

    .line 23
    new-instance v0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$ooSi6lzSBlYw45E04i5FLNSQifI;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$ooSi6lzSBlYw45E04i5FLNSQifI;-><init>(Lorg/codeaurora/ims/ImsUtListenerImpl;I)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsUtListenerImpl;->startThread(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method
