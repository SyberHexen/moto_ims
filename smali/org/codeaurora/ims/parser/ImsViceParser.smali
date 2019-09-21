.class public Lorg/codeaurora/ims/parser/ImsViceParser;
.super Lorg/codeaurora/ims/parser/ConfInfo;
.source "ImsViceParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;,
        Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;,
        Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    }
.end annotation


# static fields
.field private static final CALL_TYPE_VIDEO_HELD:Ljava/lang/String; = "vtheld"

.field private static final CALL_TYPE_VIDEO_RX:Ljava/lang/String; = "vtrx"

.field private static final CALL_TYPE_VIDEO_TX:Ljava/lang/String; = "vttx"

.field private static final CALL_TYPE_VIDEO_TX_RX:Ljava/lang/String; = "vttxrx"

.field private static final CALL_TYPE_VOICE_ACTIVE:Ljava/lang/String; = "volteactive"

.field private static final CALL_TYPE_VOICE_HELD:Ljava/lang/String; = "volteheld"

.field private static final LOCAL_TARGET_PARAM_NAME:Ljava/lang/String; = "+sip.rendering"

.field private static final LOCAL_TARGET_PARAM_PVAL_NO:Ljava/lang/String; = "no"

.field private static LOGTAG:Ljava/lang/String; = null

.field private static final MEDIA_DIRECTION_INACTIVE:Ljava/lang/String; = "inactive"

.field private static final MEDIA_DIRECTION_RECVONLY:Ljava/lang/String; = "recvonly"

.field private static final MEDIA_DIRECTION_SENDONLY:Ljava/lang/String; = "sendonly"

.field private static final MEDIA_DIRECTION_SENDRECV:Ljava/lang/String; = "sendrecv"

.field private static final MEDIA_TYPE_AUDIO:Ljava/lang/String; = "audio"

.field private static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = "video"

.field private static final STATE_CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final STATE_EARLY:Ljava/lang/String; = "early"

.field private static final STATE_PROCEEDING:Ljava/lang/String; = "proceeding"

.field private static final STATE_TERMINATED:Ljava/lang/String; = "terminated"

.field private static final STATE_TRYING:Ljava/lang/String; = "trying"

.field private static mDialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogStr:Ljava/lang/String;

.field private mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "ImsViceParser"

    sput-object v0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->preparePartialList()V

    .line 102
    return-void
.end method

.method private checkElementState(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Lorg/codeaurora/ims/parser/Element;

    .line 131
    const-string v0, "full"

    .line 133
    .local v0, "resultantState":Ljava/lang/String;
    const-string v1, "state"

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "elementState":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 135
    move-object v0, v1

    .line 137
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification state is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " element state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->debugLog(Ljava/lang/String;)V

    .line 138
    return-object v0
.end method

.method private static getCallState(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)I
    .locals 3
    .param p0, "dialog"    # Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 157
    const/4 v0, 0x2

    if-eqz p0, :cond_4

    .line 158
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "confirmed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "terminated"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    return v0

    .line 164
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "trying"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    const/4 v0, 0x3

    return v0

    .line 166
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "proceeding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    const/4 v0, 0x4

    return v0

    .line 168
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v2, "early"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 169
    const/4 v0, 0x5

    return v0

    .line 173
    :cond_4
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "getCallState Dialog null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_5
    return v0
.end method

.method private static getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;
    .locals 17
    .param p0, "dialog"    # Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 195
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 196
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 197
    .local v2, "audioState":Ljava/lang/String;
    const/4 v3, 0x0

    .line 198
    .local v3, "videoState":Ljava/lang/String;
    const/4 v4, 0x0

    .line 200
    .local v4, "portPresent":Z
    if-eqz v0, :cond_17

    iget-object v5, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string v6, "confirmed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 201
    iget-object v5, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 202
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const-string v7, ", portPresent = "

    const-string v8, ", videoState = "

    const-string v9, "audioState = "

    if-ge v6, v5, :cond_a

    .line 203
    iget-object v10, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    .line 204
    .local v10, "media":Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;
    if-eqz v10, :cond_8

    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    if-eqz v11, :cond_8

    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 206
    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    const-string v12, "audio"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    const-string v12, "inactive"

    const-string v13, "recvonly"

    const-string v14, "sendonly"

    const-string v15, "sendrecv"

    if-eqz v11, :cond_3

    .line 207
    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 209
    const-string v2, "volteactive"

    move-object/from16 v16, v1

    goto/16 :goto_3

    .line 210
    :cond_0
    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 212
    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    .line 214
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v1

    goto :goto_3

    .line 216
    :cond_2
    :goto_1
    const-string v2, "volteheld"

    move-object/from16 v16, v1

    goto :goto_3

    .line 218
    :cond_3
    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    move-object/from16 v16, v1

    .end local v1    # "value":Ljava/lang/String;
    .local v16, "value":Ljava/lang/String;
    const-string v1, "video"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 219
    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 221
    const-string v3, "vttxrx"

    goto :goto_2

    .line 222
    :cond_4
    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 224
    const-string v3, "vttx"

    goto :goto_2

    .line 225
    :cond_5
    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 227
    const-string v3, "vtrx"

    goto :goto_2

    .line 228
    :cond_6
    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 230
    const-string v3, "vtheld"

    .line 232
    :cond_7
    :goto_2
    iget-object v11, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v10, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    .line 234
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 235
    const/4 v1, 0x1

    move v4, v1

    .end local v4    # "portPresent":Z
    .local v1, "portPresent":Z
    goto :goto_3

    .line 204
    .end local v16    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    .restart local v4    # "portPresent":Z
    :cond_8
    move-object/from16 v16, v1

    .line 239
    .end local v1    # "value":Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/String;
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v11, "Media Parameter incorrect!!"

    invoke-static {v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_9
    :goto_3
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v10    # "media":Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_0

    .end local v16    # "value":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v1

    .line 245
    .end local v1    # "value":Ljava/lang/String;
    .end local v6    # "i":I
    .restart local v16    # "value":Ljava/lang/String;
    iget-object v1, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 246
    .end local v5    # "size":I
    .local v1, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    if-ge v5, v1, :cond_d

    .line 247
    iget-object v6, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    .line 248
    .local v6, "paramval":Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;
    if-eqz v6, :cond_b

    iget-object v10, v6, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, v6, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    if-eqz v10, :cond_b

    .line 250
    iget-object v10, v6, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    const-string v11, "+sip.rendering"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 251
    iget-object v10, v6, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    const-string v11, "no"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 252
    sget-object v10, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v11, "set audioState to VOICE_HELD for sip.rending=no"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v2, "volteheld"

    goto :goto_5

    .line 257
    :cond_b
    sget-object v10, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v11, "Parameters incorrect!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_c
    :goto_5
    sget-object v10, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v6    # "paramval":Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 263
    .end local v5    # "i":I
    :cond_d
    if-eqz v2, :cond_16

    .line 264
    const-string v5, "volteactive"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "vtheld"

    if-eqz v6, :cond_13

    .line 265
    if-eqz v3, :cond_12

    if-eqz v4, :cond_e

    goto :goto_6

    .line 267
    :cond_e
    const-string v5, "vttxrx"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 268
    return-object v5

    .line 269
    :cond_f
    const-string v5, "vttx"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 270
    return-object v5

    .line 271
    :cond_10
    const-string v5, "vtrx"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 272
    return-object v5

    .line 273
    :cond_11
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 274
    return-object v7

    .line 266
    :cond_12
    :goto_6
    return-object v5

    .line 276
    :cond_13
    const-string v5, "volteheld"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 277
    if-eqz v3, :cond_15

    if-eqz v4, :cond_14

    goto :goto_7

    .line 279
    :cond_14
    if-nez v4, :cond_18

    .line 280
    return-object v7

    .line 278
    :cond_15
    :goto_7
    return-object v5

    .line 284
    :cond_16
    sget-object v5, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v6, "audioState null!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 200
    .end local v16    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    :cond_17
    move-object/from16 v16, v1

    .line 287
    .end local v1    # "value":Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/String;
    :cond_18
    :goto_8
    const/4 v1, 0x0

    return-object v1
.end method

.method private static isCallHeld(Ljava/lang/String;)Z
    .locals 5
    .param p0, "callType"    # Ljava/lang/String;

    .line 318
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 319
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "mapViceCallToImsCallProfileCallType callType null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return v0

    .line 323
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x3010b10d

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x7f00dbb9

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "volteheld"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v2, "vtheld"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_4

    .line 329
    return v0

    .line 326
    :cond_4
    return v4
.end method

.method private static isCallPullable(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;ZZ)Z
    .locals 8
    .param p0, "dialog"    # Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    .param p1, "isVideoSupported"    # Z
    .param p2, "isVolteSupported"    # Z

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "pullable":Z
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 347
    return v1

    .line 349
    :cond_0
    invoke-static {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "callType":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 351
    return v1

    .line 354
    :cond_1
    const-string v3, "vttxrx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 355
    const-string v3, "vttx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 356
    const-string v3, "vtrx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 358
    .local v1, "canVtBePulled":Z
    :cond_3
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->exclusive:Ljava/lang/String;

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 359
    invoke-static {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "volteactive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p2, :cond_5

    :cond_4
    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 362
    :cond_5
    const/4 v0, 0x1

    .line 364
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 365
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 366
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 367
    .local v3, "parami":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v3, :cond_7

    .line 368
    sget-object v5, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialog local param name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 369
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v7, v7, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", dialog local param value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 371
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v7, v7, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 368
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v5, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v5, v5, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 374
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v5, v5, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    const-string v6, "+sip.rendering"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 375
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v5, v5, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 376
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v5, v5, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    const-string v6, "no"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 377
    const/4 v0, 0x0

    .line 367
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 389
    .end local v3    # "parami":I
    .end local v4    # "j":I
    :cond_7
    return v0
.end method

.method private isDialogIdsEmpty()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static mapViceCallTypeToImsCallProfileCallType(Ljava/lang/String;)I
    .locals 7
    .param p0, "callType"    # Ljava/lang/String;

    .line 291
    const/4 v0, 0x2

    if-nez p0, :cond_0

    .line 292
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "mapViceCallToImsCallProfileCallType callType null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v0

    .line 296
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x4

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "volteheld"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_1
    const-string v2, "vttx"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    goto :goto_0

    :sswitch_2
    const-string v2, "vtrx"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_3
    const-string v2, "vttxrx"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :sswitch_4
    const-string v2, "vtheld"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_5
    const-string v2, "volteactive"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_5

    if-eq v1, v0, :cond_4

    if-eq v1, v3, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    .line 312
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapViceCallToImsCallProfileCallType unknown callType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v0

    .line 309
    :cond_2
    const/4 v0, 0x6

    return v0

    .line 306
    :cond_3
    return v5

    .line 303
    :cond_4
    return v6

    .line 299
    :cond_5
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49d18576 -> :sswitch_5
        -0x3010b10d -> :sswitch_4
        -0x300af478 -> :sswitch_3
        0x376584 -> :sswitch_2
        0x3765c2 -> :sswitch_1
        0x7f00dbb9 -> :sswitch_0
    .end sparse-switch
.end method

.method private preparePartialList()V
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public static setSAXHandler(Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;)V
    .locals 0
    .param p0, "handler"    # Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    .line 105
    sput-object p0, Lorg/codeaurora/ims/parser/ImsViceParser;->sHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    .line 106
    return-void
.end method


# virtual methods
.method public getCallPullInfo(ZZ)Ljava/util/List;
    .locals 21
    .param p1, "isVideoSupported"    # Z
    .param p2, "isVolteSupported"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation

    .line 394
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->isDialogIdsEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    sget-object v1, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string v2, "getCallPullInfo mDialogIds null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v1, 0x0

    return-object v1

    .line 400
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v1, "extCallStateList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 404
    iget-object v3, v0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 405
    .local v3, "info":Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    iget-object v13, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->dialogId:Ljava/lang/String;

    .line 406
    .local v13, "callId":Ljava/lang/String;
    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->remoteIdentity:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 407
    .local v14, "remoteAddress":Landroid/net/Uri;
    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->localIdentity:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 408
    .local v15, "localAddress":Landroid/net/Uri;
    move/from16 v11, p1

    move/from16 v10, p2

    invoke-static {v3, v11, v10}, Lorg/codeaurora/ims/parser/ImsViceParser;->isCallPullable(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;ZZ)Z

    move-result v16

    .line 410
    .local v16, "isPullable":Z
    invoke-static {v3}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallState(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)I

    move-result v17

    .line 411
    .local v17, "callState":I
    nop

    .line 412
    invoke-static {v3}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-static {v4}, Lorg/codeaurora/ims/parser/ImsViceParser;->mapViceCallTypeToImsCallProfileCallType(Ljava/lang/String;)I

    move-result v18

    .line 413
    .local v18, "callType":I
    invoke-static {v3}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/codeaurora/ims/parser/ImsViceParser;->isCallHeld(Ljava/lang/String;)Z

    move-result v19

    .line 415
    .local v19, "isHeld":Z
    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->direction:Ljava/lang/String;

    const-string v5, "initiator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v12, v4, 0x1

    .line 416
    .local v12, "isMt":Z
    new-instance v20, Landroid/telephony/ims/ImsExternalCallState;

    move-object/from16 v4, v20

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    invoke-direct/range {v4 .. v12}, Landroid/telephony/ims/ImsExternalCallState;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ZIIZZ)V

    .line 420
    .local v4, "extCallState":Landroid/telephony/ims/ImsExternalCallState;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v3    # "info":Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    .end local v12    # "isMt":Z
    .end local v13    # "callId":Ljava/lang/String;
    .end local v14    # "remoteAddress":Landroid/net/Uri;
    .end local v15    # "localAddress":Landroid/net/Uri;
    .end local v16    # "isPullable":Z
    .end local v17    # "callState":I
    .end local v18    # "callType":I
    .end local v19    # "isHeld":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v2    # "i":I
    .end local v4    # "extCallState":Landroid/telephony/ims/ImsExternalCallState;
    :cond_1
    return-object v1
.end method

.method public getDialogInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->getDialogInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViceDialogInfoAsString()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    return-object v0
.end method

.method public updateViceXmlBytes([B)V
    .locals 5
    .param p1, "vicexml"    # [B

    .line 109
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 110
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    .line 112
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VICE XML in string :- \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->getInstance()Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    .line 116
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    invoke-static {v0}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/parser/Element;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    .line 117
    const-string v1, "*************New Vice Notification*****************"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ImsViceParser;->debugLog(Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v4, -0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/codeaurora/ims/parser/ImsViceParser;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    .line 119
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getDialogInfo()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
