.class public Lorg/codeaurora/ims/ImsRadioUtilsV15;
.super Ljava/lang/Object;
.source "ImsRadioUtilsV15.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    .locals 2
    .param p0, "item"    # I
    .param p1, "boolValue"    # Z
    .param p2, "intValue"    # I
    .param p3, "stringValue"    # Ljava/lang/String;
    .param p4, "errorCause"    # I

    .line 218
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;-><init>()V

    .line 220
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->configInfoItemToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->item:I

    .line 221
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->hasBoolValue:Z

    .line 222
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->boolValue:Z

    .line 223
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->intValue:I

    .line 224
    if-eqz p3, :cond_0

    .line 225
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 227
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->errorCause:I

    .line 229
    return-object v0
.end method

.method public static callForwardStatusInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;
    .locals 3
    .param p0, "imsRadioCFStatusInfo"    # Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;

    .line 330
    new-instance v0, Lorg/codeaurora/ims/CallForwardStatusInfo;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;->status:Ljava/util/ArrayList;

    .line 332
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->toCallForwardStatus(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/CallForwardStatus;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/CallForwardStatusInfo;-><init>(Landroid/telephony/ims/ImsReasonInfo;[Lorg/codeaurora/ims/CallForwardStatus;)V

    .line 330
    return-object v0
.end method

.method public static configInfoItemFromHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 208
    const/16 v0, 0x4b

    if-eq p0, v0, :cond_0

    .line 212
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemFromHal(I)I

    move-result v0

    return v0

    .line 210
    :cond_0
    const/16 v0, 0x49

    return v0
.end method

.method public static configInfoItemToHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 199
    const/16 v0, 0x49

    if-eq p0, v0, :cond_0

    .line 203
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemToHal(I)I

    move-result v0

    return v0

    .line 201
    :cond_0
    const/16 v0, 0x4b

    return v0
.end method

.method public static getImsReasonForCallFailCause(I)I
    .locals 1
    .param p0, "failCause"    # I

    .line 46
    packed-switch p0, :pswitch_data_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 81
    :pswitch_0
    const/16 v0, 0xbb9

    return v0

    .line 78
    :pswitch_1
    const/16 v0, 0x17a

    return v0

    .line 76
    :pswitch_2
    const/16 v0, 0x179

    return v0

    .line 74
    :pswitch_3
    const/16 v0, 0x178

    return v0

    .line 72
    :pswitch_4
    const/16 v0, 0x176

    return v0

    .line 70
    :pswitch_5
    const/16 v0, 0x175

    return v0

    .line 60
    :pswitch_6
    const/16 v0, 0x174

    return v0

    .line 58
    :pswitch_7
    const/16 v0, 0x173

    return v0

    .line 54
    :pswitch_8
    const/16 v0, 0x172

    return v0

    .line 56
    :pswitch_9
    const/16 v0, 0x171

    return v0

    .line 52
    :pswitch_a
    const/16 v0, 0x170

    return v0

    .line 50
    :pswitch_b
    const/16 v0, 0x16f

    return v0

    .line 48
    :pswitch_c
    const/16 v0, 0x16e

    return v0

    .line 68
    :pswitch_d
    const/16 v0, 0x5ed

    return v0

    .line 66
    :pswitch_e
    const/16 v0, 0x200

    return v0

    .line 64
    :pswitch_f
    const/16 v0, 0x1ff

    return v0

    .line 62
    :pswitch_10
    const/16 v0, 0x3f9

    return v0

    :pswitch_data_0
    .packed-switch 0xf045
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSmsDeliverStatusToHidl(I)I
    .locals 2
    .param p0, "status"    # I

    .line 395
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 401
    const-class v0, Lorg/codeaurora/ims/ImsRadioUtilsV15;

    const-string v1, "unknown deliver status"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x1

    return v0

    .line 399
    :cond_0
    return v0

    .line 397
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public static isConfigItemIntroducedInV15(I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "item"    # I

    .line 234
    const/16 v0, 0x4b

    if-eq p0, v0, :cond_0

    .line 238
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static mapEmergencyCallRoutingToHal(I)I
    .locals 1
    .param p0, "routing"    # I

    .line 302
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 308
    const/4 v0, 0x0

    return v0

    .line 304
    :cond_0
    return v0

    .line 306
    :cond_1
    return v0
.end method

.method public static mapEmergencyServiceCategoryToHal(I)I
    .locals 3
    .param p0, "categories"    # I

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "toHalCategories":I
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 270
    or-int/lit8 v0, v0, 0x1

    .line 272
    :cond_0
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 274
    or-int/lit8 v0, v0, 0x2

    .line 276
    :cond_1
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 278
    or-int/lit8 v0, v0, 0x4

    .line 280
    :cond_2
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 282
    or-int/lit8 v0, v0, 0x8

    .line 284
    :cond_3
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 287
    or-int/lit8 v0, v0, 0x10

    .line 289
    :cond_4
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 291
    or-int/lit8 v0, v0, 0x20

    .line 293
    :cond_5
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 295
    or-int/lit8 v0, v0, 0x40

    .line 297
    :cond_6
    return v0
.end method

.method public static mapHidlToFrameworkResponseReason(I)I
    .locals 2
    .param p0, "hidlReason"    # I

    .line 353
    packed-switch p0, :pswitch_data_0

    .line 389
    const-class v0, Lorg/codeaurora/ims/ImsRadioUtilsV15;

    const-string v1, "Failure reason is unknown"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    const/4 v0, 0x1

    return v0

    .line 387
    :pswitch_0
    const/16 v0, 0x18

    return v0

    .line 385
    :pswitch_1
    const/16 v0, 0x17

    return v0

    .line 383
    :pswitch_2
    const/16 v0, 0x16

    return v0

    .line 381
    :pswitch_3
    const/16 v0, 0x15

    return v0

    .line 379
    :pswitch_4
    const/16 v0, 0x14

    return v0

    .line 377
    :pswitch_5
    const/16 v0, 0x13

    return v0

    .line 375
    :pswitch_6
    const/16 v0, 0x12

    return v0

    .line 373
    :pswitch_7
    const/16 v0, 0x11

    return v0

    .line 371
    :pswitch_8
    const/16 v0, 0x10

    return v0

    .line 369
    :pswitch_9
    const/16 v0, 0xf

    return v0

    .line 367
    :pswitch_a
    const/16 v0, 0xe

    return v0

    .line 365
    :pswitch_b
    const/16 v0, 0xd

    return v0

    .line 363
    :pswitch_c
    const/16 v0, 0xc

    return v0

    .line 361
    :pswitch_d
    const/16 v0, 0xb

    return v0

    .line 359
    :pswitch_e
    const/16 v0, 0xa

    return v0

    .line 357
    :pswitch_f
    const/16 v0, 0x9

    return v0

    .line 355
    :pswitch_10
    const/4 v0, 0x6

    return v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapTirPresentationToIpPresentation(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 318
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 324
    const/4 v0, 0x2

    return v0

    .line 322
    :cond_0
    return v0

    .line 320
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static migarateVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)V
    .locals 1
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;
    .param p1, "to"    # Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 163
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->canMarkUnwantedCall:Z

    iput-boolean v0, p1, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->canMarkUnwantedCall:Z

    .line 164
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->verificationStatus:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->verificationStatus:I

    .line 165
    return-void
.end method

.method public static migrateAutoCallRejectionInfoFrom(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;

    .line 176
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;-><init>()V

    .line 177
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->callType:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->callType:I

    .line 178
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->autoRejectionCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->autoRejectionCause:I

    .line 179
    iget-short v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->sipErrorCode:S

    iput-short v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->sipErrorCode:S

    .line 180
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->number:Ljava/lang/String;

    .line 181
    return-object v0
.end method

.method private static migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    .line 93
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;-><init>()V

    .line 94
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->state:I

    .line 95
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->index:I

    .line 96
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->toa:I

    .line 97
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsMpty:Z

    .line 98
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isMpty:Z

    .line 99
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsMT:Z

    .line 100
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isMT:Z

    .line 101
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->als:I

    .line 102
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVoice:Z

    .line 103
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVoice:Z

    .line 104
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVoicePrivacy:Z

    .line 105
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVoicePrivacy:Z

    .line 106
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->number:Ljava/lang/String;

    .line 107
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->numberPresentation:I

    .line 108
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->name:Ljava/lang/String;

    .line 109
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->namePresentation:I

    .line 111
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasCallDetails:Z

    .line 112
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 113
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 114
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 116
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    .local v2, "extra":Ljava/lang/String;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 121
    .local v2, "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v2    # "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_1

    .line 124
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 125
    .local v2, "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v2    # "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_2

    .line 128
    :cond_2
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 129
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 130
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 131
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 132
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 134
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasFailCause:Z

    .line 135
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    .line 137
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 138
    .local v2, "errorinfo":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v2    # "errorinfo":Ljava/lang/Byte;
    goto :goto_3

    .line 141
    :cond_3
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 142
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    .line 143
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 144
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 147
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsEncrypted:Z

    .line 148
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isEncrypted:Z

    .line 149
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsCalledPartyRinging:Z

    .line 150
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isCalledPartyRinging:Z

    .line 151
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->historyInfo:Ljava/lang/String;

    .line 152
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVideoConfSupported:Z

    .line 153
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVideoConfSupported:Z

    .line 155
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migarateVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)V

    .line 156
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V

    .line 159
    return-object v0
.end method

.method public static migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;",
            ">;"
        }
    .end annotation

    .line 187
    .local p0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    if-nez p0, :cond_0

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    .line 192
    .local v2, "from":Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;

    move-result-object v3

    .line 193
    .local v3, "to":Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v2    # "from":Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;
    .end local v3    # "to":Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    goto :goto_0

    .line 195
    :cond_1
    return-object v0
.end method

.method public static migrateConfigInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    .locals 3
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 248
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;-><init>()V

    .line 250
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->isConfigItemIntroducedInV16(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->item:I

    .line 254
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->hasBoolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->hasBoolValue:Z

    .line 255
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->boolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->boolValue:Z

    .line 256
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->intValue:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->intValue:I

    .line 257
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 260
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->errorCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->errorCause:I

    .line 262
    return-object v0

    .line 251
    :cond_1
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string v2, "Config item not supported in current HAL"

    invoke-direct {v1, v2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static migrateMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V
    .locals 1
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    .param p1, "to"    # Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 169
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->msisdn:Ljava/lang/String;

    iput-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->msisdn:Ljava/lang/String;

    .line 170
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->registrationStatus:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->registrationStatus:I

    .line 171
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->lineType:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->lineType:I

    .line 172
    return-void
.end method

.method private static toCallForwardStatus(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/CallForwardStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;",
            ">;)[",
            "Lorg/codeaurora/ims/CallForwardStatus;"
        }
    .end annotation

    .line 337
    .local p0, "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;>;"
    if-nez p0, :cond_0

    .line 338
    const/4 v0, 0x0

    return-object v0

    .line 341
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 342
    .local v0, "size":I
    new-array v1, v0, [Lorg/codeaurora/ims/CallForwardStatus;

    .line 344
    .local v1, "toList":[Lorg/codeaurora/ims/CallForwardStatus;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 345
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;

    .line 346
    .local v3, "fromCfStatus":Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;
    new-instance v4, Lorg/codeaurora/ims/CallForwardStatus;

    iget v5, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;->reason:I

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;->status:I

    iget-object v7, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 347
    invoke-static {v7}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/codeaurora/ims/CallForwardStatus;-><init>(IILandroid/telephony/ims/ImsReasonInfo;)V

    aput-object v4, v1, v2

    .line 344
    .end local v3    # "fromCfStatus":Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method
