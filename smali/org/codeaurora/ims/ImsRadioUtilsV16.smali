.class public Lorg/codeaurora/ims/ImsRadioUtilsV16;
.super Ljava/lang/Object;
.source "ImsRadioUtilsV16.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    .locals 2
    .param p0, "item"    # I
    .param p1, "boolValue"    # Z
    .param p2, "intValue"    # I
    .param p3, "stringValue"    # Ljava/lang/String;
    .param p4, "errorCause"    # I

    .line 75
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 77
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->configInfoItemToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->hasBoolValue:Z

    .line 79
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->boolValue:Z

    .line 80
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->intValue:I

    .line 81
    if-eqz p3, :cond_0

    .line 82
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 84
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->errorCause:I

    .line 86
    return-object v0
.end method

.method public static configInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;
    .locals 3
    .param p0, "configInfo"    # Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigItem;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigItem;-><init>()V

    .line 37
    .local v0, "config":Lorg/codeaurora/ims/ImsConfigItem;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->configInfoItemFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setItem(I)V

    .line 38
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->hasBoolValue:Z

    if-eqz v1, :cond_1

    .line 39
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->boolValue:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setBoolValue(Z)V

    .line 42
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->intValue:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 43
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->intValue:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setIntValue(I)V

    .line 46
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setStringValue(Ljava/lang/String;)V

    .line 48
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->errorCause:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 49
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->errorCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setErrorCause(I)V

    .line 52
    :cond_3
    return-object v0
.end method

.method public static configInfoItemFromHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 56
    const/16 v0, 0x4c

    if-eq p0, v0, :cond_0

    .line 60
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->configInfoItemFromHal(I)I

    move-result v0

    return v0

    .line 58
    :cond_0
    const/16 v0, 0x4a

    return v0
.end method

.method public static configInfoItemToHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 65
    const/16 v0, 0x4a

    if-eq p0, v0, :cond_0

    .line 69
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->configInfoItemToHal(I)I

    move-result v0

    return v0

    .line 67
    :cond_0
    const/16 v0, 0x4c

    return v0
.end method

.method public static isConfigItemIntroducedInV16(I)Z
    .locals 1
    .param p0, "item"    # I

    .line 90
    const/16 v0, 0x4c

    if-eq p0, v0, :cond_0

    .line 94
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static migarateVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)V
    .locals 1
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;
    .param p1, "to"    # Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 264
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->canMarkUnwantedCall:Z

    iput-boolean v0, p1, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->canMarkUnwantedCall:Z

    .line 265
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->verificationStatus:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->verificationStatus:I

    .line 266
    return-void
.end method

.method private static migrateAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;)Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    .line 240
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;-><init>()V

    .line 241
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->networkMode:I

    .line 242
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->status:I

    .line 243
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->restrictCause:I

    .line 244
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->hasRegistration:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->hasRegistration:Z

    .line 245
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateRegistrationInfo(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    .line 246
    return-object v0
.end method

.method private static migrateAccTechStatus(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;",
            ">;)V"
        }
    .end annotation

    .line 234
    .local p0, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;>;"
    .local p1, "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    .line 235
    .local v1, "status":Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;)Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    .end local v1    # "status":Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;
    :cond_0
    return-void
.end method

.method public static migrateCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 174
    if-nez p0, :cond_0

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;-><init>()V

    .line 178
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callType:I

    .line 179
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callDomain:I

    .line 180
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extrasLength:I

    .line 182
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    .local v2, "extra":Ljava/lang/String;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 186
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateServiceStatusInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 187
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateServiceStatusInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 189
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callSubstate:I

    .line 190
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->mediaId:I

    .line 191
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->causeCode:I

    .line 192
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->rttMode:I

    .line 193
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 194
    return-object v0
.end method

.method private static migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;

    .line 122
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;-><init>()V

    .line 123
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->state:I

    .line 124
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->index:I

    .line 125
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->toa:I

    .line 126
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsMpty:Z

    .line 127
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isMpty:Z

    .line 128
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsMT:Z

    .line 129
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isMT:Z

    .line 130
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->als:I

    .line 131
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsVoice:Z

    .line 132
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isVoice:Z

    .line 133
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsVoicePrivacy:Z

    .line 134
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isVoicePrivacy:Z

    .line 135
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->number:Ljava/lang/String;

    .line 136
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->numberPresentation:I

    .line 137
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->name:Ljava/lang/String;

    .line 138
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->namePresentation:I

    .line 140
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasCallDetails:Z

    .line 141
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    .line 143
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasFailCause:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasFailCause:Z

    .line 144
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    .line 146
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 147
    .local v2, "errorinfo":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v2    # "errorinfo":Ljava/lang/Byte;
    goto :goto_0

    .line 150
    :cond_0
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 151
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    .line 152
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 153
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 156
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsEncrypted:Z

    .line 157
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isEncrypted:Z

    .line 158
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsCalledPartyRinging:Z

    .line 159
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isCalledPartyRinging:Z

    .line 160
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->historyInfo:Ljava/lang/String;

    .line 161
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsVideoConfSupported:Z

    .line 162
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isVideoConfSupported:Z

    .line 164
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migarateVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)V

    .line 165
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V

    .line 167
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->tirMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->tirMode:I

    .line 169
    return-object v0
.end method

.method public static migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;",
            ">;"
        }
    .end annotation

    .line 278
    .local p0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;>;"
    if-nez p0, :cond_0

    .line 279
    const/4 v0, 0x0

    return-object v0

    .line 281
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;

    .line 283
    .local v2, "from":Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;

    move-result-object v3

    .line 284
    .local v3, "to":Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v2    # "from":Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    .end local v3    # "to":Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;
    goto :goto_0

    .line 286
    :cond_1
    return-object v0
.end method

.method public static migrateConfigInfoFrom(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 103
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 104
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    .line 105
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->hasBoolValue:Z

    .line 106
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->boolValue:Z

    .line 107
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->intValue:I

    .line 108
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 111
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->errorCause:I

    .line 113
    return-object v0
.end method

.method public static migrateHandoverInfo(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    .line 291
    if-nez p0, :cond_0

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;-><init>()V

    .line 295
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->type:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->type:I

    .line 296
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->srcTech:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->srcTech:I

    .line 297
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->targetTech:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->targetTech:I

    .line 298
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hasHoExtra:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->hasHoExtra:Z

    .line 299
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    .line 300
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->errorCode:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->errorCode:Ljava/lang/String;

    .line 301
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->errorMessage:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->errorMessage:Ljava/lang/String;

    .line 302
    return-object v0
.end method

.method private static migrateMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V
    .locals 1
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    .param p1, "to"    # Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 270
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->msisdn:Ljava/lang/String;

    iput-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->msisdn:Ljava/lang/String;

    .line 271
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->registrationStatus:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->registrationStatus:I

    .line 272
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->lineType:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->lineType:I

    .line 273
    return-void
.end method

.method public static migrateRegistrationInfo(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    .line 251
    if-nez p0, :cond_0

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 254
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;-><init>()V

    .line 255
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->state:I

    .line 256
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorCode:I

    .line 257
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorMessage:Ljava/lang/String;

    .line 258
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->radioTech:I

    .line 259
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    .line 260
    return-object v0
.end method

.method public static migrateServiceStatusInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;"
        }
    .end annotation

    .line 199
    .local p0, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v0, "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateServiceStatusInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 204
    return-object v0

    .line 200
    .end local v0    # "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static migrateServiceStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 217
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;-><init>()V

    .line 218
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->hasIsValid:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->hasIsValid:Z

    .line 219
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->isValid:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->isValid:Z

    .line 220
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->type:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->type:I

    .line 221
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->callType:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->callType:I

    .line 222
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    .line 223
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 224
    .local v2, "data":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v2    # "data":Ljava/lang/Byte;
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateAccTechStatus(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 226
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->restrictCause:I

    .line 227
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->rttMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->rttMode:I

    .line 228
    return-object v0
.end method

.method public static migrateServiceStatusInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p0, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    .local p1, "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 212
    .local v1, "info":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateServiceStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    .end local v1    # "info":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    :cond_1
    return-void

    .line 210
    :cond_2
    :goto_1
    return-void
.end method
