.class public Lorg/codeaurora/ims/ImsRadioUtilsV12;
.super Ljava/lang/Object;
.source "ImsRadioUtilsV12.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImsReasonForCallFailCause(I)I
    .locals 1
    .param p0, "failCause"    # I

    .line 29
    packed-switch p0, :pswitch_data_0

    .line 93
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->getImsReasonForCallFailCause(I)I

    move-result v0

    return v0

    .line 91
    :pswitch_0
    const/16 v0, 0x5ec

    return v0

    .line 89
    :pswitch_1
    const v0, 0xf00f

    return v0

    .line 87
    :pswitch_2
    const v0, 0xf00e

    return v0

    .line 85
    :pswitch_3
    const v0, 0xf00d

    return v0

    .line 83
    :pswitch_4
    const v0, 0xf00c

    return v0

    .line 81
    :pswitch_5
    const v0, 0xf00b

    return v0

    .line 79
    :pswitch_6
    const v0, 0xf00a

    return v0

    .line 77
    :pswitch_7
    const v0, 0xf009

    return v0

    .line 75
    :pswitch_8
    const v0, 0xf008

    return v0

    .line 73
    :pswitch_9
    const v0, 0xf007

    return v0

    .line 71
    :pswitch_a
    const v0, 0xf006

    return v0

    .line 69
    :pswitch_b
    const v0, 0xf005

    return v0

    .line 67
    :pswitch_c
    const v0, 0xf004

    return v0

    .line 65
    :pswitch_d
    const v0, 0xf003

    return v0

    .line 63
    :pswitch_e
    const v0, 0xf002

    return v0

    .line 61
    :pswitch_f
    const v0, 0xf001

    return v0

    .line 57
    :pswitch_10
    const/16 v0, 0x5e9

    return v0

    .line 55
    :pswitch_11
    const/16 v0, 0x5e7

    return v0

    .line 53
    :pswitch_12
    const/16 v0, 0x5e6

    return v0

    .line 51
    :pswitch_13
    const/16 v0, 0x5e5

    return v0

    .line 49
    :pswitch_14
    const/16 v0, 0x5e4

    return v0

    .line 47
    :pswitch_15
    const/16 v0, 0x5e3

    return v0

    .line 45
    :pswitch_16
    const/16 v0, 0x5e2

    return v0

    .line 43
    :pswitch_17
    const/16 v0, 0x5e1

    return v0

    .line 41
    :pswitch_18
    const/16 v0, 0x5e0

    return v0

    .line 39
    :pswitch_19
    const/16 v0, 0x5df

    return v0

    .line 37
    :pswitch_1a
    const/16 v0, 0x5de

    return v0

    .line 35
    :pswitch_1b
    const/16 v0, 0x5dd

    return v0

    .line 33
    :pswitch_1c
    const/16 v0, 0x79

    return v0

    .line 31
    :pswitch_1d
    const/16 v0, 0x5dc

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x227
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method private static migrateCallFailCauseFromV11(I)I
    .locals 1
    .param p0, "callFailCause"    # I

    .line 20
    const/16 v0, 0x225

    if-ne p0, v0, :cond_0

    .line 22
    goto :goto_0

    :cond_0
    move v0, p0

    .line 20
    :goto_0
    return v0
.end method

.method private static migrateCallInfoFromV11(Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    .line 103
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;-><init>()V

    .line 104
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->state:I

    .line 105
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->index:I

    .line 106
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->toa:I

    .line 107
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsMpty:Z

    .line 108
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isMpty:Z

    .line 109
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsMT:Z

    .line 110
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isMT:Z

    .line 111
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->als:I

    .line 112
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsVoice:Z

    .line 113
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isVoice:Z

    .line 114
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsVoicePrivacy:Z

    .line 115
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isVoicePrivacy:Z

    .line 116
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->number:Ljava/lang/String;

    .line 117
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->numberPresentation:I

    .line 118
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->name:Ljava/lang/String;

    .line 119
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->namePresentation:I

    .line 121
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasCallDetails:Z

    .line 122
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 123
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 124
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 126
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

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

    .line 127
    .local v2, "extra":Ljava/lang/String;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 130
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

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

    .line 131
    .local v2, "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v2    # "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_1

    .line 134
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

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

    .line 135
    .local v2, "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v2    # "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_2

    .line 138
    :cond_2
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 139
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 140
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 141
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 142
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 144
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasFailCause:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasFailCause:Z

    .line 145
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->failCause:I

    .line 146
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV12;->migrateCallFailCauseFromV11(I)I

    move-result v2

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;->failCause:I

    .line 148
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 149
    .local v2, "errorinfo":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v2    # "errorinfo":Ljava/lang/Byte;
    goto :goto_3

    .line 152
    :cond_3
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 153
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;->hasErrorDetails:Z

    .line 154
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 155
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_2/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_1/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 158
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsEncrypted:Z

    .line 159
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isEncrypted:Z

    .line 160
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsCalledPartyRinging:Z

    .line 161
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isCalledPartyRinging:Z

    .line 162
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->historyInfo:Ljava/lang/String;

    .line 163
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->hasIsVideoConfSupported:Z

    .line 164
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->isVideoConfSupported:Z

    .line 165
    return-object v0
.end method

.method public static migrateCallListFromV11(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;",
            ">;"
        }
    .end annotation

    .line 171
    .local p0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    if-nez p0, :cond_0

    .line 172
    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;

    .line 176
    .local v2, "from":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV12;->migrateCallInfoFromV11(Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;

    move-result-object v3

    .line 177
    .local v3, "to":Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v2    # "from":Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;
    .end local v3    # "to":Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;
    goto :goto_0

    .line 179
    :cond_1
    return-object v0
.end method
