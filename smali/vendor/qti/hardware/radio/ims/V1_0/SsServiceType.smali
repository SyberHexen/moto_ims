.class public final Lvendor/qti/hardware/radio/ims/V1_0/SsServiceType;
.super Ljava/lang/Object;
.source "SsServiceType.java"


# static fields
.field public static final SS_ALL_BARRING:I = 0x12

.field public static final SS_BAIC:I = 0x10

.field public static final SS_BAIC_ROAMING:I = 0x11

.field public static final SS_BAOC:I = 0xd

.field public static final SS_BAOIC:I = 0xe

.field public static final SS_BAOIC_EXC_HOME:I = 0xf

.field public static final SS_CFU:I = 0x0

.field public static final SS_CFUT:I = 0x6

.field public static final SS_CF_ALL:I = 0x4

.field public static final SS_CF_ALL_CONDITIONAL:I = 0x5

.field public static final SS_CF_BUSY:I = 0x1

.field public static final SS_CF_NOT_REACHABLE:I = 0x3

.field public static final SS_CF_NO_REPLY:I = 0x2

.field public static final SS_CLIP:I = 0x7

.field public static final SS_CLIR:I = 0x8

.field public static final SS_CNAP:I = 0xb

.field public static final SS_COLP:I = 0x9

.field public static final SS_COLR:I = 0xa

.field public static final SS_INCOMING_BARRING:I = 0x14

.field public static final SS_INCOMING_BARRING_ANONYMOUS:I = 0x16

.field public static final SS_INCOMING_BARRING_DN:I = 0x15

.field public static final SS_INVALID:I = 0x17

.field public static final SS_OUTGOING_BARRING:I = 0x13

.field public static final SS_WAIT:I = 0xc


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

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 108
    .local v1, "flipped":I
    const-string v2, "SS_CFU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 110
    const-string v2, "SS_CF_BUSY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0x1

    .line 113
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 114
    const-string v2, "SS_CF_NO_REPLY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0x2

    .line 117
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 118
    const-string v2, "SS_CF_NOT_REACHABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0x3

    .line 121
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 122
    const-string v2, "SS_CF_ALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0x4

    .line 125
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 126
    const-string v2, "SS_CF_ALL_CONDITIONAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0x5

    .line 129
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 130
    const-string v2, "SS_CFUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0x6

    .line 133
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 134
    const-string v2, "SS_CLIP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0x7

    .line 137
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 138
    const-string v2, "SS_CLIR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v1, v1, 0x8

    .line 141
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 142
    const-string v2, "SS_COLP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v1, v1, 0x9

    .line 145
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 146
    const-string v2, "SS_COLR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit8 v1, v1, 0xa

    .line 149
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 150
    const-string v2, "SS_CNAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v1, v1, 0xb

    .line 153
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 154
    const-string v2, "SS_WAIT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v1, v1, 0xc

    .line 157
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 158
    const-string v2, "SS_BAOC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v1, v1, 0xd

    .line 161
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 162
    const-string v2, "SS_BAOIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    or-int/lit8 v1, v1, 0xe

    .line 165
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 166
    const-string v2, "SS_BAOIC_EXC_HOME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/lit8 v1, v1, 0xf

    .line 169
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 170
    const-string v2, "SS_BAIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    or-int/lit8 v1, v1, 0x10

    .line 173
    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    .line 174
    const-string v2, "SS_BAIC_ROAMING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/lit8 v1, v1, 0x11

    .line 177
    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    .line 178
    const-string v2, "SS_ALL_BARRING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    or-int/lit8 v1, v1, 0x12

    .line 181
    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    .line 182
    const-string v2, "SS_OUTGOING_BARRING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    or-int/lit8 v1, v1, 0x13

    .line 185
    :cond_12
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_13

    .line 186
    const-string v2, "SS_INCOMING_BARRING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    or-int/lit8 v1, v1, 0x14

    .line 189
    :cond_13
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_14

    .line 190
    const-string v2, "SS_INCOMING_BARRING_DN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    or-int/lit8 v1, v1, 0x15

    .line 193
    :cond_14
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_15

    .line 194
    const-string v2, "SS_INCOMING_BARRING_ANONYMOUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    or-int/lit8 v1, v1, 0x16

    .line 197
    :cond_15
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    .line 198
    const-string v2, "SS_INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    or-int/lit8 v1, v1, 0x17

    .line 201
    :cond_16
    if-eq p0, v1, :cond_17

    .line 202
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

    .line 204
    :cond_17
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 30
    if-nez p0, :cond_0

    .line 31
    const-string v0, "SS_CFU"

    return-object v0

    .line 33
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 34
    const-string v0, "SS_CF_BUSY"

    return-object v0

    .line 36
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 37
    const-string v0, "SS_CF_NO_REPLY"

    return-object v0

    .line 39
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 40
    const-string v0, "SS_CF_NOT_REACHABLE"

    return-object v0

    .line 42
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 43
    const-string v0, "SS_CF_ALL"

    return-object v0

    .line 45
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 46
    const-string v0, "SS_CF_ALL_CONDITIONAL"

    return-object v0

    .line 48
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 49
    const-string v0, "SS_CFUT"

    return-object v0

    .line 51
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 52
    const-string v0, "SS_CLIP"

    return-object v0

    .line 54
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 55
    const-string v0, "SS_CLIR"

    return-object v0

    .line 57
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 58
    const-string v0, "SS_COLP"

    return-object v0

    .line 60
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 61
    const-string v0, "SS_COLR"

    return-object v0

    .line 63
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 64
    const-string v0, "SS_CNAP"

    return-object v0

    .line 66
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 67
    const-string v0, "SS_WAIT"

    return-object v0

    .line 69
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 70
    const-string v0, "SS_BAOC"

    return-object v0

    .line 72
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 73
    const-string v0, "SS_BAOIC"

    return-object v0

    .line 75
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 76
    const-string v0, "SS_BAOIC_EXC_HOME"

    return-object v0

    .line 78
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 79
    const-string v0, "SS_BAIC"

    return-object v0

    .line 81
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 82
    const-string v0, "SS_BAIC_ROAMING"

    return-object v0

    .line 84
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 85
    const-string v0, "SS_ALL_BARRING"

    return-object v0

    .line 87
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 88
    const-string v0, "SS_OUTGOING_BARRING"

    return-object v0

    .line 90
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 91
    const-string v0, "SS_INCOMING_BARRING"

    return-object v0

    .line 93
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 94
    const-string v0, "SS_INCOMING_BARRING_DN"

    return-object v0

    .line 96
    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    .line 97
    const-string v0, "SS_INCOMING_BARRING_ANONYMOUS"

    return-object v0

    .line 99
    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    .line 100
    const-string v0, "SS_INVALID"

    return-object v0

    .line 102
    :cond_17
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
