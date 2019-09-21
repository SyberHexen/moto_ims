.class public final Lvendor/qti/hardware/radio/ims/V1_5/ImsSmsSendFailureReason;
.super Ljava/lang/Object;
.source "ImsSmsSendFailureReason.java"


# static fields
.field public static final RESULT_CANCELLED:I = 0x17

.field public static final RESULT_ENCODING_ERROR:I = 0x12

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x8

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NONE:I = 0x0

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED:I = 0x7

.field public static final RESULT_ERROR_SHORT_CODE_NOT_ALLOWED:I = 0x6

.field public static final RESULT_INTERNAL_ERROR:I = 0x15

.field public static final RESULT_INVALID_ARGUMENTS:I = 0xb

.field public static final RESULT_INVALID_SMSC_ADDRESS:I = 0x13

.field public static final RESULT_INVALID_SMS_FORMAT:I = 0xe

.field public static final RESULT_INVALID_STATE:I = 0xc

.field public static final RESULT_MODEM_ERROR:I = 0x10

.field public static final RESULT_NETWORK_ERROR:I = 0x11

.field public static final RESULT_NETWORK_REJECT:I = 0xa

.field public static final RESULT_NO_MEMORY:I = 0xd

.field public static final RESULT_NO_RESOURCES:I = 0x16

.field public static final RESULT_OPERATION_NOT_ALLOWED:I = 0x14

.field public static final RESULT_RADIO_NOT_AVAILABLE:I = 0x9

.field public static final RESULT_REQUEST_NOT_SUPPORTED:I = 0x18

.field public static final RESULT_SYSTEM_ERROR:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 182
    .local v1, "flipped":I
    const-string v2, "RESULT_ERROR_NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 184
    const-string v2, "RESULT_ERROR_GENERIC_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    or-int/lit8 v1, v1, 0x1

    .line 187
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 188
    const-string v2, "RESULT_ERROR_RADIO_OFF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    or-int/lit8 v1, v1, 0x2

    .line 191
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 192
    const-string v2, "RESULT_ERROR_NULL_PDU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    or-int/lit8 v1, v1, 0x3

    .line 195
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 196
    const-string v2, "RESULT_ERROR_NO_SERVICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    or-int/lit8 v1, v1, 0x4

    .line 199
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 200
    const-string v2, "RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    or-int/lit8 v1, v1, 0x5

    .line 203
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 204
    const-string v2, "RESULT_ERROR_SHORT_CODE_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    or-int/lit8 v1, v1, 0x6

    .line 207
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 208
    const-string v2, "RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    or-int/lit8 v1, v1, 0x7

    .line 211
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 212
    const-string v2, "RESULT_ERROR_FDN_CHECK_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    or-int/lit8 v1, v1, 0x8

    .line 215
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 216
    const-string v2, "RESULT_RADIO_NOT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    or-int/lit8 v1, v1, 0x9

    .line 219
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 220
    const-string v2, "RESULT_NETWORK_REJECT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    or-int/lit8 v1, v1, 0xa

    .line 223
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 224
    const-string v2, "RESULT_INVALID_ARGUMENTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    or-int/lit8 v1, v1, 0xb

    .line 227
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 228
    const-string v2, "RESULT_INVALID_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    or-int/lit8 v1, v1, 0xc

    .line 231
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 232
    const-string v2, "RESULT_NO_MEMORY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    or-int/lit8 v1, v1, 0xd

    .line 235
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 236
    const-string v2, "RESULT_INVALID_SMS_FORMAT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    or-int/lit8 v1, v1, 0xe

    .line 239
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 240
    const-string v2, "RESULT_SYSTEM_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    or-int/lit8 v1, v1, 0xf

    .line 243
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 244
    const-string v2, "RESULT_MODEM_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    or-int/lit8 v1, v1, 0x10

    .line 247
    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    .line 248
    const-string v2, "RESULT_NETWORK_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    or-int/lit8 v1, v1, 0x11

    .line 251
    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    .line 252
    const-string v2, "RESULT_ENCODING_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    or-int/lit8 v1, v1, 0x12

    .line 255
    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    .line 256
    const-string v2, "RESULT_INVALID_SMSC_ADDRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    or-int/lit8 v1, v1, 0x13

    .line 259
    :cond_12
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_13

    .line 260
    const-string v2, "RESULT_OPERATION_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    or-int/lit8 v1, v1, 0x14

    .line 263
    :cond_13
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_14

    .line 264
    const-string v2, "RESULT_INTERNAL_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    or-int/lit8 v1, v1, 0x15

    .line 267
    :cond_14
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_15

    .line 268
    const-string v2, "RESULT_NO_RESOURCES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    or-int/lit8 v1, v1, 0x16

    .line 271
    :cond_15
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    .line 272
    const-string v2, "RESULT_CANCELLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    or-int/lit8 v1, v1, 0x17

    .line 275
    :cond_16
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_17

    .line 276
    const-string v2, "RESULT_REQUEST_NOT_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    or-int/lit8 v1, v1, 0x18

    .line 279
    :cond_17
    if-eq p0, v1, :cond_18

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_18
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 101
    if-nez p0, :cond_0

    .line 102
    const-string v0, "RESULT_ERROR_NONE"

    return-object v0

    .line 104
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 105
    const-string v0, "RESULT_ERROR_GENERIC_FAILURE"

    return-object v0

    .line 107
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 108
    const-string v0, "RESULT_ERROR_RADIO_OFF"

    return-object v0

    .line 110
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 111
    const-string v0, "RESULT_ERROR_NULL_PDU"

    return-object v0

    .line 113
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 114
    const-string v0, "RESULT_ERROR_NO_SERVICE"

    return-object v0

    .line 116
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 117
    const-string v0, "RESULT_ERROR_LIMIT_EXCEEDED"

    return-object v0

    .line 119
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 120
    const-string v0, "RESULT_ERROR_SHORT_CODE_NOT_ALLOWED"

    return-object v0

    .line 122
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 123
    const-string v0, "RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED"

    return-object v0

    .line 125
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 126
    const-string v0, "RESULT_ERROR_FDN_CHECK_FAILURE"

    return-object v0

    .line 128
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 129
    const-string v0, "RESULT_RADIO_NOT_AVAILABLE"

    return-object v0

    .line 131
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 132
    const-string v0, "RESULT_NETWORK_REJECT"

    return-object v0

    .line 134
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 135
    const-string v0, "RESULT_INVALID_ARGUMENTS"

    return-object v0

    .line 137
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 138
    const-string v0, "RESULT_INVALID_STATE"

    return-object v0

    .line 140
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 141
    const-string v0, "RESULT_NO_MEMORY"

    return-object v0

    .line 143
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 144
    const-string v0, "RESULT_INVALID_SMS_FORMAT"

    return-object v0

    .line 146
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 147
    const-string v0, "RESULT_SYSTEM_ERROR"

    return-object v0

    .line 149
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 150
    const-string v0, "RESULT_MODEM_ERROR"

    return-object v0

    .line 152
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 153
    const-string v0, "RESULT_NETWORK_ERROR"

    return-object v0

    .line 155
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 156
    const-string v0, "RESULT_ENCODING_ERROR"

    return-object v0

    .line 158
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 159
    const-string v0, "RESULT_INVALID_SMSC_ADDRESS"

    return-object v0

    .line 161
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 162
    const-string v0, "RESULT_OPERATION_NOT_ALLOWED"

    return-object v0

    .line 164
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 165
    const-string v0, "RESULT_INTERNAL_ERROR"

    return-object v0

    .line 167
    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    .line 168
    const-string v0, "RESULT_NO_RESOURCES"

    return-object v0

    .line 170
    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    .line 171
    const-string v0, "RESULT_CANCELLED"

    return-object v0

    .line 173
    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    .line 174
    const-string v0, "RESULT_REQUEST_NOT_SUPPORTED"

    return-object v0

    .line 176
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
