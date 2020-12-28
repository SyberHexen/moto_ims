.class public Lorg/codeaurora/ims/QtiImsExt;
.super Lorg/codeaurora/ims/QtiImsExtBase;
.source "QtiImsExt.java"


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceSub"    # [Lorg/codeaurora/ims/ImsServiceSub;

    .line 29
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtBase;-><init>()V

    .line 22
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 23
    const-string v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->READ_PHONE_STATE:Ljava/lang/String;

    .line 24
    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 32
    return-void
.end method


# virtual methods
.method protected onGetCallForwardUncondTimer(IIILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "reason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 46
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getCallForwardUncondTimer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceSub;->getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 49
    return-void
.end method

.method protected onGetHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 114
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getHandoverConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 116
    return-void
.end method

.method protected onGetImsFeatureState(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 199
    const-string v0, "getImsFeatureState"

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "no READ_PHONE_STATE permission, check READ_PRIVILEGED_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v2, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsFeatureState()I

    move-result v0

    return v0
.end method

.method protected onGetMultiIdentityInterface(I)Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;
    .locals 3
    .param p1, "phoneId"    # I

    .line 184
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "onGetMultiIdentityInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getMultiIdentityImpl()Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    move-result-object v0

    .line 186
    .local v0, "v":Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsMultiIdentityControllerBase;->getBinder()Lorg/codeaurora/ims/internal/IImsMultiIdentityInterface;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected onGetRcsAppConfig(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 153
    const-string v0, "getRcsAppConfig"

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "no READ_PHONE_STATE permission, check READ_PRIVILEGED_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x48

    .line 161
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    return v0

    .line 162
    :catch_1
    move-exception v0

    .line 163
    .local v0, "re":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetRcsAppConfig :: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    .end local v0    # "re":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method protected onGetScreenShareController(I)Lorg/codeaurora/ims/internal/IImsScreenShareController;
    .locals 3
    .param p1, "phoneId"    # I

    .line 191
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "onGetScreenShareController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getScreenShareController()Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    move-result-object v0

    .line 193
    .local v0, "v":Lorg/codeaurora/ims/ImsScreenShareControllerBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsScreenShareControllerBase;->getBinder()Lorg/codeaurora/ims/internal/IImsScreenShareController;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected onGetVvmAppConfig(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 126
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getVvmAppConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x49

    .line 129
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "re":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetVvmAppConfig :: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .end local v0    # "re":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method protected onQuerySsacStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 88
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "querySsacStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 90
    return-void
.end method

.method protected onQueryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 108
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "queryVoltePreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->queryVoltePreference(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 110
    return-void
.end method

.method protected onQueryVopsStatus(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 79
    const-string v0, "queryVopsStatus"

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 84
    return-void
.end method

.method protected onRegisterForParticipantStatusInfo(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 94
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "registerForParticipantStatusInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 97
    return-void
.end method

.method protected onResumePendingCall(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "videoState"    # I

    .line 53
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "resumePendingCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->resumePendingCall(I)V

    .line 55
    return-void
.end method

.method protected onSendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 60
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "sendCallTransferRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceSub;->sendCallTransferRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 62
    return-void
.end method

.method protected onSendCancelModifyCall(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 66
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "sendCancelModifyCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->sendCancelModifyCall(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 68
    return-void
.end method

.method protected onSetAnswerExtras(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 212
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "onSetAnswerExtras"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setAnswerExtras(Landroid/os/Bundle;)V

    .line 214
    return-void
.end method

.method protected onSetCallBarring(IZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "operationType"    # Z
    .param p3, "facilityType"    # Ljava/lang/String;
    .param p4, "cbNumListInfo"    # [Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "serviceClass"    # I
    .param p7, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 220
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "SetCallBarring"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v1, v0, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v1 .. v7}, Lorg/codeaurora/ims/ImsServiceSub;->setCallBarring(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 223
    return-void
.end method

.method protected onSetCallForwardUncondTimer(IIIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I
    .param p6, "action"    # I
    .param p7, "condition"    # I
    .param p8, "serviceClass"    # I
    .param p9, "number"    # Ljava/lang/String;
    .param p10, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 38
    move-object v0, p0

    iget-object v1, v0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const-string v3, "setCallForwardUncondTimer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v1, v0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v2, v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v2 .. v11}, Lorg/codeaurora/ims/ImsServiceSub;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 41
    return-void
.end method

.method protected onSetHandoverConfig(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "hoConfig"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 120
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setHandoverConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 122
    return-void
.end method

.method protected onSetRcsAppConfig(II)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "defaultSmsApp"    # I

    .line 171
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setRcsAppConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x48

    invoke-virtual {v0, v1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "re":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetRcsAppConfig :: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .end local v0    # "re":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method protected onSetUssdInfoListener(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 72
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setUssdInfoListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setUssdInfoListener(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 74
    return-void
.end method

.method protected onSetVvmAppConfig(II)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "defaultVvmApp"    # I

    .line 139
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setVvmAppConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    const/16 v1, 0x49

    invoke-virtual {v0, v1, p2}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "re":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetVvmAppConfig :: Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .end local v0    # "re":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method protected onUpdateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "preference"    # I
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/IQtiImsExtListener;

    .line 102
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "updateVoltePreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    .line 104
    return-void
.end method
